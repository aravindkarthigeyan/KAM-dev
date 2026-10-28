# P5-7 independent audit 1

**Verdict: PASS for package P5-7.** The seven public separation declarations implement `bpI:p5:separation` and its six proof steps. No material statement, proof, definition, or quarantine defect was found. The distinctly named `separation_confined_of_invariant` remains a conditional helper; `separation_confined` proves the source-facing statement by deriving invariance.

**Anchor disposition: I-HEAD (`iso.all_time_confinement.v1`): PASS WITH NOTES for this supporting package only; NOT seal-ready.** No provider is delivered by P5-7. The exact frozen `KAM.Iso.all_time_confinement` remains `DRAFT_SORRY` / `FROZEN_UNPROVED`; this audit does not promote it or discharge Part 3's torus-existence obligation. Provider/frozen exact-type and sealing probes are consequently not applicable here. I-G1 and the other I/N/P anchors are not package targets.

## Scope, authority, and frozen inputs

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-p57`. Read-only audit except this report and temporary probes/logs under this worktree's `.lake/abi-scratch/`; no commits, repairs, generated-root edits, or frozen edits. The user's explicit absolute report path overrides the brief's generic main-worktree destination. Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the P5-7 handoff, the track-I statement, relevant frozen declarations/definitions, and the source/design ranges below.

Tier 2 focused statement/proof audit, using `lean-statement-audit` and `manuscript-audit`: source reconstruction, expanded-premise inspection, proof review, a separate refutation pass, then mechanical verification. No code changes were authorized or made. All Lean/Lake invocations were serialized with `LEAN_NUM_THREADS=1` and niceness 5 (the build script applies niceness). Other campaigns' processes were not altered.

Snapshot `frozen-v1`:

- HEAD: `7b0640a9b2490daa16275f6ecb3951ee16d3fd13`.
- `inp` at initial comparison: `0892ad4f5353dda0b9637f3076736a3b5ebe90ae`.
- Required `git diff inp...HEAD`: three added files, 652 lines. Git reports multiple merge bases and selects `738b078efc07a743392b02cbb09909b8697fcabc`. The other bases are `5387f669b391c3b98e741988817ed0a41667870f` and `a96f0429d6d79e2d43d6b82054012426c3e24159`.
- Full P5-7 statement/proof focus: `KAM/Iso/Confinement/Separation.lean`. `Graph.lean` (P5-3) and `EnergyCoordinate.lean` (P5-5) are delivered dependency changes in the required comparison; their interfaces and invoked proof paths were inspected, and all their new public theorems included in axiom/kernel checks. The handoff's alternative `inp-p55...HEAD` also includes unrelated merged work, so it was not used to expand P5-7 ownership.
- Source: `blueprint-I/parts/p5-confinement.tex:86-160`, especially “Keep the notation” at 131 and proposition/steps at 146-160; Part 3 chart clauses P1-P3 at `p3-iso-local-charts.tex:178-183`, derivative bound at 274-278, and T1-T7 at 371-383.
- Exact design interface: `docs/tracks/I/design/PART58-LEAN-DESIGN.md:1249-1310`; conditional/source-facing distinction at 222 and F03 disposition at 595; package row at 343.

| File | SHA-256 |
|---|---|
| `KAM/Iso/Confinement/Separation.lean` | `72861f6c1455058300f81a433dc7ba6f0d269080e33753f723f0aa871707e058` |
| `KAM/Iso/Confinement/Graph.lean` | `2e562fe233c0b555bcfcca3b1aeff1e3bf720618c6dd30459742100b062f5645` |
| `KAM/Iso/Confinement/EnergyCoordinate.lean` | `820da05cdec0525ca649dc153fefb0ef77868b4068d28805d2dd452dc4350020` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |
| `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |

Manifest identity: `manifest/frozen-anchors.json:1658-1697`, export `KAM.Iso.all_time_confinement`, owner ruling D20, source revision `KAM-dev@b1422e0` track-I statement with HL19 arXiv:1711.05515v1. Frozen anchor bytes and ABI are checked by repository lint; the package does not alter them.

## Declaration ledger

All names below are in `KAM.Iso.Confinement`. Line locators refer to frozen-v1.

| Node / role | Declaration | Verdict | Evidence / note |
|---|---|---|---|
| `sp-open` | `separation_isOpen` (81) | PASS | Open region on all lifted phase space; continuity is restricted to `Omega`, where the chart is defined. |
| `sp-init` | `separation_init` (94) | PASS | Centre-ball bound gives membership and exclusion from both graphs; no energy or global initial-domain premise needed. |
| `sp-closure` | `separation_closure` (123) | PASS | Closure lies in `univ ×ˢ p.K`, by compactness/closedness of K; independent of invariance. |
| `sp-window` | `separation_window` (160) | PASS | Strict energy window on the level over K, from `E = H(z₀)`, ball bound, and `ε < δE/4`. |
| `sp-bdry` | `separation_boundary` (213) | PASS | Full ambient frontier intersected with the energy level lies on one of the two graphs. |
| `sp-barrier`, conditional helper | `separation_confined_of_invariant` (239) | PASS as helper | Explicit produced input `hinv`; distinctly named; not substituted for the source theorem. |
| `sp-barrier`, source-facing | `separation_confined` (274) | PASS | Derives torus membership in B and invariance, then discharges every barrier premise. All t in arbitrary intervals J containing 0, including negative times. |
| Private continuity step | `continuousOn_slopes` (53) | PASS | Continuous triple of lower, current, upper slopes on a set whose actions lie in W. |
| Private graph windows | `abs_slope_plus_lt` (66) | PASS | Direct strict-window consequence of `slope_window_plus`. |
| Private graph windows | `abs_slope_minus_lt` (72) | PASS | Direct strict-window consequence of `slope_window_minus`. |
| Private initial energy estimate | `abs_energy_sub_lt` (132) | PASS | Triangle estimate gives `|E-Ec| < 3 δE/4`. |
| Private chart energy estimate | `abs_chart_energy_lt` (146) | PASS | Same estimate for any point over B on the level; stronger domain than the public K-only window. |
| Private boundary step | `slope_le_of_mem_closure` (167) | PASS | Uses a closed preimage inside the closed product with K, avoiding global continuity of m. |
| Private boundary identification | `eq_graph_of_slope_eq` (186) | PASS | Both chart points proved in Q before energy injectivity; no graph identity assumed. |
| Private torus membership | `torus_mem_B` (259) | PASS | Range equality plus `torus_graph_mem` proves actions in B for all real angles. |
| P5-3 / `gr-contr` | `torus_phase_sub_lipschitz` (Graph:92) | PASS, dependency interface | Half-Lipschitz real phase displacement; max norm and source smallness. |
| P5-3 / `gr-bij` | `torus_phase_bijective` (Graph:104) | PASS, dependency interface | Global bijection and half lower distance bound, via contraction. |
| P5-3 / `gr-bij` | `torus_phase_inv` (Graph:151) | PASS, dependency interface | Both inverse identities and 2-Lipschitz bound; `invFun` used only after bijectivity is proved. |
| P5-3 / `gr-graph`, `gr-energy` | `torus_graph` (Graph:171) | PASS, dependency interface | Produces continuous global graph, closeness, exact range equality and energy identity. |
| P5-3 / `gr-energy` | `torus_graph_mem` (Graph:217) | PASS, dependency interface | Explicit geometric premises give membership in thickening, W and B. |
| P5-3 / `gr-energy` | `torus_graph_energy_close` (Graph:228) | PASS, dependency interface | Perturbation bound over realAct gives `|h(Y)-E| ≤ ε`. |
| P5-5 / `ec-reduce`, `ec-lip` | `energy_coordinate` (EnergyCoordinate:87) | PASS, invoked proof path | Holomorphy, derivative and chart bounds prove injectivity along a fixed slope; no injectivity conclusion assumed. |

Normalized whitespace comparison found all seven Separation theorem headers identical to the design appendix. A fresh probe copied each design statement, replaced the proof by application of the actual theorem to its explicit binders in order, and checked `type_of%` compatibility in both directions. Thus binder order, implicitness, domain, constants, signs, and conclusion are checked by elaboration as well as textual comparison.

## Premise and definition audit

The source starts with “Keep the notation” and “the output of Proposition p3:tori.” `SepSetting` therefore expresses standing data for this local proposition, not an assumption of separation. `TorusOutput.invariant` is the pointwise invariance equation (T2), not invariance of a set under every solution. The latter is proved through the ODE uniqueness theorem. `GraphData.energy` is T3 transferred to the graph, not a boundary-identification assumption.

The appendix below expands every outer binder and project structure field of the source-facing `separation_confined`. Classification is at named-field granularity; quantified formulas in a field are inspected as the indicated whole formula, not counted again as new outer assumptions. Counts: **TYPING 34; STANDING 76; SOURCE 6; RULED 0; EXCESS 0**. The other five source-facing results use subsets of these inputs. They omit unneeded source premises such as `I₀ ∈ B'` and remain valid under the weaker local centre-ball condition; that strengthens the results. There are no new instance binders.

The conditional helper alone has the additional produced input `hinv`. It would be EXCESS if promoted to the source theorem. The distinct name, explicit documentation, and source-facing wrapper implement design decision D8/F03; the wrapper produces this input internally.

`ToriExistence` (Setting:258-272) is not a binder of any Separation theorem and none of its projections is used here. Its fields are `ε₁_pos`, `ε₁_le_one`, `CK_pos`, and the quantified Part 3 output `tori` (a patch near I₀, two TorusOutputs, and `I_± = Ψ(E,m_±)`). No field states openness, frontier inclusion, confinement, or global continuation. Constructing that structure is explicitly outside this package; no existence of it is claimed by P5-7. `ChartCover` likewise is not a Separation premise.

No new `def`, `abbrev`, or `structure` occurs in any of the three changed files. All new declarations are theorems. The following existing meanings were unfolded/read at their use:

| Definition / structure | Classification and body check |
|---|---|
| `P2`, `toC`, `realAct`, `realPart`, `totalH`, `rhoInf`, `fractD` | Literal carrier, inclusion, domain, Hamiltonian and strip formulas (Setting:49-68); no selection or fallback. |
| `EnergyPatch.Q`, `.O`, `.Omega`, `.K` | Literal closed/open coordinate boxes and their preimages **inside W** (138-151); no invented inverse identities outside the chart. |
| `graphSet`, `levelSet`, `sepRegion` | Literal graph, energy equality and strict between-graphs region (230-239), on all declared carriers. |
| `EnergyPatch`, `BaseData`, `PerturbData`, `PatchConst`, `Smallness`, `GraphData`, `SepSetting`, `TorusOutput` | Standing chart/analytic/geometric data, expanded below; no Separation conclusion field. Bounds are the blueprint's named local data. |
| `ToriExistence` | Quantified upstream output contract, not a proof of that output and not a Separation assumption. |
| `KAM.realHamiltonian`, `KAM.hamiltonianVectorField` | Literal frozen formulas: real part of h+f and `(∂I H, -∂θ H)`; genuine differentiability is supplied by BaseData/PerturbData. |
| `KAM.ODE.IsSolutionIn` | `∀ t ∈ J, z t ∈ W ∧ HasDerivAt z (F (z t)) t`; no hidden confinement or energy premise. |
| `KAM.ODE.IsInvariantSet` | Invariance for every solution on an interval from any visited barrier point, in both time directions; derived by the wrapper, not assumed there. |

For the literal objects: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. The chart inverse is arbitrary off its chart image, but every inverse identity in the boundary proof is applied in W/Q, exactly the source domain; no off-chart behavior is used. Graph's `invFun` has both inverse identities proved from its global bijection. No theorem relies on junk values.

## Proof and adversarial checks

The proof pays the potentially missing boundary obligation explicitly. At Separation:197-204, `torus_graph_mem` gives the graph point in W and B; `abs_chart_energy_lt` gives its energy coordinate in the strict energy window; the slope window puts its other coordinate inside the slope interval. This proves `hQY`, while `hzK.2` supplies `hQz`. At 205-210, `Ψ_left` identifies both inverse-chart images and the two Hamiltonian values are equal by the level and graph energy identities. Only then is `energy_coordinate` applied. It needs neither an unproved global chart inverse nor an assumed boundary/graph conclusion.

`gen_barrier` at Separation:250-256 is instantiated as follows:

| Premise | Actual discharge |
|---|---|
| F, W, V, G, barrier S | Frozen Hamiltonian field, `univ ×ˢ B`, `sepRegion p Yp Ym`, `levelSet (realHamiltonian h f) E`, `graphSet Yp ∪ graphSet Ym`. |
| Interval and zero membership; solution | `hJ`, `h0`, `hz`. |
| V open | `separation_isOpen S`. |
| Initial point in V | `separation_init S hz₀`, rewritten by `hz0`. |
| Whole solution image in G | `realHam_energy_const S.base S.perturb hJ hz t ht 0 h0`, rewritten using `hz0` and `hE`. |
| Invariant barrier | Helper input, produced at 285-289 by `torus_invariant` twice, graph-range rewrites, and `isInvariantSet_union`. |
| Frontier on G contained in barrier | `separation_boundary S hz₀ hE`. |
| Initial point outside barrier | Second conclusion of `separation_init`, rewritten by `hz0`. |

A separate refutation pass checked the following candidate failure modes; each is refuted by actual premises/proofs: global continuity of the chart slope (only continuity on W is used); a closure point escaping W (closure lies over compact K ⊆ W); the comparison graph point escaping Q (hQY is proved separately); invariant-set conclusion hidden in TorusOutput (only the differential equation is stored); membership in B assumed for tori (proved by `torus_mem_B`); only forward-time confinement (gen_barrier handles both signs); and degeneracy at ε=0 (strict positive margins remain, and no division by ε occurs). No surviving or tentative material findings remain. This was a separate pass by the same independent auditor, not a claimed second external review.

## Verification evidence

All commands run from `/root/code/KAM-inp-p57`. No resource-budget override was used. Successful proof checks used default heartbeats.

1. Targeted gated build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p57 KAM.Iso.Confinement.Separation
```

Exit 0. Output:

```text
[inp-gate] slot 1 acquired 01:21:22 for KAM.Iso.Confinement.Separation
⚠ [2843/2865] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (2950 jobs).
```

This is a targeted incremental build against the worktree's existing build snapshot, not a clean rebuild. The dependency warning is pre-existing; no changed-module warning or heartbeat failure occurred. An initial invocation with unsupported `-j1` exited 1 (`error: unknown short option '-j'`) before building; it was corrected to the command above with `LEAN_NUM_THREADS=1`.

2. Exact design-type/application and axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P57Audit.lean
```

Exit 0. Probe SHA-256: `eb3714994fa404cecfb11cb79fd90c5ccfb192918c6fa9e31282f47554df9341`. The probe imports only `KAM.Iso.Confinement.Separation`, reconstructs all seven exact statements from design Appendix A with proofs applying the implementation, checks `type_of%` in both directions, then prints the axioms of all 14 public theorems in the required diff. Exact axiom output:

```text
'KAM.Iso.Confinement.torus_phase_sub_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_phase_bijective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_phase_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph_energy_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.energy_coordinate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_init' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_closure' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_window' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_boundary' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_confined_of_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.separation_confined' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Probe preparation initially treated every implementation body as `:= by`; `separation_window` uses `:= fun`. The extraction assertion stopped before writing a probe, and the attempted Lean invocation reported the missing file (exit 1). Extraction was corrected to split at `:=`; all seven comparisons and the successful probe above then passed. This was a probe-script error, not a package failure.

3. One kernel replay invocation:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Separation KAM.Iso.Confinement.Graph KAM.Iso.Confinement.EnergyCoordinate
```

Exit 0. Complete output:

```text
replaying KAM.Iso.Confinement.EnergyCoordinate
replaying KAM.Iso.Confinement.Graph
replaying KAM.Iso.Confinement.Separation
```

4. Source lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the brief's expressly permitted generated-root exception. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (315 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The module, frozen-byte guard and all 144 frozen ABI checks pass. The generated root was left untouched.

5. Other checks:

- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty stdout, exit 0; only the multiple-merge-base warning. Also inspected the direct tip comparison: its generated-root differences come from newer `inp`, not package edits relative to the selected merge base.
- `git diff --check inp...HEAD`: exit 0, no whitespace findings (same merge-base warning).
- Transitive project-import traversal from Separation: 48 KAM modules, **zero** provider or frozen-theorem imports. Frozen definitions are permitted.
- Forbidden-token/resource-override search over Graph, EnergyCoordinate, Separation: no matches. No new definitions, instances, fallbacks, `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, or `EuclideanSpace`.
- Total file lengths: Graph 237, EnergyCoordinate 124, Separation 291; all below 1500. Each has copyright, `module`, public imports, module docstring and public section.
- Temporary probe and audit logs are removed after transferring this evidence into the report. The pre-existing untracked handoff is preserved.

## Findings, errata, limitations, closeout

No material finding, suspected pinned-source erratum, or new mathematical deviation was identified in the audited Separation surface. The blueprint's precise claims “the output of Proposition p3:tori,” “closure V ⊆ R² × K,” and “∂V ∩ G ⊆ T₊ ∪ T₋” agree with the formal statements and their actual proofs. Additional import of Graph and combining the planned boundary helpers into one private lemma are harmless implementation choices. There is no use of Jordan separation, a globally defined flow, or unproved invariance.

This is not a renewed audit of all frozen I/N/P statements, all upstream ODE/analytic implementations, HL19, or Part 3's producer. It establishes the local separation package against the stated chart/torus inputs and records their limits explicitly. No seal or global I-HEAD proof follows from P5-7 alone.

Closeout: seven P5-7 public statements classified; eight private proof steps inspected; seven changed dependency interfaces inspected; exact design-type probes, targeted build, all 14 axiom checks and kernel replay pass. Source lint has only the expressly allowed generated-root exception (see its exact receipt above). No changes outside the requested report remain from this audit.

## Expanded binder ledger

The following ledger is for `separation_confined`. Every row is one outer parameter or one expanded named structure field. Source abbreviations: **P3** = `blueprint-I/parts/p3-iso-local-charts.tex`, **P5** = `blueprint-I/parts/p5-confinement.tex`; all at frozen-v1. Unused standing fields are still listed, so their bundles cannot conceal stronger premises.

| Binder / expanded field | Bin | Source / meaning |
|---|---|---|
| `B` | TYPING | P3/P5 standing notation: real action domain |
| `s₀` | TYPING | P3/P5 standing notation: complex angle width |
| `r₀` | TYPING | P3/P5 standing notation: complex action radius |
| `h` | TYPING | P3/P5 standing notation: integrable Hamiltonian |
| `f` | TYPING | P3/P5 standing notation: perturbation |
| `ε` | TYPING | P3/P5 standing notation: perturbation size |
| `η₁` | TYPING | P3/P5 standing notation: chart scale |
| `F₁` | TYPING | P3/P5 standing notation: derivative constant |
| `C_K` | TYPING | P3/P5 standing notation: torus closeness constant |
| `r` | TYPING | P3/P5 standing notation: thickening radius |
| `Lm` | TYPING | P3/P5 standing notation: slope derivative bound |
| `LΦ` | TYPING | P3/P5 standing notation: inverse-chart derivative bound |
| `κ` | TYPING | P3/P5 standing notation: slope margin |
| `E` | TYPING | P3/P5 standing notation: energy level |
| `Yp` | TYPING | P3/P5 standing notation: upper graph |
| `Ym` | TYPING | P3/P5 standing notation: lower graph |
| `Ip` | TYPING | P3/P5 standing notation: upper base action |
| `Im` | TYPING | P3/P5 standing notation: lower base action |
| `Kp` | TYPING | P3/P5 standing notation: upper torus map |
| `Km` | TYPING | P3/P5 standing notation: lower torus map |
| `ωp` | TYPING | P3/P5 standing notation: upper frequency |
| `ωm` | TYPING | P3/P5 standing notation: lower frequency |
| `z₀` | TYPING | P3/P5 standing notation: initial phase point |
| `J` | TYPING | P3/P5 standing notation: real time set |
| `z` | TYPING | P3/P5 standing notation: candidate solution |
| `p.c` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.W` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.m` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.Ψ` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.δE` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.δm` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.ρc` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.mPlus` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.mMinus` | TYPING | P3 chart/patch/ray data (178-183, patch-rays) |
| `p.δE_pos` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.δm_pos` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.ρc_pos` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.isOpen_W` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.W_subset_B` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.W_subset_ball` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.hR_contDiffOn` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.m_contDiffOn` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.isOpen_V` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.Ψ_contDiffOn` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.Ψ_mem` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.Ψ_left` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.Ψ_right` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.Q_subset` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.ρc_le` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.ball_subset` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.ball_h` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.ball_m` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.mPlus_mem` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `p.mMinus_mem` | STANDING | P3 chart inverse, P1-P3 and patch-ray properties (178-183) |
| `S.base.hs` | STANDING | I-HEAD analytic standing premises; P3 setting |
| `S.base.hr` | STANDING | I-HEAD analytic standing premises; P3 setting |
| `S.base.holo` | STANDING | I-HEAD analytic standing premises; P3 setting |
| `S.base.real` | STANDING | I-HEAD analytic standing premises; P3 setting |
| `S.perturb.holo` | STANDING | I-HEAD perturbation premises; P3 setting |
| `S.perturb.periodic` | STANDING | I-HEAD perturbation premises; P3 setting |
| `S.perturb.real` | STANDING | I-HEAD perturbation premises; P3 setting |
| `S.perturb.nonneg` | STANDING | I-HEAD perturbation premises; P3 setting |
| `S.perturb.bound` | STANDING | I-HEAD perturbation premises; P3 setting |
| `S.pconst.r_pos` | STANDING | P5 patch-const (67-75) |
| `S.pconst.r_le_one` | STANDING | P5 patch-const (67-75) |
| `S.pconst.thick_subset` | STANDING | P5 patch-const (67-75) |
| `S.pconst.Lm_ge` | STANDING | P5 patch-const (67-75) |
| `S.pconst.Lm_bound` | STANDING | P5 patch-const (67-75) |
| `S.pconst.LΦ_ge` | STANDING | P5 patch-const (67-75) |
| `S.pconst.LΦ_bound` | STANDING | P5 patch-const (67-75) |
| `S.pconst.κ_pos` | STANDING | P5 patch-const (67-75) |
| `S.pconst.κ_le_quarter` | STANDING | P5 patch-const (67-75) |
| `S.pconst.κ_le_plus` | STANDING | P5 patch-const (67-75) |
| `S.pconst.κ_le_minus` | STANDING | P5 patch-const (67-75) |
| `S.small.nonneg` | STANDING | P5 eps0 (78-85) |
| `S.small.le_one` | STANDING | P5 eps0 (78-85) |
| `S.small.lt_dE` | STANDING | P5 eps0 (78-85) |
| `S.small.lt_rho` | STANDING | P5 eps0 (78-85) |
| `S.small.lt_r` | STANDING | P5 eps0 (78-85) |
| `S.small.lt_kappa` | STANDING | P5 eps0 (78-85) |
| `S.small.lt_Phi` | STANDING | P5 eps0 (78-85) |
| `S.plus.continuous` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.plus.near` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.plus.energy` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.plus.base_mem` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.plus.base_slope` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.minus.continuous` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.minus.near` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.minus.energy` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.minus.base_mem` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.minus.base_slope` | STANDING | P5 graph (92-106), P3 points/T7 |
| `S.dbound` | STANDING | P3 hypothesis-d (274-278): norm Df ≤ F₁ ε on fractD |
| `Tp.holo` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.primary` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.real` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.invariant` | STANDING | P3 T1-T4 (376-380); pointwise invariance equation, not invariant-set conclusion |
| `Tp.energy` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.close` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.du` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tp.dv` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.holo` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.primary` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.real` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.invariant` | STANDING | P3 T1-T4 (376-380); pointwise invariance equation, not invariant-set conclusion |
| `Tm.energy` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.close` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.du` | STANDING | P3 T1-T4 (376-380); named torus output |
| `Tm.dv` | STANDING | P3 T1-T4 (376-380); named torus output |
| `hgp` | STANDING | P5 graph(b), 98: range of real torus equals graph Y |
| `hgm` | STANDING | P5 graph(b), 98: range of real torus equals graph Y |
| `hz₀` | SOURCE | P5 sec-sep / sp-init: norm I₀-c < ρc |
| `hE` | SOURCE | P5 separation: E := H_R(z₀) |
| `hJ` | SOURCE | P5 separation(c): J is an interval |
| `h0` | SOURCE | P5 separation(c): 0 ∈ J |
| `hz` | SOURCE | P5 separation(c): ∀ t ∈ J, z(t) ∈ R² × B and HasDerivAt z (X_R(z(t))) t |
| `hz0` | SOURCE | P5 separation(c): z(0) = z₀ |
