# P5-1 independent package audit

**Overall verdict: PASS WITH NOTES.** All six public results pass mathematical, statement-fidelity, axiom and kernel checks. No package proof defect or extra premise was found. Repository-wide lint has inherited line-length failures in addition to the expected stale generated root; therefore a clean global hygiene gate is not certified. P5-1 is helper infrastructure, with no frozen anchor/provider to seal. I-HEAD remains `DRAFT_SORRY`.

Audit date: 2026-10-28. Report destination is this worktree, as expressly required by the user, overriding the brief's generic main-worktree destination. Authorized repository changes: this report only; temporary probes under `.lake/abi-scratch/`, removed after checking. No source repairs, commits or other state-changing git operations.

## Scope and immutable inputs

- Package HEAD: `2ef244cd53509382ee376e6268781554e2dcdc21`.
- Initial `inp` ref: `fc4fc7903e71a0c4318d6fcef676344bca82d7c7`; `inp` advanced concurrently. The requested triple-dot comparison has merge base `370c0bac661297ae63552bb547c97bdf1b18cb0c`; it remains exactly one added file, `KAM/Iso/Confinement/PatchConst.lean`, 147 lines. A direct two-endpoint comparison with the advancing `inp` would incorrectly include unrelated work.
- Read the package audit brief, AGENTS, PLAN, DECISIONS, P5-1 handoff, current design §0/§1/§8.1/§8.2 and Appendix A, raw blueprint Part 5 patch/threshold sections and Part 3 chart/patch/ray/uniform-constant statements, track-I statement and I-HEAD frozen type/manifest identity. The two referenced design audit reports are absent under this worktree's `audits/`; their actual copies were read from `/root/code/KAM-inp/docs/tracks/I/design/PART58-design-audit-{1,2}.md`.
- The untracked `.drafts/design/IPart58Signatures.lean` is absent here. The tracked design Appendix A, lines 960–977, supplies all six exact signatures; whitespace-normalized extraction compares **MATCH** for each. Exact-type probes independently elaborate their applications.

| Input | SHA256 |
|---|---|
| `KAM/Iso/Confinement/PatchConst.lean` | `65ca2268ae8eab69930228124b6845f2870aa69421da40700f030370217461c4` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `2d4b0559c5247f6c89712e987ca3f3d7d9fa1a43f0f1117d265d40150f930a98` |

I-HEAD identity: `iso.all_time_confinement.v1`, export `KAM.Iso.all_time_confinement`, ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`. No P5-1 theorem is this anchor's provider. Provider/frozen type equality and seal-body probes are **N/A** for this package; importing that sorry-bearing anchor would not establish P5-1 independence.

## Declaration ledger

Names below are in `KAM.Iso.Confinement`; line numbers refer to the pinned package file.

| Blueprint node | Declaration | Line | Verdict | Evidence |
|---|---|---:|---|---|
| `bpI:p5:sec-patch` | `EnergyPatch.K_eq_image` | 36 | PASS | Both inverse identities used on their guarded domains; preserves `I ∈ W`. |
| `bpI:p5:sec-patch`, `patch-const(a)` | `EnergyPatch.isCompact_K` | 46 | PASS | Compact product of real closed intervals mapped by the continuous inverse on `Q ⊆ V`. |
| `bpI:p5:sec-patch` | `EnergyPatch.isOpen_Omega` | 51 | PASS | Relative continuity on open `W`; intersection with inverse image of open product intervals. |
| `bpI:p5:sec-patch` | `EnergyPatch.Omega_subset_K` | 56 | PASS | Both strict intervals included in their closed counterparts, with the same `W` guard. |
| `bpI:p5:patch-const` | `patchConst_exists` | 63 | PASS WITH NOTES | All 11 fields proved; existential sufficient bounds implement the documented design departure from literal extrema. |
| Internal finite-minimum step | private `exists_pos_le_finite` | 98 | PASS | Finite-set induction; empty case chooses positive cap `c`, insertion uses `min`. No assumed common bound. |
| `bpI:p5:eps0` | `exists_eps0` | 113 | PASS WITH NOTES | Positive threshold for one finite family, preceding `ε`; all seven Smallness clauses follow. Existence/bounds rather than equality to a literal minimum, as designed. |
| I-HEAD anchor | `KAM.Iso.all_time_confinement` | frozen file | N/A: FROZEN_UNPROVED | Outside this helper package; no seal or root closure claimed. |

## Expanded premise audit

All source locators below are files at the pinned package HEAD. `P3` means `blueprint-I/parts/p3-iso-local-charts.tex`; `P5` means `blueprint-I/parts/p5-confinement.tex`. `STANDING` means the named Part-3 patch data already fixed by P5 lines 64–66, not results of P5 assumed as inputs. Ambient finite-dimensional norm/properness instances are Mathlib instances, not new logical hypotheses.

Each of the first five public declarations has outer binders `{hR, B, η₁}` (TYPING) and `p : EnergyPatch hR B η₁`. Expand that bundle as follows; each field is listed, including unused fields. No compactness of `K`, derivative bound, patch constant or threshold is hidden in it.

| Expanded binder/field | Bin | Source |
|---|---|---|
| `hR` | TYPING | P5 64–65: real chart energy coordinate; arbitrary real function is a generalization. |
| `B` | TYPING | P3 chart domain; ambient `Fin 2 → ℝ`. |
| `η₁` | TYPING | P3 P1/P3 window parameter. |
| `p.c` | TYPING | P3 178. |
| `p.W` | TYPING | P3 159–161. |
| `p.m` | TYPING | P3 chart slope coordinate. |
| `p.Ψ` | TYPING | P3 160,185: chart inverse. |
| `p.δE` | TYPING | P3 178,182. |
| `p.δm` | TYPING | P3 178,182. |
| `p.ρc` | TYPING | P3 178,183. |
| `p.mPlus` | TYPING | P3 232–239. |
| `p.mMinus` | TYPING | P3 232–239. |
| `p.δE_pos` | STANDING | P3 178. |
| `p.δm_pos` | STANDING | P3 178. |
| `p.ρc_pos` | STANDING | P3 178. |
| `p.isOpen_W` | STANDING | P3 159–161. |
| `p.W_subset_B` | STANDING | Part-3 chart inside the real action domain; P5 64–65 and design §1.1. |
| `p.W_subset_ball` | STANDING | P3 181 (P1). |
| `p.hR_contDiffOn` | STANDING | P3 160–174, C¹ chart. |
| `p.m_contDiffOn` | STANDING | P3 160–174, C¹ chart. |
| `p.isOpen_V` | STANDING | P3 160. |
| `p.Ψ_contDiffOn` | STANDING | P3 160. |
| `p.Ψ_mem` | STANDING | P3 160,185: inverse maps V into W. |
| `p.Ψ_left` | STANDING | P3 160,185: inverse on W. |
| `p.Ψ_right` | STANDING | P3 160,185: inverse on V. |
| `p.Q_subset` | STANDING | P3 182 (P2). |
| `p.ρc_le` | STANDING | P3 183 (P3). |
| `p.ball_subset` | STANDING | P3 183 (P3). |
| `p.ball_h` | STANDING | P3 183 (P3). |
| `p.ball_m` | STANDING | P3 183 (P3). |
| `p.mPlus_mem` | STANDING | P3 237. |
| `p.mMinus_mem` | STANDING | P3 237. |

Counts per first-five declaration after expanding `p`: SOURCE 0, STANDING 20, TYPING 12, RULED 0, EXCESS 0. The geometry results actually need only a subset of this common standing bundle. They do not require that a particular Part-3 patch producer has already been proved.

`exists_eps0` has the following outer input binders; `EnergyPatch` in the element type describes the objects of the finite family, not an additional assumed result.

| Binder | Bin | Source |
|---|---|---|
| `hR` | TYPING | As above. |
| `B` | TYPING | As above. |
| `η₁` | TYPING | As above. |
| `patches` | TYPING | P5 82: finite index family; represented as a set of patches. |
| `hfin` | SOURCE | P5 82, finite family from P3 cover. |
| `ε₁` | TYPING | P5 80. |
| `C_K` | TYPING | P5 80. |
| `F₁` | TYPING | P5 80. |
| `ρinf` | TYPING | P5 80. |
| `h₁ : 0 < ε₁` | STANDING | P3 365. |
| `h₁' : ε₁ ≤ 1` | STANDING | P3 365. |
| `hC : 0 < C_K` | STANDING | P3 360–362 positive uniform closeness constant. |
| `hF : 0 < F₁` | STANDING | P3 derivative constant; P5 80. |
| `hρ : 0 < ρinf` | STANDING | P3 constants: positive strip radius, `s/8`. |

Counts: SOURCE 1, STANDING 5, TYPING 8, RULED 0, EXCESS 0. Inner result binders: `p` and `ε` are TYPING, membership `p ∈ patches` and `0 ≤ ε`, `ε < ε₀` are SOURCE restrictions (P5 82–84 and the standing nonnegative perturbation size). Witnesses `ε₀,r,Lm,LΦ,κ` are produced. In particular, `ε₀` is outside both universal quantifiers; patch constants are outside the universal `ε`. No perturbation, initial point, or energy appears before their choice.

The private induction lemma's inputs are `{α,S}`, `b`, `{c}` (TYPING, 4), finite `S`, pointwise positivity `hb`, and positivity `hc` (SOURCE to this explicit elementary helper, 3). STANDING/RULED/EXCESS: 0. This helper is applied to proved positive patch bounds, rather than being an extra premise of `exists_eps0`.

## Constants and refutation checks

`PatchConst` is expanded at Setting lines 154–165. Every field is substantive:

- `r_pos`, `r_le_one`, `thick_subset`: compact `K ⊆ W`, with W open, supplies `δ > 0` whose closed thickening lies in W; `r = min δ 1` retains that inclusion. `Fin 2 → ℝ` is proper, hence this closed thickening is compact.
- `Lm_ge`, `Lm_bound`: C¹ on open W makes the actual Fréchet derivative continuous there; compactness gives a finite bound `C₁`, and `Lm = max 1 C₁` bounds it on the entire thickening. There is no appeal to the total derivative's zero value outside a differentiability locus.
- `LΦ_ge`, `LΦ_bound`: the same argument on compact Q, inside open V, bounds the actual derivative of Ψ by `LΦ = max 1 C₂`.
- `κ_pos`, `κ_le_quarter`, `κ_le_plus`, `κ_le_minus`: the chosen minimum of three strictly positive numbers has all required bounds. Positivity uses the strict upper endpoint for mPlus and lower endpoint for mMinus, with the correct minus/plus signs.

The probe additionally proved `p.K.Nonempty`: `(hR p.c, 0) ∈ Q`, so its Ψ-image lies in K. Thus derivative bounds are not certified merely because their domains were empty. The thickening contains K. The inverse image/image proof checks Q_subset before using Ψ_right, and uses Ψ_left only on W.

For the threshold, the five terms of local `b p` (lines 118–120) are positive since `C_K,F₁,Lm,LΦ,r,κ,ρinf,δE` are positive. The finite induction chooses `0 < e ≤ ε₁` and `e ≤ b p` simultaneously for every family member. From `ε < e`, all five local bounds are strict. Multiplying through positive denominators yields exactly `ε < δE/4`, `8 C_K ε < ρinf`, `C_K ε < r`, `Lm C_K ε < κ`, `2 F₁ LΦ ε < 1`; nonnegativity is passed through, and `ε < e ≤ ε₁ ≤ 1` gives the seventh clause. The endpoint `ε = 0` is admitted. A probe instantiated the complete theorem on the empty family with all four global constants equal to 1; no nonempty-index assumption is required.

## Definitions and documented deviations

**New def/abbrev/structure inventory: none.** Local `b` is the explicitly displayed finite minimum in an existential proof; `choose` selects from the proved `patchConst_exists` for each patch. No globally defined characterized object or uniqueness claim is exported, so no choice-independence theorem is required.

Rechecked meaning-carrying inherited definitions in Setting (unchanged from the merge base): Q and O are literal closed/open boxes, K and Omega are chart preimages restricted to W, PatchConst is the stated conjunction of 11 quantitative bounds, Smallness is the stated conjunction of seven consequences. BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS/CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS for these literal definitions/predicates. EnergyPatch is a projection of the named Part-3 chart/ray data, not a claim that Part 3 is proved.

There is a deliberate source-to-design change, not a literal identity: P5 lines 70,72–73 say `r := min {1, distance/2}` and define the derivative constants by maxima; line 82 defines ε₀ by a particular minimum. The design §0 item 4 (lines 39–43), B5 and Appendix A replace these formulas by existential sufficient bounds. This implementation follows that design exactly; it does **not** establish equality to the blueprint's named numerical choices. Its κ witness does equal the blueprint minimum. This departure preserves every estimate used here and is reported explicitly rather than silently treating upper bounds as extrema.

No new pinned-source defect was found. The missing untracked signature file and displaced design-audit paths are evidence-location limitations; the tracked Appendix and independent probes cover the package contracts. Prior design-audit issues about RealHam, Separation and Part-3/root closure are outside this package and are not discharged by it.

## Verification evidence

Commands ran from `/root/code/KAM-inp-p51`. Build, probe and kernel replay are independent reruns, not prover receipts.

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p51 KAM.Iso.Confinement.PatchConst`

   Exit 0. Output: `[inp-gate] slot 1 acquired 00:57:18 for KAM.Iso.Confinement.PatchConst`; inherited replay warning `KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused ... [NormedSpace ℝ E]`; `Build completed successfully (2917 jobs).` The gate runs `nice -n 5 lake build` internally. No warning from PatchConst.

2. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.PatchConst`

   Exit 0. Exact output: `replaying KAM.Iso.Confinement.PatchConst`.

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P51Audit.lean`

   Exit 0. Six exact public-type applications, the nonempty-K proof and empty-family instantiation all elaborated. The only output was:

```text
'KAM.Iso.Confinement.EnergyPatch.K_eq_image' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.EnergyPatch.isCompact_K' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.EnergyPatch.isOpen_Omega' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.EnergyPatch.Omega_subset_K' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.patchConst_exists' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.exists_eps0' depends on axioms: [propext, Classical.choice, Quot.sound]
```

4. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`

   Exit 1. Exact completed output:

```text
Lean lines over 100 characters:
/root/code/KAM-inp-p51/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-p51/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-p51/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-p51/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (272 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

   The four line-length errors are inherited: Orbit is byte-identical to the pinned merge-base file, and `git diff inp...HEAD -- KAM/Kepler/Orbit.lean` is empty. They are outside the package delta but exceed the brief's stale-root-only exception. The appropriate integration follow-up is baseline cleanup by its owner; this read-only audit made no repair. PatchConst itself has no overlong line. Frozen guards and all 144 ABI hashes passed.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty. `git diff inp...HEAD --check`: exit 0, no output. Recursive source-import inspection found 36 project modules and **zero** frozen theorem or provider imports. The only direct import is Setting; frozen definitions are permitted. No forbidden proof escape, resource override, ambient EuclideanSpace, or new instance occurs in the added module. Copyright, module command, public import, module docstring and public section are present; 147 total lines is below 1500.

Audit-process deviation: the first lint attempt was started alongside the gated build before recognizing that the lint script's final ABI check itself launches Lean. That ABI child was terminated; its partial output is not validation evidence. The completed lint rerun above uses one thread and inherited niceness and runs after the build, kernel replay and probe. This records the brief initial overlap rather than claiming perfect process serialization. Other worktrees' processes were not changed.

Only the requested report is a new audit artifact; the pre-existing untracked handoff is preserved. No downstream theorem is declared proved or seal-ready by this audit.
