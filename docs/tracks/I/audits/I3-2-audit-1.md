# I3-2 independent package audit 1

**Verdict: PASS WITH NOTES for `bpI:p3:chart` and `bpI:p3:cover`.** Both match the audited design and blueprint, with no material mathematical or statement defect found. The eight I3-2 public theorems and twenty public prerequisite theorems have standard-foundation axiom closure. This is an infrastructure-package verdict: **no frozen anchor is seal-ready from I3-2 alone**. In particular, `iso.all_time_confinement.v1` remains `DRAFT_SORRY` / **FROZEN_UNPROVED**.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-i32`. Only this report is a repository deliverable. The user's exact absolute destination overrides the generic brief's main-worktree destination sentence.

## Scope, snapshot and decisions

Focused tier-2 statement/source and proof audit, with a separate adversarial reread and mechanical verification. No subagents, source repairs, git mutations, or sealing. Authorization and check scope are supplied by the user, AGENTS.md, and `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`; no further permission was needed.

Frozen-v1 commit: `ddfd7519750b67f2bad20ebe7ad8f44f9620fb55`.

- `inp` at audit start: `0805974335892d77db7eae97b4c19706050df578`.
- `inp-i31` at audit start: `285405576ce882e3a3db8af06f26568e9713994e`.
- The required `git diff inp...HEAD` warns of multiple merge bases and chooses `9f8e018c769d276602fb0cb08d809b3cd6bae31c`; the other merge base is `03120438724f6f5fde381b652e5a92cd6dc88b33`. Its actual diff contains exactly the three Lean files below, 735 added lines.
- The handoff's `git diff inp-i31...HEAD` also includes other integrated work because of the branch topology. For package attribution, `git diff 3cff2e7..HEAD --stat` contains only `Chart.lean`, 304 additions. The required broader `inp...HEAD` scope was retained: all 28 public theorems in its three files were inspected and checked.
- The pre-existing untracked `docs/tracks/I/audits/I3-2-handoff.md` was read and preserved.

SHA256 frozen-v1 inputs:

| File | SHA256 |
|---|---|
| `KAM/Iso/Charts/Constants.lean` | `18920733299c0c8ad6def420c79c1bc6ebebe221b62fb10dd2e7bd705fb1405a` |
| `KAM/Iso/Charts/Coordinates.lean` | `ae6b4fabdb49fba92a2d24b445a2068e5596eb5eb4c3097a30169e45a9c6cfa0` |
| `KAM/Iso/Charts/Chart.lean` | `cca758c88cc79aee007be2e253a2a253090742c34b461257cf4a678211e697c8` |
| `KAM/Iso/Charts/Defs.lean` | `204bdaa63495090382b0563cd2a9bfa734791d10822a20d703c448a6c56bde50` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |
| `docs/tracks/I/audits/I3-2-handoff.md` | `b56c0d733f70df4a95011245a07f299258d75ccb7a86473ac85776eb614342fb` |

Authority: blueprint Part 3 setting at lines 22–35, coordinates at 133–147, chart at 158–174, patch at 177–185, cover at 188–198; design v2 §7 I3-2 row and signature block at 1810–1859; design audits 1 and 2, especially audit 2's F2 closure. `docs/PLAN.md`, `docs/DECISIONS.md` D19/D20, and `docs/tracks/I/statement.md` were read. The latter still has historical Phase-0 wording; the manifest and D20 govern frozen status.

Manifest context: `iso.all_time_confinement.v1` exports `KAM.Iso.all_time_confinement`, with registered provider `KAM.Provider.Iso.all_time_confinement`, and remains draft. Its approved type and relevant frozen definitions were inspected. `kam.actionNbhd.v1`, `kam.frequencyMap.v1`, and `iso.borderedHessian.v1` are SEALED literal definitions; direct SHA256 comparisons match their manifest file hashes. The frozen guard and 144-declaration ABI check pass. I3-2 has no provider or frozen export to compare/seal; the provider-equality and frozen-seal probes are therefore **N/A**, not passed by a substitute helper.

## Statement ledger

Names below have prefix `KAM.Iso.Charts.`. Line numbers refer to frozen-v1. Every theorem in the required diff is listed; support lemmas are judged at their stated helper purpose rather than promoted to complete blueprint nodes.

| Node / purpose | Declaration and file:line | Verdict | Reason |
|---|---|---|---|
| Real action domain | `isOpen_realAct_charts`, Constants:41 | PASS | Openness of the real inclusion preimage; no positivity premise needed. |
| Real action inclusion | `subset_realAct_charts`, Constants:46 | PASS | Positive radius supplies `B ⊆ U`. |
| p3 standing regularity | `contDiffOn_frequencyMap`, Constants:50 | PASS | C¹ frequency map on U from holomorphy/reality. |
| Hessian continuity | `continuousOn_fderiv_frequencyMap`, Constants:55 | PASS | C¹ regularity on the open U. |
| Bordered matrix continuity | `continuousOn_borderedHessian`, Constants:60 | PASS | Genuine entrywise frozen matrix. |
| Cramer's rule support | `continuousOn_inv_of_det_ne_zero`, Constants:73 | PASS | Generic continuous real matrix family with nonzero determinant; arbitrary finite index set. |
| p3 inverse bound support | `continuousOn_norm_inv`, Constants:85 | PASS | Real inverse row-sum norm, operator norm scope retained. |
| p3:det-identity (a) | `frequencyMap_ne_zero_of_det_ne_zero`, Constants:92 | PASS | Zero gradient forces zero last row. |
| Inverse nonzero support | `inv_ne_zero_of_det_ne_zero`, Constants:103 | PASS | Uses nonsingular matrix inverse identity on nonempty index carrier. |
| p3:compact | `compact`, Constants:111 | PASS | Positive separation, compact S, inclusions and positive finite extrema/bounds; B' nonemptiness is explicit source data. |
| p3:det-identity expansion | `borderedHessian_det_eq`, Coordinates:67 | PASS | Exact sign and real frozen Hessian; stronger: no regularity premise for the algebraic identity. |
| Hessian symmetry | `hessR_transpose`, Coordinates:76 | PASS | Real/complex derivative bridge and symmetry at real U. |
| p3:det-identity | `det_identity`, Coordinates:93 | PASS | Symmetry, determinant identity, nonzero gradient, determinant of gradient/Hessian-perpendicular pair. |
| Dot product support | `dotProduct_self_pos`, Coordinates:110 | PASS | Euclidean dot product positivity for nonzero vector, independent of ambient max norm. |
| Coordinate support | `continuous_aCoord`, Coordinates:117 | PASS | Literal linear numerator over constant denominator; valid also at g=0 under Lean division. |
| Coordinate support | `dotProduct_eq_aCoord_mul`, Coordinates:123 | PASS | Nonzero g discharges cancellation; no zero-denominator reliance. |
| Determinant support | `det2_self`, Coordinates:130 | PASS | Alternating determinant identity. |
| p3:coordinates decomposition | `eq_aCoord_smul_add_bCoord_smul`, Coordinates:135 | PASS | Full two-dimensional coordinate identity for nonzero g. |
| p3:coordinates | `coordinates`, Coordinates:151 | PASS | Exact chart, open positive-longitudinal domain and C¹ regularity; stronger centre range c∈U rather than only closure B'. |
| p3:slope-ray | `slope_ray`, Coordinates:193 | PASS | Exact positive ratio, iff identity, and max-norm ratio on positive rays. |
| p3 chart derivative | `fderiv_chartM_apply`, Chart:46 | PASS | Quotient derivative at c, numerator zero, denominator g·g>0; stronger centre range c∈U. |
| p3 chart Jacobian | `jac2_chartPhi`, Chart:89 | PASS | `-det borderedHessian/(g·g)`, exact sign and q; stronger centre range c∈U. |
| IFT linear algebra | `bijective_of_jac_ne_zero`, Chart:113 | PASS | Nonzero 2×2 determinant gives kernel bottom and range top; no inverse/IFT conclusion assumed. |
| **bpI:p3:chart** | **`chart`, Chart:148** | **PASS WITH NOTES** | Exact design type; arbitrary prescribed open neighbourhood; C¹ inverse and both identities on actual image. Forward C¹ follows from `coordinates` and W⊆chartDom. Note N1 below. |
| p3 first coordinate | `contDiffOn_realPart`, Chart:217 | PASS | C¹ real restriction on U, independent of chart inverse. |
| Rectangular window support | `exists_window`, Chart:222 | PASS | Positive closed product window inside arbitrary open V containing (e,0), using product max metric. |
| p3:patch existence | `exists_isPatch`, Chart:234 | PASS | Produces all twenty IsPatch fields, including actual chart identities and strict P3 bounds. |
| **bpI:p3:cover** | **`cover`, Chart:294** | **PASS WITH NOTES** | Exact design type; finite actual centres, each in closure B', actual IsPatch witnesses and covering balls. No f, ε, initial point or energy occurs in its inputs. Notes N1–N2. |

## Binder and premise audit

The carrier is always `Fin 2 → ℝ`, its complex analogue, or `ℝ × ℝ` for the chart image; the product/max norm agrees with the blueprint convention. There is no `EuclideanSpace` substitution. The dot product used in q and det is the blueprint's Euclidean dot product, not a change to the max norm.

Shared input expansion: `HeadData` at `KAM/Iso/Confinement/Setting.lean:79` extends `BaseData` at :71. Each row below is one leaf logical input, not a conclusion bundle. STANDING refers to blueprint `bpI:p3:setting` and the identical I-HEAD premises; these are also explicit SOURCE premises of frozen I-HEAD.

| Expanded binder | Bin | Source / ruling |
|---|---|---|
| `hd.hs : 0 < s₀` | STANDING | p3:setting; frozen I-HEAD `hs` |
| `hd.hr : 0 < r₀` | STANDING | p3:setting; frozen `hr` |
| `hd.holo` | STANDING | h holomorphic on actionNbhd; frozen `hh` |
| `hd.real` | STANDING | h real on real U; frozen `hhreal` |
| `hd.isOpen` | STANDING | B open; frozen `hB` |
| `hd.bounded` | STANDING | B bounded; frozen `hBb` |
| `hd.nonempty` | STANDING | B nonempty; frozen `hBne` |
| `hd.iso` | STANDING | bordered determinant nonzero on real U; frozen `hiso`, D19 Q3 |
| `hd.isOpen'` | STANDING | B' open; frozen `hB'` |
| `hd.compact` | STANDING | closure B' compact; frozen `hcompact` |
| `hd.inside` | STANDING | closure B'⊆B; frozen `hinside` |
| `hd.hη` | STANDING | η>0; frozen `hη` |
| `B : Set (Fin 2 → ℝ)` | TYPING | p3:setting |
| `s₀ : ℝ` | TYPING | p3:setting |
| `r₀ : ℝ` | TYPING | p3:setting |
| `h : (Fin 2 → ℂ) → ℂ` | TYPING | p3:setting, total ambient function restricted by holo/real |
| `B' : Set (Fin 2 → ℝ)` | TYPING | p3:setting |
| `η : ℝ` | TYPING | p3:setting |
| `chart.c : Fin 2 → ℝ` | TYPING | p3:chart centre |
| `chart.hc : c ∈ closure B'` | SOURCE | p3:chart line 159 |
| `chart.N : Set (Fin 2 → ℝ)` | TYPING | prescribed neighbourhood, line 161 |
| `chart` inner premise `IsOpen N` | SOURCE | open prescribed neighbourhood, line 161 |
| `chart` inner premise `c ∈ N` | SOURCE | neighbourhood of c, line 161 |
| `cover.hne : B'.Nonempty` | STANDING | p3:setting: “We assume B'≠∅”; needed also by compact/exists_isPatch |

Counts, expanding shared data and including prescribed-neighbourhood inputs: **chart: SOURCE 3, STANDING 12, TYPING 8, RULED 0, EXCESS 0**. **cover: SOURCE 0, STANDING 13, TYPING 6, RULED 0, EXCESS 0**. Existential outputs and variables inside their defining properties are witnesses/conclusion clauses, not additional assumptions.

Remaining helper logical inputs, in addition to shared HeadData where present:

| Declaration(s) | Expanded additional logical inputs | Bin / source |
|---|---|---|
| `isOpen_realAct_charts`, `continuous_aCoord`, `det2_self`, `borderedHessian_det_eq` | none | TYPING data only |
| `subset_realAct_charts` | `0<r₀` | STANDING, p3:setting |
| `contDiffOn_frequencyMap`, `continuousOn_fderiv_frequencyMap`, `continuousOn_borderedHessian`, `continuousOn_norm_inv`, `contDiffOn_realPart` | none beyond expanded HeadData | STANDING as above |
| `continuousOn_inv_of_det_ne_zero` | `[Fintype ι]`, `[DecidableEq ι]`, `[TopologicalSpace X]`; `ContinuousOn A S`; `∀x∈S,(A x).det≠0` | First three TYPING; last two SOURCE for generic Cramer's-rule helper, p3:ext-cramer usage |
| `frequencyMap_ne_zero_of_det_ne_zero`, `inv_ne_zero_of_det_ne_zero` | determinant nonzero | SOURCE, p3:det-identity(a) / nonsingular-inverse helper |
| `compact` | `B'.Nonempty` | STANDING, p3:setting |
| `hessR_transpose`, `det_identity`, `coordinates`, `fderiv_chartM_apply`, `jac2_chartPhi` | centre/point membership in U | SOURCE, corresponding source local assertions; centre membership is weaker than closure B' for coordinates/chart derivative helpers |
| `dotProduct_self_pos`, `dotProduct_eq_aCoord_mul`, `eq_aCoord_smul_add_bCoord_smul` | `g≠0` | SOURCE, p3:coordinates q>0 |
| `slope_ray` | `g≠0`, `0<aCoord g w`, `0<aCoord g w'` | SOURCE, p3:slope-ray |
| `bijective_of_jac_ne_zero` | displayed nonzero 2×2 determinant of L | SOURCE, generic linear-algebra helper for p3:ext-ift |
| `exists_window` | `IsOpen V`, `(e,0)∈V` | SOURCE, p3:cv-local |
| `exists_isPatch` | `B'.Nonempty`, `c∈closure B'` | STANDING then SOURCE, p3:setting / cv-local |

All other helper binders are scalar/vector/function/set/index data in the displayed declarations, classified TYPING. The private determinant expansion has `R : Type*` and `[CommRing R]` (TYPING), and an arbitrary matrix A (TYPING), with no logical premise. Across the helpers: **RULED 0, EXCESS 0**. No instance carries a desired analytic theorem. A nonzero determinant is an upstream algebraic premise for the generic helper, not an assumed chart inverse; `chart` proves the determinant condition itself from `hd.iso`.

## Definitions and F2

No public definition/abbreviation/structure is added by I3-2, and none is added by Constants. The only definition in the required diff is Coordinates:40, private `sumFin3`.

| Object | Classification and body check |
|---|---|
| private `sumFin3` | Literal finite reindexing equivalence `Fin 2 ⊕ Unit ≃ Fin 3`; inl a maps to a, inr () maps to 2. The conditional inverse splits the genuine three-element carrier, with both inverse laws proved by cases. It is not a junk-value fallback. |
| existing `realAct`, `realPart`, `frequencyMap`, `borderedHessian` | Literal real-slice/function/derivative/matrix definitions. The derivative coordinates used by `jac2_chartPhi` unfold to these exact bodies. |
| existing `perp`, `det2`, `aCoord`, `bCoord`, `slope`, `hessR`, `chartDom`, `chartM`, `chartPhi`, `jac2` | Literal formulas. Division is total in Lean, but every cancellation and IFT use is on the positive-longitudinal domain or at g≠0; no off-domain value establishes the source result. In particular q>0 is proved, not assumed as an extra chart premise. |
| existing `dB`, `eta1`, `sSet`, `mhConst`, `MgConst`, `ShConst` | Literal infimum/supremum/minimum/thickening formulas. `compact` proves separation and bounds on the nonempty compact source setting before I3-2 uses them. No empty-set default enters patch construction. |
| existing `HeadData` | Source standing-assumption structure, fully expanded above. No chart/patch existence or analytic estimate is bundled as a field. |
| existing `IsPatch` | Literal source patch predicate with twenty fields: centre membership; open W; W in chartDom/B/small ball; both forward C¹ coordinates; open V; C¹ inverse and inverse identities; positive three widths; Q containment; radius bound; ball containment and both strict bounds. `cover` produces it; it is not a premise replacing cover. |
| existing `IsPatch.toEnergyPatch` | Literal field-by-field adapter. Its centre is c and its m field is **definitionally** `chartM h c`; all chart/inverse/window fields come from hp. Signed ray-slope inputs are source data for the adapter, not assumptions of `cover`. |

For private `sumFin3`: **BODY_MATCH OK; PUBLIC_CARRIER OK (private, exact finite carrier); WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS**. The relevant pre-existing literal definitions/predicate/adapter likewise have BODY_MATCH and PUBLIC_CARRIER OK, with the other fields N/A_LITERAL/N/A. None is an object defined by a unique characterization.

`choose!` in `cover` selects witnesses from **proved** `exists_isPatch hd hne hc`. The source asks for existence of a finite cover, not a canonical or uniquely characterized one; no choice independence is needed. Total values of W/Ψ/width functions away from selected centres are never used in the conclusion.

F2 check: `cover` returns IsPatch at each selected centre, and IsPatch.c_mem retains membership in closure B'. `chartM h c` occurs in the predicate itself, so coordinate negation/swap cannot silently replace this coordinate. An elaborated adapter probe proved `p.m = chartM h p.c` by `rfl`, retained `p.c∈closure B'` by `hp.c_mem`, and retained `p.W⊆chartDom h B r₀ p.c` by `hp.W_dom`. The generic EnergyPatch carrier still does not store the last two properties internally; the present result retains the original hp witnesses. Future `tori` must preserve the strengthened design's outer metadata and fixed rays; this audit does not certify that later theorem.

## Proof audit and adversarial pass

1. **Derivative and determinant.** At c the numerator of slope is det(g,g)=0; the product/reciprocal derivative therefore leaves `det(g,Dg v)/(g·g)`. The denominator is positive from the proved nonzero gradient. `jac2_chartPhi` uses exact coordinate derivatives of realPart and the literal Dg matrix and proves the bordered identity by algebra. An explicit sign check at g=(1,0) gives jac=H22 and bordered determinant=-H22, matching `-det/q`.
2. **Invertibility.** `bijective_of_jac_ne_zero` solves the two linear equations for kernel coefficients; equal finite dimensions then give surjectivity. `chart` builds a continuous linear equivalence and applies Mathlib's C¹ inverse function theorem. It restricts both the source and the inverse's C¹ neighbourhood; `himg` identifies the resulting open image, and both inverse laws are proved on that actual image. Merely having a global arbitrary Ψ would not suffice; the membership and inverse identities are checked.
3. **Patch.** Nonempty compact-source separation gives η₁>0. The η₁/4 ball around c is inside S⊆B. The chart is restricted to this ball. `exists_window` uses a smaller closed max-norm rectangle in the open image. The minimum of three continuity/open-set radii and η₁/4 is positive and proves the three required strict P3 inequalities/containment. No estimate is an input premise.
4. **Cover and constants.** The balls around every c∈closure B' form neighbourhoods with positive radii. `hd.compact.elim_nhds_subcover` yields a finset of centres **from closure B'**, and hp is retained at each selected centre. All existential family choices precede perturbations because no f or ε occurs in the theorem at all.
5. **Refutation targets.** I separately tried lost forward continuity, wrong determinant sign, zero denominator, an empty B' default, centres outside closure B', arbitrary swapped m, loss of inverse smoothness when restricting W, and a hidden f-dependent family. Each is excluded by the exact fields/proofs just described. No material finding survived. This was a separate adversarial reread by this independent auditor; no additional reviewer is claimed.

## Notes and suspected defects

**N1 — handoff wording, nonblocking.** `I3-2-handoff.md:4` says “a C¹ diffeomorphism onto an open rectangle”. The actual blueprint at :160 says “onto an open set with C¹ inverse”, and :182 puts the closed rectangular window Q **inside** that image. The code proves exactly those two source assertions. It does not assert that the originally returned V itself is rectangular. Refutation: read the actual blueprint and both design signatures, and inspect `exists_window`; a rectangular restriction can be obtained from a window's interior if later needed. Thus this wording is not a weakened source contract and requires no package code change.

**N2 — inherited I3-1 and integration scope, nonblocking.** The required branch diff includes I3-1 prerequisites. Their twenty public theorem statements, proof bodies, axiom closures and kernel replay are included here; this report does not claim that other I3-1 audit campaign status was changed. The root-import freshness exception is permitted by the brief. A node-level infrastructure PASS does not prove/seal I-HEAD or I-G1.

**Procedural deviation.** The first lint invocation was left running when the standalone probe was launched; its internal ABI Lean invocation was not serialized with that probe. I had not accounted for lint launching Lean. Both completed, but this did not meet the requested serial-check constraint. I reported this during the turn, then reran the complete lint command with `LEAN_NUM_THREADS=1` and `nice -n 5`, waited for its exit, and only then launched kernel replay. All explicit build/probe/kernel commands used `LEAN_NUM_THREADS=1`; the first bare lint invocation did not explicitly set it. No check result or source was altered to hide the deviation.

No suspected mathematical erratum in the audited blueprint or frozen definitions was found. The external HL19/Chi05 source PDFs were not re-audited: these chart/cover statements and proofs are explicitly our derived blueprint results. No source or definition deviation was introduced by this audit.

## Verification receipts

All later Lean work was run sequentially with `LEAN_NUM_THREADS=1`, default heartbeat settings, and nice priority 5. No dependency/source edits or clean rebuild were performed.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i32 KAM.Iso.Charts.Chart
```

Exit **0**. Gate: `[inp-gate] slot 1 acquired 02:27:02 for KAM.Iso.Charts.Chart`. Output:

```text
⚠ [2841/2865] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
Build completed successfully (3248 jobs).
```

The existing unused-section-variable warning is unrelated to this package; no linter option was changed.

### Exact-type / adapter probe and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I32Audit.lean
```

Exit **0**, no errors or warnings. The two examples copied the **complete types** of `chart` and `cover` from the design signature blocks, changed the command names to `example`, and replaced `:= sorry` with `:= by exact KAM.Iso.Charts.chart hd hc` / `:= by exact KAM.Iso.Charts.cover hd hne`. Thus every explicit argument is applied in order at the independent design type, without using `type_of%` to hide a discrepancy. The additional adapter probe was:

```lean
example {r₀ η₁ δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)}
    {Ψ : ℝ × ℝ → Fin 2 → ℝ} (hp : IsPatch h B r₀ B' η₁ c W Ψ δE δm ρc)
    (mp mm : ℝ) (hmp : mp ∈ Ioo (δm / 2) δm) (hmm : mm ∈ Ioo (-δm) (-(δm / 2))) :
    (hp.toEnergyPatch mp mm hmp hmm).m = chartM h (hp.toEnergyPatch mp mm hmp hmm).c ∧
    (hp.toEnergyPatch mp mm hmp hmm).c ∈ closure B' ∧
    (hp.toEnergyPatch mp mm hmp hmm).W ⊆ chartDom h B r₀ (hp.toEnergyPatch mp mm hmp hmm).c :=
  ⟨rfl, hp.c_mem, hp.W_dom⟩
```

For **each of the 28 names in the statement ledger**, the probe ran `#print axioms KAM.Iso.Charts.<name>`. Each output was exactly of this form, with its corresponding name:

```text
'KAM.Iso.Charts.chart' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.cover' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No export had `sorryAx` or a project axiom. There is no provider export in this package.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Charts.Chart KAM.Iso.Charts.Coordinates KAM.Iso.Charts.Constants > .lake/abi-scratch/I32Kernel.out 2>&1
```

Exit **0**. Complete output:

```text
replaying KAM.Iso.Charts.Constants
replaying KAM.Iso.Charts.Coordinates
replaying KAM.Iso.Charts.Chart
```

This is one invocation with all three module names; no separate concurrent replay was launched.

### Lint and static checks

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the explicitly allowed generated-root exception. Complete substantive output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (354 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output apart from Git's multiple-merge-base warning. `git diff --check inp...HEAD`: exit 0, same warning only. Files have **183 / 248 / 304** total lines respectively; all are below the 1500-code-line cap and have copyright, `module`, public imports, module docstring and `public section`. The new private equivalence has no downstream unfolding API requirement.

The forbidden-token/option scan of all three files found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace`, `set_option`, or resource override. A recursive local-import scan reached 91 repository modules and found **zero provider or frozen-theorem imports**. Definitions imported from `KAM/Frozen/**/Defs` are permitted and were not confused with draft theorem imports.

## Closeout

All 28 public declarations and the one new private definition are classified. Both package nodes pass statement and proof review; the exact design-type and F2 term probes pass; the targeted build and kernel replay exit 0; axiom closure is standard foundations only. Lint has only its allowed generated-root exception. No material open finding or proposed code repair remains in this package audit.

The source hashes were rechecked at closeout and match frozen-v1. The temporary `I32Audit.lean` and `I32Kernel.out` files were deleted from `.lake/abi-scratch/`. The report passed whitespace checking. Only this report was created as the audit deliverable; the pre-existing handoff remains untouched.

Uncertainties/limits: no claim about external PDF fidelity beyond the local blueprint, later fixed-ray/tori consumers, complete I3-1 campaign closure, or a frozen root proof. The serial-execution deviation above remains part of this receipt despite the corrected rerun. **Final package verdict: PASS WITH NOTES; frozen I-HEAD proof status: FROZEN_UNPROVED.**
