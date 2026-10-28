# P5-0 independent package audit 1

**Overall: PASS WITH NOTES for P5-0 as a definitions-and-interfaces package.** No blocking implementation defect found. This is not a seal-ready verdict for I-HEAD: P5-0 supplies no provider or named theorem. `KAM.Iso.all_time_confinement` remains **FROZEN_UNPROVED (DRAFT_SORRY)**; its Part-3 producer, the I-G1 seal, and downstream proofs are outside this package.

Audit date: 2026-10-28. Inspected `/root/code/KAM-inp-p50`, HEAD `6564ca81a3c98fe854edb8e9436ca910e650417b`, against `inp` at `c2a788bd9e2f60d4443680c10508f55557d5d612` using `git diff inp...HEAD`. The live `inp` ref advanced during the audit to `31142e7612f2f88ae5f398fa250a8de6d9b566bd`; the final `git diff inp...HEAD` was rechecked and still contains only the same new file. The entire committed diff is the new 271-line `KAM/Iso/Confinement/Setting.lean`. Report destination is the MAIN inp worktree, as required by the audit brief. No implementation, frozen file, manifest, generated file, or git state was changed.

## Inputs and scope

Read the package audit brief, AGENTS.md, PLAN.md, DECISIONS.md, P5-0 handoff/AUDIT FOCUS, track-I statement, raw blueprint-I Parts 3 and 5, Part58 design and both design audits, exact signatures, frozen I-HEAD and its meaning-carrying definitions. The design audits are under `docs/tracks/I/design/`, rather than `audits/`.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `/root/code/KAM-inp-design-i58/.drafts/design/IPart58Signatures.lean` | `7aff03fdfc2ebf640555f871b74f147c4547cb47f79df5b689676359a3b372dd` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `2d4b0559c5247f6c89712e987ca3f3d7d9fa1a43f0f1117d265d40150f930a98` |
| `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |

Manifest identity: `iso.all_time_confinement.v1`; export `KAM.Iso.all_time_confinement`; ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`; state `DRAFT_SORRY`. No anchor is implemented or modified here. Provider=frozen-type and exact seal-body probes are therefore **N/A**, not omitted evidence for a claimed seal.

## Declaration ledger

Names below have prefix `KAM.Iso.Confinement.`. Locations refer to the pinned Setting file. A mechanical comparison of each complete declaration command and its immediate docstring found **25/25 byte-identical** to the signature file. Inventory: 12 `def`, 2 `abbrev`, 11 `structure`; additionally one anonymous `rfl` example at line 51, also present in the signatures. There are no named theorems.

| Node / source | Declaration (line) | Verdict | Reason / limit |
|---|---|---|---|
| p3:setting; p5:sec-real | `toC` (49) | PASS | Literal coordinatewise real inclusion, arbitrary n; definitionally frozen `realInclusion`. |
| p3:setting; p5:sec-real | `realAct` (54) | PASS | Exact inverse image of `actionNbhd B r0` under inclusion. |
| p3:coordinates | `realPart` (57) | PASS | Literal real part of h on real actions. |
| p3:setting | `totalH` (60) | PASS | Literal complex H=h+f, angles first. |
| p3:constants | `rhoInf` (64) | PASS | `min s0 1 / 8`, geometric strip width. |
| p3:constants | `fractD` (67) | PASS | Strip of width `min s0 1 / 2` times action neighborhood of radius `r0/2`. |
| p0:head; p3:setting | `BaseData` (71) | PASS | Four literal source premises. |
| p0:head; p3:setting | `HeadData` (79) | PASS | Exactly frozen I-HEAD standing hypotheses, including inherited BaseData. |
| p0:head; p3:setting | `PerturbData` (92) | PASS | Exactly the five perturbation premises excluding threshold smallness. |
| p3:chart / patch / patch-rays | `EnergyPatch` (104) | PASS WITH NOTES | Abstract chart-output interface, not a definition of the particular gradient slope. See N1. |
| p5:sec-patch | `EnergyPatch.Q` (138) | PASS | Closed energy/slope rectangle, correct center and endpoints. |
| p5:sec-patch | `EnergyPatch.O` (142) | PASS | Corresponding open rectangle. |
| p5:sec-patch | `EnergyPatch.Omega` (146) | PASS | Preimage explicitly restricted to W; no extraneous inverse branches. |
| p5:sec-patch | `EnergyPatch.K` (150) | PASS | Closed-box preimage explicitly restricted to W. Compactness is not assumed here. |
| p5:patch-const | `PatchConst` (155) | PASS WITH NOTES | Certificate of sufficient bounds, not exact extremum/minimum formulas; N2. |
| p5:eps0 | `Smallness` (169) | PASS | Literal seven inequalities used after threshold selection, not a chosen epsilon0. |
| p5:sec-real | `P2` (179) | PASS | Product of two `Fin 2 → R` spaces, standard max norm. |
| p3:T1–T4; p5:sec-graph | `TorusOutput` (186) | PASS WITH NOTES | Per-torus projection of upstream output; no proof of torus existence, N3. |
| p5:graph(b,c); p5:sec-sep | `GraphData` (201) | PASS WITH NOTES | Named graph-output certificate; graph construction is not assumed by its own producer. |
| p5:sec-sep | `SepSetting` (217) | PASS WITH NOTES | Explicit assembly of prior outputs; notably no invariant-set, boundary, separation, or confinement field. |
| p5:sec-graph | `graphSet` (230) | PASS | Literal global graph set. |
| p5:sec-sep | `levelSet` (233) | PASS | Literal energy level. |
| p5:sec-sep | `sepRegion` (236) | PASS | Correct strict ordering, minus below plus, action in Omega. |
| p3:cover; patch-rays; hypothesis-d | `ChartCover` (244) | PASS WITH NOTES | Output interface: finite cover and uniform derivative bound; not mere typing data. |
| p3:tori | `ToriExistence` (258) | PASS WITH NOTES | Explicit upstream existence proposition, not a proved instance or root premise; N4. |

## Definition bodies and carriers

The 14 formula definitions/abbreviations are literal formulas or aliases. Each has:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

No `Classical.choose`, `invFun`, fallback conditional, zero extension, or arbitrary selected witness occurs. Negative radii do not trigger invented fallback values: the displayed strip and neighborhood formulas still have their literal set meaning, and analytic applications get positive radii from BaseData/ChartCover. These formulas are not assertions of analytic regularity on every input.

The 11 structures are predicates/data records, not characterization-defined selected objects. Their bodies explicitly state the properties they certify. EnergyPatch supplies m and Psi as input functions with local C1 regularity and inverse identities on the chart image. It does not define an inverse by unproved choice, or claim that any values of Psi outside that image are an inverse. Q is contained in the image; Omega/K include W membership. Thus the source-relevant uses of the inverse and its derivative are guarded. The imported total `fderiv` occurs in bound predicates; genuine differentiability follows from the separately stated holomorphy/C1 fields on the relevant open domains. No theorem exploits its off-domain value in P5-0.

## Expanded field accounting and rule 6

This is a definitions package, so there are no theorem binders to approve. All source-defined fields are nevertheless expanded below. TYPING describes function/set/scalar data; SOURCE describes original hypotheses; STANDING-OUTPUT describes an explicitly named earlier result used as the setting for later work. A STANDING-OUTPUT is **not** approval to add that result to the final frozen theorem's hypotheses.

| Structure | Expanded fields and classification | Exact source / producer obligation |
|---|---|---|
| BaseData | SOURCE: `hs, hr, holo, real` (4) | Frozen I-HEAD `hs hr hh hhreal`; p3:setting. |
| HeadData | SOURCE: inherited BaseData (4), `isOpen, bounded, nonempty, iso, isOpen', compact, inside, hη` (8) | Frozen I-HEAD `hB hBb hBne hiso hB' hcompact hinside hη` and inherited binders. `toBaseData` adds no premise. |
| PerturbData | SOURCE: `holo, periodic, real, nonneg, bound` (5) | Frozen perturbation hypotheses; no epsilon0 or initial point is bundled. |
| EnergyPatch | TYPING: `c, W, m, Ψ, δE, δm, ρc, mPlus, mMinus` (9). STANDING-OUTPUT: `δE_pos, δm_pos, ρc_pos, isOpen_W, W_subset_B, W_subset_ball, hR_contDiffOn, m_contDiffOn, isOpen_V, Ψ_contDiffOn, Ψ_mem, Ψ_left, Ψ_right, Q_subset, ρc_le, ball_subset, ball_h, ball_m, mPlus_mem, mMinus_mem` (20). | p3:chart, patch P1–P3, patch-rays; Part 3 must construct this interface. |
| PatchConst | STANDING-OUTPUT: `r_pos, r_le_one, thick_subset, Lm_ge, Lm_bound, LΦ_ge, LΦ_bound, κ_pos, κ_le_quarter, κ_le_plus, κ_le_minus` (11) | p5:patch-const; P5-1 `patchConst_exists` must prove existence from EnergyPatch. |
| Smallness | SOURCE: `nonneg` (1). STANDING-OUTPUT: `le_one, lt_dE, lt_rho, lt_r, lt_kappa, lt_Phi` (6) | p5:eps0 and epsilon1<=1; P5-1 threshold producer must derive these. |
| TorusOutput | STANDING-OUTPUT: `holo, primary, real, invariant, energy, close, du, dv` (8) | p3:T1–T4, per sign. |
| GraphData | STANDING-OUTPUT: `continuous, near, energy, base_mem, base_slope` (5) | p5:graph(b,c), p3:T7/chart inverse properties; assembled after graph construction. |
| SepSetting | SOURCE: expanded `base, perturb` (9). STANDING-OUTPUT: `dbound` (1), expanded `pconst` (11), `small` (7 including repeated nonneg), `plus, minus` (5 each). | p3:hypothesis-d, p5:patch-const/eps0/graph; assembled in Main. |
| ChartCover | STANDING-OUTPUT: `finite, cover, η₁_pos, η₁_le, F₁_pos, dbound` (6) | p3:cover/constants/hypothesis-d; derivative bound universally quantified over f,epsilon with PerturbData and epsilon<=1. |
| ToriExistence | STANDING-OUTPUT: `ε₁_pos, ε₁_le_one, CK_pos, tori` (4) | p3:uniform/tori; Part-3 producer must establish this after I-G1. |

No EXCESS premise is introduced by a package theorem: there is no such theorem. It would be inaccurate to call every listed field “typing data only”: derivative estimates, inverse identities, graph properties and especially `ToriExistence.tori` are mathematical results. They are accepted here as explicit output interfaces under the audited conditional architecture. They must be produced in proofs, not passed as new premises to I-HEAD or silently promoted to source-node closure. Definition of a proposition asserting existence does not supply its inhabitant.

## Notes and refutation checks

**N1 — abstract chart interface.** EnergyPatch does not enforce `m = sigma_c o grad h`, `c in closure B'`, or ray/Diophantine data. These are deliberately forgotten properties of the Part-3 construction. It retains exactly a local C1 chart `(hR,m)`, a two-sided inverse on its image, the boxed window, position bounds, and ordered slopes. This broadens the class of chart certificates; downstream geometric implications can be stronger by using only those properties. It must not replace the full p3:coordinates or p3:patch-rays source node. Attempted refutation by arbitrary m/Psi off W fails for the present package: it makes no off-chart identity claim and its preimages are explicitly restricted to W.

**N2 — bounds instead of canonical constants.** The blueprint defines r by distance, Lm/LPhi by maxima, and kappa by a minimum. PatchConst records sufficient inequalities, not equality to those chosen values. Smallness records consequences of a chosen epsilon0, not that minimum formula. This is the documented design §0(4)/departure D1. No declaration here exports an incorrectly defined canonical extremum. Existence of these bounds and a uniform threshold remains P5-1 work; constant independence from f,epsilon,z0 must be established there and in assembly.

**N3 — projected torus output.** TorusOutput retains holomorphy, primary behavior, realness, invariance, pointwise complex energy, closeness and both derivative bounds. It omits the nonresonant/ray conclusions from T2, explicit real analyticity from T1, and T5–T7; it is not the complete source theorem p3:tori. ToriExistence retains the inverse-chart base-point equalities needed downstream. GraphData assumes already constructed graphs; SepSetting supplies no hidden global invariance conclusion. The prior audit F03 repair must remain enforced in P5-7: graph invariance must be proved from actual torus outputs and graph identifications.

**N4 — upstream gate.** `ToriExistence.tori` has the intended order: fixed system/patches/epsilon1/CK, then all f,epsilon, PerturbData and smallness, then I0 and E, then a patch and two tori. Constants cannot be chosen inside the f/epsilon quantifiers. It is a substantial existence result. The documented distinct helper `confinement_main_of_tori` may consume it conditionally; the source-facing Main/provider must obtain it from Part 3. P5-0 does not discharge this gate. Attempted refutation by reading the structure constructor as an existence proof fails: the constructor requires the full `tori` proof as an argument.

No new suspected defect of a pinned mathematical source or blueprint was established. The interface projections, abstract charts and bound certificates above are deviations from a literal full-source encoding, explicitly scoped rather than asserted as complete source results. No mathematical repairs were made.

## Independent verification

All explicit Lean invocations below used `LEAN_NUM_THREADS=1`, ran sequentially, and used `nice -n 5`; the targeted build used the mandated compile gate. No heartbeat, recursion-depth or synthesis-budget override was added. The initial lint run was started while the build was pending; because lint internally launches ABI Lean, it was repeated below with the required environment after all other Lean work finished. The final evidence is from that serialized run.

1. Protected paths:

   ```sh
   git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
   ```

   Exit 0, empty output.

2. Targeted build:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p50 KAM.Iso.Confinement.Setting
   ```

   Exit 0. Output:

   ```text
   [inp-gate] slot 2 acquired 00:21:07 for KAM.Iso.Confinement.Setting
   ⚠ [2841/2852] Replayed KAM.ODE.Exit
   warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
     [NormedSpace ℝ E]
   consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
     omit [NormedSpace ℝ E] in theorem ...

   Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
   Build completed successfully (2916 jobs).
   ```

   This is a replayed pre-existing ODE warning; the audit did not set that option. No new warning in Setting.

3. Definition/axiom probe:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P50Audit.lean
   ```

   Exit 0. The probe imported only Setting and issued `#print axioms` for all 25 named declarations, all 11 constructors, and all 95 projections (including `HeadData.isOpen'` and `HeadData.toBaseData`). All **131** output lines have exactly this axiom list:

   ```text
   'KAM.Iso.Confinement.toC' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Confinement.ToriExistence.tori' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   No sorryAx or project axiom. Two transient rfl examples also checked `toC = realInclusion` pointwise and `realHamiltonian h f z = (totalH h f (toC z.1,toC z.2)).re`. No provider export or named public theorem exists to check. The anonymous source example is additionally covered by kernel replay.

4. Kernel replay:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Setting
   ```

   Exit **0**; complete output:

   ```text
   replaying KAM.Iso.Confinement.Setting
   ```

5. Lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1**, solely for the explicitly allowed stale generated root. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   No generated file was edited.

6. Static package checks: all 35 modules in the transitive project import closure were traversed; **zero provider or frozen-theorem imports**. Frozen definition imports are permitted. Setting has copyright, module, public imports, module docstring, `@[expose] public noncomputable section`; 271 lines, below 1500. No prohibited proof escape, ambient EuclideanSpace, or resource override. The source contains no named theorem, no sorry, and no hidden provider implementation. The complete declaration/docstring comparison returned `25/25 declaration commands and immediate docstrings byte-identical to signatures.`

7. Report whitespace and final scope: `git diff --check inp...HEAD` and `git diff --no-index --check /dev/null /root/code/KAM-inp/docs/tracks/I/audits/P5-0-audit-1.md` return 0 and 1 respectively, both with empty output (the no-index return 1 denotes the new file, with no whitespace diagnostic). Transient audit probe/log files were deleted. The only persistent file written by this audit is this report; no state-changing git operation was used.

## Handoff

Files: this audit report only. Approach: source-first body/carrier review, expanded bundled-field accounting, adversarial checks of interface versus existence, exact signature comparison, import closure traversal, targeted elaboration, axiom probes and kernel replay. Uncertainties: construction of upstream interfaces and downstream consumers remains unaudited by this package review. No frozen anchor is certified seal-ready. P5-0 is acceptable as the explicitly scoped interface layer, with N1–N4 retained for the later producer/provider audits.
