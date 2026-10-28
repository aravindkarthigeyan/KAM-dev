# I Parts 5/8 Lean design: independent round-2 audit

**Overall verdict: PASS WITH FIXES.** F01–F03 are repaired at the mathematical signature level. F04 is resolved as an explicit dependency gate, not as a proved upstream result. The F05 multivariable regularity route is applicable by its actual source type, and F06's Kepler contracts now match the pinned upstream design up to definitional carrier aliases and notation. No new false signature or conclusion-shaped root premise was found.

Two package dependencies and some repair summaries still need correction. **Independent full-file elaboration was not confirmed:** the one requested signature invocation ended with exit 143 and no diagnostics. The reduced applicability/type probe was also terminated before producing diagnostics. The designer's successful elaboration receipt is therefore not independently reproduced here. Dispatch should retain that verification gate; this verdict is design-level acceptance with the listed fixes, not proof, seal or execution approval.

## Snapshot and scope

Audit date: 2026-10-28. Read-only mathematical review in `/root/code/KAM-inp-design-i58`, HEAD **`7de542855797e57a6512e472f704f338b4a4a7c9`**. The only report written is `/root/code/KAM-inp/docs/tracks/I/design/PART58-design-audit-2.md`. Temporary module probes were confined to `.lake/abi-scratch/` and removed. No state-changing git command, frozen edit, library build or resource-budget override was used.

| Material | Size / identity |
|---|---|
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | 1,845 lines; SHA-256 `9bffa96b3d02ee0cca108718780aabe190b017e99ec24973a1659b8370b6aa5c` |
| `.drafts/design/IPart58Signatures.lean` | 1,238 lines; SHA-256 `7aff03fdfc2ebf640555f871b74f147c4547cb47f79df5b689676359a3b372dd` |
| Frozen `AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |
| Frozen `RestrictedNearCircular.lean` | `bafd9ad666bf857936ebfa5388861f0a2c22ffab011e122afef3f3b0e4a83373` |
| Kepler upstream pin | `b58352f:docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`, accessed directly from git objects |

Read the full audit brief, AGENTS.md, plans/decisions, the round-1 audit including its signature and premise ledgers, revision-2 Section 13, the complete Appendix delta, changed signatures and their direct consumers. Compared the relevant raw Parts 3/5/7/8 and I-p5/I-p8 graph contracts; read the actual frozen solution, Hamiltonian and near-circular definitions and both frozen theorem types. Checked the ODE invariant-set/union interfaces, strip regularity bridge and scalar-restriction API in their source files. Also inspected the proved plane-length helper declarations on `inp`.

Appendix A is **byte-identical** to the scratch signature file. Extracting the prior Appendix and comparing it with the revision identifies all changes, including the expanded upstream stubs and added adapters. The provider section, including both `rfl` examples, is **byte-identical to round 1**. The frozen files likewise retain their round-1 hashes. The ledger below carries forward unchanged signature checks only after this delta comparison; it is not presented as a new proof of every unchanged declaration.

## Closure of F01–F06

| Finding | Current location | Closure | Independent verification |
|---|---|---|---|
| F01 | `realHam_fderiv_bound`, scratch L430–435 | **CLOSED** | The exact requested `hf : PerturbData B s0 r0 f epsilon` is present. Its holo field supplies genuine complex differentiability on the open original domain. The real point is in the smaller derivative-bound domain by positive strip/action widths. Restricting the derivative along `v -> (0,toC v)` and taking real parts has operator norm at most one. Thus hD bounds the genuine real derivative; the conjugation counterexample is excluded. `energy_coordinate` already has hf, and SepSetting carries it as perturb. |
| F02 | `min_distance`, L892–896; `collision_exclusion_compact`, L868–877; `radius_nonneg`, L846 | **CLOSED** | Both abstract compact statements now carry explicit nonnegativity. Nonnegative and nonzero length at each separated pair gives strictly positive length. Its continuous real-valued image of a nonempty compact set has a positive attained minimum; finitely many pairs give a positive common minimum. Empty S or no distinct pairs is vacuous. `radius_nonneg` is the correct direct square-root proof. The negative constant length no longer meets the premises. See the explanatory correction below: the old collision-exclusion compact theorem was already protected by evenness/subadditivity. |
| F03 | `separation_confined_of_invariant`, L679; source wrapper L691; `confinement_prop_of_invariant`, L714; source wrapper L726 | **CLOSED, with package edge fix** | Old signatures retain the extra invariant-set input only under distinct conditional helper names. New source wrappers take Tp,Tm,hgp,hgm, precisely the earlier proposed repair. They have enough data to derive graph action membership, invoke torus_invariant twice, rewrite the ranges, and take the union. No hinv field was smuggled into SepSetting. The Main proof plan now supplies the named torus outputs and graph equalities to the source wrapper. |
| F04 | Design §§2,8.1,10.1; `part3_tori` L781; Main L796/L816; providers L1165/L1198 | **CLOSED AS A GATE ONLY** | `confinement_main_of_tori` is explicitly conditional. Source-facing confinement_main has only HeadData and must call the Part-3 producer internally. The provider is held for I-G1/Part-3 completion; the R3BP provider is held for I-HEAD. Neither a producer name nor its sorry body is counted as discharge. This audit does not release either gate. |
| F05 | Design P5-2 and §12.1 | **CLOSED at API/source level** | `KAM.holomorphic_regularity_of_finiteDimensional` accepts arbitrary finite-dimensional complex domain E, including the phase product, and returns ContDiffOn in its third conjunct. `ContDiffOn.restrict_scalars` exists at Mathlib `ContDiff/Operations.lean:1050`. `KAM.Head.isOpen_actionNbhd` has the claimed arbitrary-B signature. The reduced kernel probe was interrupted, so applicability is source-checked, not independently elaboration-certified. A stale node-table note remains below. |
| F06 | Design §10.2; Section U L64–215; adapters L1109/L1114/L1118 | **CLOSED at interface level** | Compared against the actual pinned Kepler Appendix, not the designer's summary. `exact_ham` has all three conjuncts; `period_one` includes strip transport, lower real-action bound and the restrictedHamiltonian equality; `transfer` includes both the actual frozen solution and its radius interval. The eccentricity binder order matches. The old projected stubs and WANTED extraction names are gone; named Part-8 adapters now perform the repackaging. Bodies explicitly marked omitted remain upstream obligations. |

### F03: the derivation really is available

For either sign, hgp/hgm sends `realRestriction K theta` to its graph. Its action component is therefore `Y ((realRestriction K theta).1)`. GraphData gives

`norm(Y phi-I) <= C_K*epsilon`, `I in p.K`.

Smallness gives `C_K*epsilon<r`. Hence Y phi lies in `cthickening r p.K`, then in p.W by PatchConst.thick_subset, and finally in B by EnergyPatch.W_subset_B. This supplies exactly the hmem premise of torus_invariant; no new action-domain assumption is necessary. TorusOutput supplies the analytic map, realness and invariance equation needed by that lemma. Rewrite its range conclusion using hgp/hgm, then apply `KAM.ODE.isInvariantSet_union`.

The interval, initial-point, energy and maximal-solution premises are unchanged source/standing inputs. The source-facing signatures therefore prove the same separation and all-time confinement conclusions without assuming the intermediate invariant-set result. The wrapper can use its `_of_invariant` helper or repeat the barrier invocation; the interface does not force either implementation.

### F06: what “literal” means here

The upstream contract comparison covers all 33 Kepler-design declarations copied into U. The textual differences are expansion of frozen `Phase n`, qualification of NearCircular/realHamiltonian/actionNbhd, `Real.pi` versus pi notation, explicit restoration of section-implicit orbit parameters, and alpha-renaming of shiftCsh's epsilon binder. None changes an elaborated carrier, premise, binder order or conclusion. The remaining four plane helpers agree with their existing `inp` declarations; the three N3-8 stubs are unchanged.

In particular kE now uses the upstream frozen planeSq/planeLength formula; those are definitionally the same quantities as radiusSq/radius here. The new delaunay body is the actual orbitMapR specialization. For hw in deDom, `0<G<L` gives L>0 and `0<eccOf L G<1`; orbitMapR_radius_bounds and orbitMapR_energy then yield the two Part-8 adapter targets, using the frozen radius/planeLength equality. `exactMu2_safe_pos` follows from the explicit shiftEps minimum and safe_radii, not from an invented upstream theorem. No missing inverse-domain, branch or unit conversion is hidden in these adapters.

## Remaining findings

| ID | Severity | Location / evidence | Required fix |
|---|---|---|---|
| I58R2-01 | minor, package ordering | Design §7 DAG and §8.1 P5-7 omit Invariance/P5-4, although the newly added source-facing separation_confined must invoke torus_invariant. No currently listed Separation dependency imports Invariance transitively. | Add `Confinement.Invariance` to Separation's imports and P5-4 to P5-7's After list. Explicitly list both confinement helpers under P5-8. All dependencies still precede wave 4, so the schedule remains acyclic and need not gain a wave. |
| I58R2-02 | minor, package/import availability | §7 and §8.2 still call P8-1 “frozen defs only” and independent of everything, but its new term proofs reference `KAM.Kepler.planeLength_*`. The module `KAM/Kepler/Plane.lean` is present on inp, but absent from the pinned design checkout's source tree. | Add `KAM.Kepler.Plane` as an explicit Collision import/dependency, and describe P8-1 as dispatchable once that already proved module is present in its checkout/build overlay. Also make RealHam's selected `Strip.Bridges` / `Head.DerivativeBounds` API imports explicit when using the repaired F05 plan. No frozen/provider import is needed for these APIs. |
| I58R2-03 | minor, explanatory consistency | Section 13 says collision_exclusion_compact had the “same defect” as min_distance. Its old evenness/subadditivity assumptions already imply nonnegativity, as audit 1 explained. The §3.1 node-table note still recommends the inapplicable scalar-only `DifferentiableOn.contDiffOn`; the scratch docstring still describes U as restricted clauses rather than full upstream contracts. | Describe hnonneg on collision_exclusion_compact as an explicit redundant length property, retaining it if desired. Replace the stale RealHam node-table API with `holomorphic_regularity_of_finiteDimensional`, and update U's summary to full upstream signatures plus locally owned adapters. No Lean signature repair is required. |

**Verification gate, not a mathematical finding:** reproduce one completed successful elaboration of the unchanged signature hash before dispatch. The independent run here was terminated, so it does not support an exit-0 or “102 warnings only” receipt. The designer's reported run remains evidence supplied by the designer.

There is no signature-level FAIL in this round, so no corrected false-signature block is required. The current corrected F01/F02/F03 signatures are the proposed round-1 replacements; the changes requested above concern dependencies and explanatory text.

## Rule 6, definitions, consumers and frozen objects

**Rule 6 verdict: PASS as a gated architecture.** HeadData/BaseData/PerturbData pack literal source premises. TorusOutput and GraphData contain mathematical upstream output, not merely typing data; their use is legitimate because `bpI:p5:sec-graph` fixes Part-3 output and `sec-sep` retains that notation. SepSetting contains those graph/chart/size facts, not invariance or confinement. The new source wrappers derive the Part-5 invariance result instead of making it a source premise.

At the root, ChartCover and ToriExistence must be produced by part3_tori in the proof of confinement_main. They are allowed as inputs only to the distinctly named conditional confinement_main_of_tori. The producer retains the order `HeadData -> eta1,F1,patches,epsilon1,C_K -> f,epsilon,I0,E`. No per-perturbation constant is promoted to a uniform one.

The R3BP core remains a distinct conditional transport helper: it quantifies an arbitrary global Hamiltonian solution and transports it. The provider obtains that solution from the actual frozen I-HEAD theorem after its seal. The final restricted theorem does not assume a torus, confinement, collision exclusion or a global solution. Both final provider types retain zero EXCESS/RULED/STANDING premises, with the source/typing accounting of round 1 unchanged. The physical competitor is arbitrary and collision-free through the actual frozen predicate; it need not stay in a Delaunay chart.

**Frozen-object verdict: PASS at source/type level.** The unchanged provider signatures match the actual frozen types binder for binder, including strict size inequalities, zero mu, existential constant order, all-time solution predicates and every local uniqueness guard. Both rfl examples are unchanged, and their meaning is full type convertibility followed by proof irrelevance, not an independence or axiom-cleanliness certificate. No frozen statement defect was found. These anchors are still DRAFT_SORRY in the reviewed checkout.

**Definition verdict: PASS for the delta.** The newly explicit upstream definitions use the same frozen phase/length objects. Omitted upstream bodies remain explicitly omitted, not approved implementations. The conditional total divisions and square roots in the existing safe/cone interfaces remain guarded. Nonnegativity is a source norm property, not a conclusion-shaped premise. No global norm/function/matrix instance was added.

**Consumer verdict: PASS at contract level, subject to upstream gates.** energy_coordinate and SepSetting can supply the restored hf; the actual frozen radius and track-P planeLength can supply hnonneg. Main can supply both TorusOutput values and graph equalities from the named producer and torus_graph. Part 8 consumes the full period_one/transfer conjunctions by projection, without claiming a smaller upstream type. The explicit P6 cross-track mention remains nonessential to its current proof, but the shared distance contracts are now sound.

**Package verdict: PASS WITH FIXES.** The added edges above preserve the DAG. The draft signature module itself is below 1,500 lines, and planned production modules remain below the cap (largest estimate 800, with an explicit split). No production module may import an unsealed anchor/provider merely because the scratch file did. The exact Part-3 producer, I-G1 seal, Kepler implementations and N3-8 reduction remain real prerequisites, not discharged by this audit.

## Execution receipts and limits

1. Invoked the requested signature command **once**: `LEAN_NUM_THREADS=2 nice -n 5 lake env lean .drafts/design/IPart58Signatures.lean`. Result: **exit 143**, captured output **0 lines**. This is a terminated invocation, not a Lean error or a default-heartbeat failure, and not successful independent elaboration. No cause is inferred from the exit status alone.
2. A temporary sorry-free module extracted the complete provider proposition types into explicit aliases, supplied rfl conversion probes against the frozen anchors, and attempted the product-domain holomorphic regularity application and radius/planeLength rfl. Its first run failed on the unavailable built object for `KAM.Head.DerivativeBounds`; no library rebuild was attempted. Removing that unnecessary import yielded a reduced probe which also ended **143 with 0 diagnostics**. Thus neither probe is claimed as a successful kernel check. Source inspection establishes that the API name and arbitrary-product domain are correct; the separate kernel verification remains outstanding. The temporary probe was removed.
3. `LEAN_NUM_THREADS=2 nice -n 5 scripts/lint_sources.sh` completed **exit 0**: `check_lean_modules: PASS (243 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`. This validates the repository checks, not the design stub's elaboration or proof bodies.
4. Appendix/scratch equality, provider-section equality to round 1, frozen-file hashes, absence of resource settings and the declaration inventory were checked mechanically. No new `#print axioms` result is claimed: design bodies remain sorry-bearing, and the provider rfl examples never establish proof closure.

No suspected new pinned-source erratum or frozen defect was established. This audit introduces no mathematical deviation.

For subsequent Lean briefs, the hard rules remain verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

## Round-2 signature ledger

PASS below means the type/body is acceptable as a source-facing contract, explicitly conditional helper, or identified upstream interface. It does **not** mean proved or independently elaborated in this run. Unchanged rows retain the first audit's statement mapping after a complete Appendix delta comparison; changed/new rows were checked as described above. Labels omit the `bpI:` prefix unless another track is named. All 176 named declarations have one row: 136 owned declarations and 40 Section-U declarations.

| Scratch line | Lean name | Blueprint label | Verdict | Reason |
|---|---|---|---|---|
| 69 | `KAM.Kepler.planeLength_add_le` | `p8:x-norm / p7:orbit-identities (shared helper)` | PASS | Existing inp Plane helper; frozen radius alias unchanged. |
| 71 | `KAM.Kepler.planeLength_neg` | `p8:x-norm / p7:orbit-identities (shared helper)` | PASS | Existing inp Plane helper; frozen radius alias unchanged. |
| 72 | `KAM.Kepler.planeLength_eq_zero_iff` | `p8:x-norm / p7:orbit-identities (shared helper)` | PASS | Existing inp Plane helper; frozen radius alias unchanged. |
| 73 | `KAM.Kepler.radius_eq_planeLength` | `p8:x-norm / p7:orbit-identities (shared helper)` | PASS | Existing inp Plane helper; frozen radius alias unchanged. |
| 79 | `KAM.Kepler.eccOf` | `p7:elements` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 82 | `KAM.Kepler.orbitMapR` | `p7:orbit-maps-e` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 85 | `KAM.Kepler.deDom` | `p7:chart` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 87 | `KAM.Kepler.delaunay` | `p7:chart` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 90 | `KAM.Kepler.kE` | `p7:ham-eq` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 92 | `KAM.Kepler.eccOf_mem_Ioo` | `p7:elements` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 95 | `KAM.Kepler.orbitMapR_radius_bounds` | `p7:orbit-identities` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 99 | `KAM.Kepler.orbitMapR_energy` | `p7:orbit-identities` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 102 | `KAM.Kepler.nearCircular_eq_image` | `p7:near-circular` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 107 | `KAM.Kepler.isOpen_nearCircular` | `p7:near-circular` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 111 | `KAM.Kepler.phaseToC` | `p7:complex-domain` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 120 | `KAM.Iso.SafeAction` | `p7:sec-complex` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 125 | `KAM.Iso.kLMin` | `p7:sec-complex` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 126 | `KAM.Iso.kRmin` | `p7:sec-complex` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 127 | `KAM.Iso.kRhoMax` | `p7:sec-complex` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 129 | `KAM.Iso.keplerRotH` | `p7:h0` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 131 | `KAM.Iso.keplerRotH_real` | `p7:h0` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 134 | `KAM.Iso.periodOneMap` | `p7:scaling` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 136 | `KAM.Iso.periodOneMapC` | `p7:scaling` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 140 | `KAM.Iso.UDelta` | `p7:complex-domain` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 143 | `KAM.Iso.shiftEps` | `p7:shift` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 144 | `KAM.Iso.shiftCsh` | `p7:shift` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 145 | `KAM.Iso.exactEps` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 146 | `KAM.Iso.exactMu2` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 147 | `KAM.Iso.exactCF` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 148 | `KAM.Iso.complexDelta` | `p7:complex-domain` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 149 | `KAM.Iso.ExactHamData` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 150 | `KAM.Iso.exactDelta` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 151 | `KAM.Iso.tildeF` | `p7:period-one` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 153 | `KAM.Iso.exact_ham` | `p7:exact-ham` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 156 | `KAM.Iso.period_one` | `p7:period-one` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 178 | `KAM.Iso.nondeg_exact` | `p7:nondeg` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 184 | `KAM.Iso.transfer` | `p7:transfer` | PASS | Kepler pin b58352f contract match; explicit aliases/omitted bodies as documented. |
| 201 | `KAM.ODE.restrictedDomain` | `N:p3:restricted-reduction (upstream)` | PASS | Unchanged N3-8 stub; still gated. |
| 204 | `KAM.ODE.restrictedField` | `N:p3:restricted-reduction (upstream)` | PASS | Unchanged N3-8 stub; still gated. |
| 210 | `KAM.ODE.restricted_reduction` | `N:p3:restricted-reduction (upstream)` | PASS | Unchanged N3-8 stub; still gated. |
| 225 | `KAM.Iso.Confinement.toC` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 230 | `KAM.Iso.Confinement.realAct` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 233 | `KAM.Iso.Confinement.realPart` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 236 | `KAM.Iso.Confinement.totalH` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 240 | `KAM.Iso.Confinement.rhoInf` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 243 | `KAM.Iso.Confinement.fractD` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 247 | `KAM.Iso.Confinement.BaseData` | `p3:setting; p0:head` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 255 | `KAM.Iso.Confinement.HeadData` | `p3:setting; p0:head` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 268 | `KAM.Iso.Confinement.PerturbData` | `p3:setting; p0:head` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 280 | `KAM.Iso.Confinement.EnergyPatch` | `p3:chart / patch / patch-rays` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 314 | `KAM.Iso.Confinement.EnergyPatch.Q` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 318 | `KAM.Iso.Confinement.EnergyPatch.O` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 322 | `KAM.Iso.Confinement.EnergyPatch.Omega` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 326 | `KAM.Iso.Confinement.EnergyPatch.K` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 331 | `KAM.Iso.Confinement.PatchConst` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 345 | `KAM.Iso.Confinement.Smallness` | `p5:eps0` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 355 | `KAM.Iso.Confinement.EnergyPatch.isCompact_K` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 357 | `KAM.Iso.Confinement.EnergyPatch.K_eq_image` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 359 | `KAM.Iso.Confinement.EnergyPatch.isOpen_Omega` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 361 | `KAM.Iso.Confinement.EnergyPatch.Omega_subset_K` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 364 | `KAM.Iso.Confinement.patchConst_exists` | `p5:sec-patch / patch-const` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 368 | `KAM.Iso.Confinement.exists_eps0` | `p5:eps0` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 375 | `KAM.Iso.Confinement.P2` | `p3:setting / p3:constants; p5:sec-real` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 384 | `KAM.Iso.Confinement.isOpen_realAct` | `p5:real-ham / p3:constants` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 386 | `KAM.Iso.Confinement.subset_realAct` | `p5:real-ham / p3:constants` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 389 | `KAM.Iso.Confinement.toC_pair_mem_fractD` | `p5:real-ham / p3:constants` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 393 | `KAM.Iso.Confinement.realHam_eq` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 398 | `KAM.Iso.Confinement.realHam_contDiffOn` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 402 | `KAM.Iso.Confinement.realHam_periodic` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 407 | `KAM.Iso.Confinement.realHam_field_eq` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 413 | `KAM.Iso.Confinement.realHam_field_contDiffOn` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 417 | `KAM.Iso.Confinement.realHam_field_periodic` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 423 | `KAM.Iso.Confinement.realHam_solution_iff` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 431 | `KAM.Iso.Confinement.realHam_fderiv_bound` | `p5:real-ham(d)` | PASS | F01: restored hf; genuine real derivative bounded. |
| 438 | `KAM.Iso.Confinement.realHam_sub_le` | `p5:real-ham` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 442 | `KAM.Iso.Confinement.realHam_energy_const` | `p5:sp-barrier / hd-uniq; N:p3:ham-energy / gen-uniqueness` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 449 | `KAM.Iso.Confinement.realHam_unique` | `p5:sp-barrier / hd-uniq; N:p3:ham-energy / gen-uniqueness` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 462 | `KAM.Iso.Confinement.TorusOutput` | `p3:T1–T4; p5:sec-graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 482 | `KAM.Iso.Confinement.torus_phase_sub_lipschitz` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 487 | `KAM.Iso.Confinement.torus_phase_bijective` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 494 | `KAM.Iso.Confinement.torus_phase_inv` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 502 | `KAM.Iso.Confinement.torus_graph` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 510 | `KAM.Iso.Confinement.torus_graph_mem` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 516 | `KAM.Iso.Confinement.torus_graph_energy_close` | `p5:graph` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 532 | `KAM.Iso.Confinement.torus_flow` | `p5:invariance` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 540 | `KAM.Iso.Confinement.torus_invariant` | `p5:invariance` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 557 | `KAM.Iso.Confinement.energy_coordinate` | `p5:energy-coordinate` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 571 | `KAM.Iso.Confinement.GraphData` | `p5:sec-graph / sec-sep` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 585 | `KAM.Iso.Confinement.slope_close` | `p5:mu` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 591 | `KAM.Iso.Confinement.slope_window_plus` | `p5:mu` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 598 | `KAM.Iso.Confinement.slope_window_minus` | `p5:mu` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 605 | `KAM.Iso.Confinement.slope_continuous` | `p5:mu` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 620 | `KAM.Iso.Confinement.SepSetting` | `p5:sec-sep` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 633 | `KAM.Iso.Confinement.graphSet` | `p5:sec-sep` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 636 | `KAM.Iso.Confinement.levelSet` | `p5:sec-sep` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 639 | `KAM.Iso.Confinement.sepRegion` | `p5:sec-sep` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 650 | `KAM.Iso.Confinement.separation_isOpen` | `p5:separation(a,b)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 654 | `KAM.Iso.Confinement.separation_init` | `p5:separation(a,b)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 659 | `KAM.Iso.Confinement.separation_closure` | `p5:separation(a,b)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 664 | `KAM.Iso.Confinement.separation_window` | `p5:separation(a,b)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 670 | `KAM.Iso.Confinement.separation_boundary` | `p5:separation(a,b)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 679 | `KAM.Iso.Confinement.separation_confined_of_invariant` | `p5:separation(c), conditional helper` | PASS | Distinct helper; extra hinv is explicit, not source-node closure. |
| 691 | `KAM.Iso.Confinement.separation_confined` | `p5:separation(c)` | PASS | F03: named torus output and graph equalities; hinv derived. |
| 714 | `KAM.Iso.Confinement.confinement_prop_of_invariant` | `p5:confinement, conditional helper` | PASS | Distinct helper; extra hinv is explicit. |
| 725 | `KAM.Iso.Confinement.confinement_prop` | `p5:confinement` | PASS | F03: source wrapper derives invariance; maximal solution retained. |
| 750 | `KAM.Iso.Confinement.ChartCover` | `p3:cover / patch-rays / hypothesis-d` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 764 | `KAM.Iso.Confinement.ToriExistence` | `p3:tori (projection), cover, uniform` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 781 | `KAM.Iso.Confinement.part3_tori` | `p3:cover / patch-rays / uniform / tori` | PASS | Producer contract remains gated by Part 3 and I-G1. |
| 796 | `KAM.Iso.Confinement.confinement_main_of_tori` | `p5:hd-eps / hd-fix / hd-sol / hd-uniq` | PASS | Explicit conditional consumer; no claim of producer discharge. |
| 814 | `KAM.Iso.Confinement.confinement_main` | `p0:head / p5:hd-*` | PASS | Only HeadData at root; producer and seal gate retained. |
| 838 | `KAM.Iso.Collision.radius_add_le` | `p8:x-norm / shell-exclusion` | PASS | Changed term proof via existing planeLength helper; definitional radius equality. |
| 841 | `KAM.Iso.Collision.radius_neg` | `p8:x-norm / shell-exclusion` | PASS | Changed term proof via existing planeLength helper; definitional radius equality. |
| 843 | `KAM.Iso.Collision.radius_eq_zero_iff` | `p8:x-norm / shell-exclusion` | PASS | Changed term proof via existing planeLength helper; definitional radius equality. |
| 846 | `KAM.Iso.Collision.radius_nonneg` | `p8:x-norm / shell-exclusion` | PASS | Direct Real.sqrt_nonneg on the frozen radius. |
| 848 | `KAM.Iso.Collision.continuous_radius` | `p8:x-norm / shell-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 851 | `KAM.Iso.Collision.exclusionMu` | `p8:collision-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 853 | `KAM.Iso.Collision.exclusionMu_pos` | `p8:collision-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 858 | `KAM.Iso.Collision.collision_exclusion_quant` | `p8:collision-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 867 | `KAM.Iso.Collision.collision_exclusion_compact` | `p8:collision-exclusion(b)` | PASS | Explicit nonnegativity is sound; previously derivable from triangle/evenness. |
| 879 | `KAM.Iso.Collision.shell_exclusion` | `p8:shell-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 885 | `KAM.Iso.Collision.shell_collisionFree` | `p8:shell-exclusion` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 891 | `KAM.Iso.Collision.min_distance` | `p8:min-distance` | PASS | F02: nonnegative definite continuous length; compact positive minima. |
| 907 | `KAM.Iso.R3bp.R3bpParams` | `p0:r3bp / p8:A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 917 | `KAM.Iso.R3bp.RegionParams` | `p0:r3bp / p8:A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 924 | `KAM.Iso.R3bp.R3bpParams.region` | `p0:r3bp / p8:A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 928 | `KAM.Iso.R3bp.kappa` | `p8:e-vs-k / A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 931 | `KAM.Iso.R3bp.actionRegion` | `p8:e-vs-k / A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 936 | `KAM.Iso.R3bp.actionRegionCl` | `p8:e-vs-k / A` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 941 | `KAM.Iso.R3bp.eccOf_mem_Ioo_iff` | `p8:e-vs-k / x-cont` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 946 | `KAM.Iso.R3bp.eccOf_mem_Icc_iff` | `p8:e-vs-k / x-cont` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 950 | `KAM.Iso.R3bp.kappa_strictAntiOn` | `p8:e-vs-k / x-cont` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 953 | `KAM.Iso.R3bp.actionRegionCl_subset_cone` | `p8:A / topology(a)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 957 | `KAM.Iso.R3bp.isOpen_actionRegion` | `p8:A / topology(a)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 959 | `KAM.Iso.R3bp.isCompact_actionRegionCl` | `p8:A / topology(a)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 961 | `KAM.Iso.R3bp.closure_actionRegion_subset` | `p8:A / topology(a)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 965 | `KAM.Iso.R3bp.mem_actionRegion_iff` | `p8:A / topology(a)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 971 | `KAM.Iso.R3bp.nearCircular_eq_image_region` | `p8:topology(b–d)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 975 | `KAM.Iso.R3bp.exists_delaunay_preimage` | `p8:topology(b–d)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 980 | `KAM.Iso.R3bp.isOpen_nearCircular_region` | `p8:topology(b–d)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 984 | `KAM.Iso.R3bp.nearCircular_nonempty` | `p8:topology(b–d)` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 993 | `KAM.Iso.R3bp.safeT` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 994 | `KAM.Iso.R3bp.safeAminus` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 995 | `KAM.Iso.R3bp.safeAplus` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 996 | `KAM.Iso.R3bp.safeEminus` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 997 | `KAM.Iso.R3bp.safeEplus` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1000 | `KAM.Iso.R3bp.safeU` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1004 | `KAM.Iso.R3bp.safeK` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1008 | `KAM.Iso.R3bp.safeB` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1012 | `KAM.Iso.R3bp.safeB'` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1015 | `KAM.Iso.R3bp.safeT_pos` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1017 | `KAM.Iso.R3bp.safe_regionParams` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1022 | `KAM.Iso.R3bp.safe_inclusions` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1027 | `KAM.Iso.R3bp.safe_elements` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1033 | `KAM.Iso.R3bp.safe_radii` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1039 | `KAM.Iso.R3bp.kRmin_le` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1042 | `KAM.Iso.R3bp.le_kRhoMax` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1047 | `KAM.Iso.R3bp.safe_domain` | `p8:safe / safe-region` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1064 | `KAM.Iso.R3bp.r3bpH` | `p8:head-data` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1067 | `KAM.Iso.R3bp.r3bpS₀` | `p8:head-data` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1068 | `KAM.Iso.R3bp.r3bpR₀` | `p8:head-data` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1071 | `KAM.Iso.R3bp.r3bp_headData` | `p8:head-data` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1077 | `KAM.Iso.R3bp.r3bp_perturbData` | `p8:head-data` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1083 | `KAM.Iso.R3bp.shellNu` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1087 | `KAM.Iso.R3bp.r3bpMu0` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1091 | `KAM.Iso.R3bp.r3bpD` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1094 | `KAM.Iso.R3bp.r3bpR` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1097 | `KAM.Iso.R3bp.r3bp_constants_pos` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1102 | `KAM.Iso.R3bp.r3bp_small` | `p8:constants / pf-small` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1109 | `KAM.Iso.R3bp.delaunay_radius_bounds` | `p8:bounds; p7:orbit-identities` | PASS | Locally owned adapter; cone gives L>0 and 0<e<1. |
| 1114 | `KAM.Iso.R3bp.delaunay_energy` | `p8:bounds; p7:orbit-identities` | PASS | Locally owned adapter; actual kE and frozen lengths. |
| 1118 | `KAM.Iso.R3bp.exactMu2_safe_pos` | `p8:constants; p7:shift` | PASS | Explicit minimum of strictly positive squared safe margins. |
| 1121 | `KAM.Iso.R3bp.delaunay_orbit_bounds` | `p8:bounds` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1131 | `KAM.Iso.R3bp.r3bp_core` | `p8:pf-coord / pf-sol / pf-bounds / pf-dist` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1147 | `KAM.Iso.R3bp.restricted_unique` | `p8:pf-uniq` | PASS | Unchanged contract; round-1 PASS retained after Appendix delta check. |
| 1165 | `KAM.Provider.Iso.all_time_confinement` | `p0:head` | PASS | Full provider type/body and rfl probe unchanged; independent run interrupted. |
| 1198 | `KAM.Provider.Iso.restricted_near_circular` | `p0:r3bp` | PASS | Full provider type/body and rfl probe unchanged; independent run interrupted. |

Final checks: report whitespace and `git diff --check` passed; reviewed design and signature hashes were rechecked unchanged. No other file was edited.
