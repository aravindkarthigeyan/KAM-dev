# I1-2 independent package audit 1

**I1-2 proof verdict: PASS WITH NOTES.** Both requested nodes are proved with the design-v2 types and clean axioms. The B1 frequency-generic helper is separate and sufficient for its intended regularity use. No frozen anchor is seal-ready from this infrastructure package.

**Full `inp...HEAD` integration verdict: FAIL pending the inherited I-D0 selector fix.** This checkout contains the pre-fix `isoLimit` and `isoSLimit`, with no convergence/characterization theorem. This is the existing I-D0 semantic-admission issue, not a defect in the two I1-2 proofs, which do not import `Iso.Apost.Defs`. Integrating the audited I-D0 removal closes that inherited issue; it does not require changing I1-2 statements.

## Snapshot and scope

Auditor worktree and report: `/root/code/KAM-inp-i12`, `docs/tracks/I/audits/I1-2-audit-1.md`. User's exact destination overrides the brief's generic main-worktree destination. HEAD stayed `27be843a810ddb1b3b7326265f08df522983df43`. Read AGENTS, PLAN, DECISIONS, the package brief and handoff, design v2 and both design audits, track-I statements, relevant frozen I-G1/extended-torsion definitions, blueprint Parts 1–3, and the I-D0 audits for the inherited delta.

`inp` moved during review (first observed `dccdffcad206acd9d4fd0c239263d0a427e2563f`, later `fadba2b0f6ddadee502c9fe4e53dfbdbd73e93db`). Git reports multiple merge bases, using `06c424f049b3d6636d5e671a347d85fc5194c0d9`; the other is `f2f0b0b56f485a2a6ae71b0c16c2d01819ba4c75`. The requested `git diff inp...HEAD` yields six added files, 1158 lines. The handoff's additional `inp-id0...HEAD` comparison was inspected; it includes unrelated merged history, so it is not treated as the package ownership boundary. Direct comparison against current inp-id0 identifies precisely the inherited selector-removal mismatch.

| Surface / anchor | Verdict | Scope |
|---|---|---|
| `bpI:p1:extended-basic` | PASS WITH NOTES | Full design-v2 implementation; disclosed N1 range specialization. |
| B1 helper `extended_regular` | PASS | Arbitrary target frequency, distinct name, no weakened source-result substitution. |
| `bpI:p1:last-row` | PASS WITH NOTES | Correct n and 2n² factors; disclosed N1 specialization. |
| I-G1, `KAM.Iso.isoenergetic_kam` | PASS WITH NOTES | Frozen type read, unchanged, still unproved here. No provider is delivered. |
| Inherited I-D0 definitions | FAIL for two selectors | Pre-fix limit exports persist in this snapshot; other 83 inherited declarations retain their earlier bounded acceptance. |

Provider/frozen-type and exact seal-body probes are **not applicable**: I1-2 defines no `KAM.Provider` export and claims no frozen anchor proof. Instead, three independent probe declarations copied the complete design headers, supplied the actual exports as bodies, and checked definitional equality of their complete elaborated types using `type_of%` and `rfl`. All three passed. No frozen file or provider was imported into the production proof closure.

## Proof and premise review

`extended_basic` at `Extended.lean:274` matches design Appendix A at line 882 verbatim after whitespace removal. It retains holomorphy, primaryness, realness, image inclusion and Gram invertibility; outputs include both Y and extended-matrix regularity, periodicity and realness, real averages, the exact block average, row-sum Y bound and extended-matrix norm bound. The constants σK′, σB′ and CT are arbitrary later bounds, with no wider dependency or strengthened premise.

`extended_regular` at line 255 matches Appendix A line 902. The standing frequency ω₀ belongs only to the supplied K Standing certificate; ω′ is an arbitrary real vector. `FrameAux.differentiableOn_linMat` consumes that certificate, K holomorphy and image inclusion. `differentiableOn_normalMat` consumes K holomorphy and Gram invertibility. `FrameAux.differentiableOn_normalFieldMat` then accepts ω′ without any Diophantine premise; `differentiableOn_torsion` and the entrywise block argument finish. Positive r places real angles in the strip for continuity. No full K `Admissible`, ordinary twist, ball margin or derivative bound is silently required.

For the Y size bound, `sum_norm_apply_le_opNorm` at line 116 proves the l1 norm of the coordinate functional coefficients is bounded by its operator norm: choose complex phases using `exists_mulVec_apply_eq_rowSum`, transport them through the max-norm isometry `sumVec`, and apply the continuous-linear-map norm estimate. This justifies using ‖DH‖≤M without an extra factor 2n. Matrix row sums then give MσK′σB′. The extended matrix has top row sums ≤CT+‖ω‖ and bottom row sum ≤MσK′σB′.

`last_row` at `LastRow.lean:95` matches Appendix A line 915. Its hypotheses omit primaryness and realness, a valid strengthening: only holomorphy, image inclusion and Gram invertibility are used. The pointwise identity follows from `energyRow_eq_mulVec`, `sumVec_invarianceError` and `Identities.fi_NtOL K hG`; the latter needs exactly the supplied Gram determinant unit. The sign is Y=ω−ηL. The n factor is explicit in the row-norm conversion. Averaging uses continuity proved from `extended_regular`; `integral_sub` receives actual integrability proofs for both terms. The final bound is n times the averaged max-vector bound 2nσK′σB′e. Nonnegativity of e, σK′, σB′ is derived at the zero angle, not added as an input. No conclusion-shaped hypothesis or assumed K proof step appears.

Import traversal of the two proof modules reaches 62 project modules, with **zero frozen-theorem or provider modules**. Frozen definition imports are intentional. LastRow imports Extended beyond the proposed design DAG; this is acyclic and all used helpers are public in ExtendedAux. It introduces no quarantine violation.

## Declaration table

Each row is an authored public declaration (generated structure projections/constructors are not separate authored declarations). Names in the first two modules are under `KAM.Iso.Linear`; inherited module namespaces are identified by the module headers. PASS for a literal inherited formula does not assert its future analytic specification.

| Node / module | Lean declaration | Verdict | Reason / classification |
|---|---|---|---|
| `Linear/Extended` | `bordMat_inl_inl` | PASS | Upper-left block, all inputs. |
| `Linear/Extended` | `bordMat_inl_inr` | PASS | Upper-right frequency column, all inputs. |
| `Linear/Extended` | `bordMat_inr_inl` | PASS | Lower-left energy row, all inputs. |
| `Linear/Extended` | `bordMat_inr_inr` | PASS | Zero corner, all inputs. |
| `Linear/Extended` | `extendedTorsion_eq_fun` | PASS | Pointwise frozen-definition bridge, no analytic premise. |
| `Linear/Extended` | `differentiableOn_bordMat` | PASS | Entrywise holomorphy; supplied component premises only. |
| `Linear/Extended` | `continuous_real_restrict` | PASS | Real inclusion lands in the positive strip. |
| `Linear/Extended` | `apply_eq_sum_sumVec` | PASS | Linear functional basis expansion; no analytic premise. |
| `Linear/Extended` | `energyRow_apply` | PASS | Literal derivative/normal-column expansion. |
| `Linear/Extended` | `energyRow_eq_mulVec` | PASS | Canonical Hamiltonian gradient identity, valid for total derivative definitions. |
| `Linear/Extended` | `sum_norm_apply_le_opNorm` | PASS | Complex phases attain the row sum; max norm on the phase product. |
| `Linear/Extended` | `differentiableOn_energyRow` | PASS | K normal-frame holomorphy plus holomorphic Hamiltonian composition. |
| `Linear/Extended` | `isPeriodicOn_energyRow` | PASS | Primaryness, periodic normal frame and translated Hamiltonian field. |
| `Linear/Extended` | `isRealVec_energyRow` | PASS | Real normal frame and Hamiltonian at real K. |
| `Linear/Extended` | `extendedTorsionAverage_eq_bordMat` | PASS | Continuity supplies coordinate integrability; unit cube has volume one. |
| `Linear/Extended` | `norm_normalMat_le_of_le` | PASS | Operator-norm product bound; no hidden positivity premise. |
| `Linear/Extended` | `sum_norm_energyRow_le` | PASS | Uses DH operator bound as an l1 gradient bound; no dimension factor lost. |
| `Linear/Extended` | `extended_regular` | PASS | Distinct B1 helper; target frequency arbitrary, no target Diophantine premise. |
| `Linear/Extended` | `extended_basic` | PASS WITH NOTES | Full design signature; row-sum size bound and all regularity/average conclusions. |
| `Linear/LastRow` | `energyRow_eq_sub_etaL` | PASS | fi_NtOL uses exactly Gram invertibility; sign agrees with blueprint. |
| `Linear/LastRow` | `sum_norm_energyRow_sub_le` | PASS | Explicit factor n converts max-vector to row norm. |
| `Linear/LastRow` | `norm_etaL_le_of_le` | PASS | Transpose cost 2n, normal-frame product bound and error bound. |
| `Linear/LastRow` | `last_row` | PASS WITH NOTES | Full design signature; exact row identity, invariant case, average, 2n^2 bound. |
| `Linear/Defs` | `Setting` | PASS WITH NOTES | SOURCE/STANDING: K Standing plus DH bound; disclosed N1 specialization. |
| `Linear/Defs` | `energyRow` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `bordMat` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `extendedTorsion_eq_bordMat` | PASS | Inherited literal bridge; checked axioms and replay. |
| `Linear/Defs` | `BordData` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Linear/Defs` | `bordAvg` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `bordSol` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `bordXi0` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `bordXiOmega` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `bordXiN` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `bordGL` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `bordXiL` | PASS | Explicit bordered-solution formula; inverse/cohomological properties require source guards. |
| `Linear/Defs` | `isoLinError` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `isoResidual` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `bordOp` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Linear/Defs` | `AdmissibleNoTwist` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Apost/Defs` | `IsoStanding` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Apost/Defs` | `rayMargin` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `IsoAdmissible` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Apost/Defs` | `hatCS` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCxiN` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCg` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCxi` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCDK` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCDelta` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `CP` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCpartial` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatClin` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCE1` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCE2` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatCE` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `CY` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `CDTbord` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatcStep` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatcSum` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `hatcStar` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `dStep` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoBordData` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoXi` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoXiOmega` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoCorrection` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoNewS` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoNewtonMap` | PASS | Explicit on-strip correction, K elsewhere, prescribed by blueprint. |
| `Apost/Defs` | `isoQuadX` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoQuadH` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoEpsSeq` | PASS | Explicit finite recurrence/formula; no limit selected. |
| `Apost/Defs` | `isoDSeq` | PASS | Explicit finite recurrence/formula; no limit selected. |
| `Apost/Defs` | `isoSeq` | PASS | Explicit finite recurrence/formula; no limit selected. |
| `Apost/Defs` | `IterHyp` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Apost/Defs` | `isoLimit` | FAIL (inherited) | Inherited uncharacterized limUnder selector; excluded from I1-2 import closure. |
| `Apost/Defs` | `isoSLimit` | FAIL (inherited) | Inherited uncharacterized limUnder selector; excluded from I1-2 import closure. |
| `Apost/Defs` | `isoC1` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Apost/Defs` | `isoC2` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Inputs` | `IG1Body` | PASS | Transparent upstream theorem contract; does not assert it. |
| `Charts/Inputs` | `IG1Statement` | PASS | Transparent upstream theorem contract; does not assert it. |
| `Charts/Inputs` | `G3Statement` | PASS | Transparent upstream theorem contract; does not assert it. |
| `Charts/Defs` | `fractD_eq_domainD` | PASS | Inherited literal bridge; checked axioms and replay. |
| `Charts/Defs` | `totalH_eq_hbold` | PASS | Inherited literal bridge; checked axioms and replay. |
| `Charts/Defs` | `rhoIso` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `dB` | PASS | Literal infimum/supremum formula; extrema specifications need source compactness guards. |
| `Charts/Defs` | `eta1` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `sSet` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `mhConst` | PASS | Literal infimum/supremum formula; extrema specifications need source compactness guards. |
| `Charts/Defs` | `MgConst` | PASS | Literal infimum/supremum formula; extrema specifications need source compactness guards. |
| `Charts/Defs` | `ShConst` | PASS | Literal infimum/supremum formula; extrema specifications need source compactness guards. |
| `Charts/Defs` | `nuConst` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `sigmaOmegaConst` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `sigmaKConst` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `sigmaTConst` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `epsT` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `perp` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `det2` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `aCoord` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `bCoord` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `slope` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `hessR` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `chartDom` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `chartM` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `chartPhi` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `jac2` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `IsPatch` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |
| `Charts/Defs` | `IsPatch.toEnergyPatch` | PASS | Explicit record assembly from supplied patch and slope windows. |
| `Charts/Defs` | `IsRay` | PASS | Explicit Diophantine ray predicate; does not choose a ray. |
| `Charts/Defs` | `flatRemainder` | PASS | Literal transparent formula; no new characterized witness selection. |
| `Charts/Defs` | `ToriSide` | PASS | Explicit source/typing certificate; ToriSide records outputs, not assumed existence. |

## Definition semantics and inherited issue

Neither Extended nor LastRow adds any `def`, `abbrev`, or structure. Their objects are the literal frozen energy row and extended torsion, and I-D0's `bordMat`. The four inherited definition modules contribute 74 defs and eight structures; the three remaining inherited declarations are bridge theorems. All explicit matrix, derivative, arithmetic, coordinate, recurrence and certificate bodies were read. Inverses, derivatives, integrals, division and extrema are total operations; their source-use guards matter. In I1-2, the derivative and Gram-inverse guards are present, and continuity/integrability is proved before average algebra. No theorem here relies on junk inverse, derivative or integral values.

The two exceptions to inherited semantic admission are `KAM/Iso/Apost/Defs.lean:204` (`isoLimit`) and line 210 (`isoSLimit`): the operative bodies contain `limUnder atTop ...`. Blueprint `p2-iso-iteration.tex:295–302` introduces the limits **in the setting of the iteration proposition**, and asserts “the limits exist”. This snapshot has neither a convergence theorem nor a characterization theorem. Local Mathlib `Topology/Defs/Filter.lean:263–268` defines the operation via epsilon selection; `Topology/Basic.lean:249–253` explicitly gives its fallback when no limit exists. Thus the unrestricted exports are not yet certified mathematical limits. This repeats the independently checked missing attachment in I-D0 audit 1; no counterexample satisfying iteration hypotheses is claimed.

Current inp-id0 removed these exports (audit 2, revised snapshot `35096654b6322ee1a9f691c2bd94e951dd01a5c8`). Direct file comparison confirms Linear/Defs and both Charts files are unchanged, while Apost/Defs in I1-2 still has the pre-fix hash `2e533d62fe1239b2b77ca202d9472206099e05a14e769992a027460953bb6008`. Incorporate that already-audited removal before treating the whole branch as admitted. No source repair was made in this audit. This does not block using the two clean proof modules independently.

## Checks and exact receipts

No heartbeat, recursion-depth or synthesis override, clean, update, cache fetch, dependency-source edit or state-changing git command was used. The targeted incremental build used the prescribed gate and one thread:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i12 KAM.Iso.Linear.LastRow
```

Exit 0:

```text
[inp-gate] slot 1 acquired 02:01:36 for KAM.Iso.Linear.LastRow
Build completed successfully (3191 jobs).
```

The axiom probe imported LastRow, Charts.Defs and Apost.Defs, with one `#print axioms` for every public theorem in the six-file diff:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I12Audit.lean > .lake/abi-scratch/I12Audit.log 2>&1
```

Exit 0, no warnings or errors. Exact output:

```text
'KAM.Iso.Linear.ExtendedAux.bordMat_inl_inl' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.bordMat_inl_inr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.bordMat_inr_inl' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.bordMat_inr_inr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.extendedTorsion_eq_fun' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.differentiableOn_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.continuous_real_restrict' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.apply_eq_sum_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.energyRow_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.energyRow_eq_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.sum_norm_apply_le_opNorm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.differentiableOn_energyRow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.isPeriodicOn_energyRow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.isRealVec_energyRow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.extendedTorsionAverage_eq_bordMat' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Linear.ExtendedAux.norm_normalMat_le_of_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.ExtendedAux.sum_norm_energyRow_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extended_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extended_basic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.LastRowAux.energyRow_eq_sub_etaL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.LastRowAux.sum_norm_energyRow_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.LastRowAux.norm_etaL_le_of_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.last_row' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The independent signature probe copied each full theorem header from design Appendix A, applied the actual export to its explicit arguments in order, and checked complete type equality:

```lean
example : (type_of% @I12Audit.extended_basic) = (type_of% @KAM.Iso.Linear.extended_basic) := rfl
example : (type_of% @I12Audit.extended_regular) = (type_of% @KAM.Iso.Linear.extended_regular) := rfl
example : (type_of% @I12Audit.last_row) = (type_of% @KAM.Iso.Linear.last_row) := rfl
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I12Signatures.lean > .lake/abi-scratch/I12Signatures.log 2>&1
```

Exit 0, empty output. Independent whitespace-normalized header comparison: all three MATCH.

Kernel replay was one invocation, covering both proof modules and all four inherited definition modules:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.LastRow KAM.Iso.Linear.Extended KAM.Iso.Linear.Defs KAM.Iso.Apost.Defs KAM.Iso.Charts.Inputs KAM.Iso.Charts.Defs > .lake/abi-scratch/I12Kernel.log 2>&1
```

Exit 0. Exact output:

```text
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Linear.Defs
replaying KAM.Iso.Linear.Extended
replaying KAM.Iso.Linear.LastRow
```


```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh > .lake/abi-scratch/I12Lint.log 2>&1
```

Exit 1 solely for the brief's explicitly allowed stale generated-root condition. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (334 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Execution deviation: an initial `sh scripts/lint_sources.sh` invocation was started without the one-thread environment and nice wrapper. It returned the same lint result. On noticing this, I waited for completion and ran all subsequent Lean operations serially with `LEAN_NUM_THREADS=1` and `nice -n 5`, including the complete lint rerun above. The targeted build used the gate's own nice wrapper. The initial wrapper omission is not concealed by the successful rerun.

`git diff --check inp...HEAD`: exit 0, no whitespace diagnostics. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty diff. Both emit only Git's multiple-merge-base warning noted above. No forbidden-code token/resource override was found in either proof module. All six files have proper module wrappers and exposed definitions where needed; line counts are 345, 185, 141, 225, 94 and 168 respectively, all below 1500. The final report passed a whitespace check against `/dev/null` (diff exit 1 denotes a new file; no whitespace diagnostics).


## Blueprint/source defects and deviations

- **Existing B1 remains a blueprint premise mismatch**, not a failed Lean proof: `blueprint-I/parts/p2-iso-iteration.tex:206,216` says no Diophantine property of the new frequency is used, then applies extended-basic at that frequency. The latter's standing assumptions include Diophantine membership. `Extended.lean:255` supplies the required separate `extended_regular` helper. Repair the blueprint citation to this frequency-generic regularity assertion (or explicitly state it there); do not relabel the full regularity/periodicity/realness/size theorem as proved without its premises.
- **Existing N1/B3 specialization:** `p1-iso-linear.tex:31–38` says “τ≥0 … only τ≥0 is used here”; Linear.Setting inherits τ≥n−1 and positive σ bounds from K Params. The design v2 node table at line 173 and module documentation disclose this narrower implementation. I1-2 is sufficient for frozen I-G1's range, but does not formalize the whole Part-1 τ≥0 source range. This is an explicit accepted design departure, not a newly hidden premise.
- **Corrected last-row factor is retained:** `p1-iso-linear.tex:232–244` and the proof at lines 258–260 require n in the row norm; Lean agrees. The older factor-free formulation is not reintroduced.
- **Inherited Part-3 wording:** `p3-iso-local-charts.tex:80–82` puts `e:=F₁ε` before “not on … ε”. This does depend on ε. The code defines no ε-independent e constant, so the existing wording defect does not infect I1-2.
- **Import-plan deviation:** LastRow imports Extended to reuse ExtendedAux; no cycle or forbidden import results.

No new pinned-source erratum was established; this audit did not independently re-audit the HL19 PDF. Sign checks above are against frozen definitions and the supplied blueprint. No ledger edit is authorized or made.

## Handoff

Only the requested report was written as a repository deliverable. The pre-existing untracked handoff was preserved. Scratch probes/logs were created inside this worktree's `.lake/abi-scratch/` and removed after receipt extraction. No frozen, manifest, generated-root or README change was made. I1-2's proofs pass with the documented N1/B1 notes; I-G1 remains unproved, and full branch admission must carry the I-D0 selector removal.
