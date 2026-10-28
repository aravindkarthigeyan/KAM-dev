# P5-6 independent audit 1

Verdict: **PASS WITH NOTES** for package P5-6 (`bpI:p5:mu`). All four public helpers pass statement, proof and axiom review. The repository-wide lint has inherited failures described below. **I-HEAD is FROZEN_UNPROVED, not seal-ready**: this package supplies only the position lemma, not its provider or the confinement theorem.

## Scope and frozen inputs

Audited 2026-10-28, tier 2, read-only except this report and deleted scratch probes. Authority: `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, local AGENTS/PLAN/DECISIONS, and `P5-6-handoff.md` AUDIT FOCUS. The user's explicit absolute report path overrides the brief's generic main-worktree destination. No commits, source edits, or frozen edits were made.

Snapshot frozen-v1:

- HEAD: `f78f4775f7cd494d52e36fcf7f9d50440eaa5c7b`.
- Observed `inp`: `f56dab7c4b2a96d2fd66dd13f585d7e144927ae9`.
- Merge base: `370c0bac661297ae63552bb547c97bdf1b18cb0c`.
- `git diff inp...HEAD`: only `KAM/Iso/Confinement/Position.lean`, 105 added lines.
- The handoff was already untracked at entry; it was not changed.

| Input | SHA256 |
|---|---|
| `KAM/Iso/Confinement/Position.lean` | `42176dc1e7b0f181d26e1a025ba84b73d24081dfc9429b71649c4c27f5a437d3` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `2d4b0559c5247f6c89712e987ca3f3d7d9fa1a43f0f1117d265d40150f930a98` |
| `docs/tracks/I/audits/P5-6-handoff.md` | `f621396c3fd71ecbcc8d9f5c4192131df40a5cf523778d43ddd5f73a7b1d8d80` |

Acceptance criteria: inspect every added declaration; reconstruct the source assertions; expand `EnergyPatch`, `PatchConst`, `Smallness`, and `GraphData`; check exact signature compatibility and source composition; build, print axioms, replay kernel, run lint; preserve frozen files.

## Declaration results

All names below are in `KAM.Iso.Confinement`. Locators refer to frozen-v1.

| Node / step | Declaration | Verdict | Reason |
|---|---|---|---|
| `bpI:p5:mu` / `mu-lip` | `slope_close` (45–64) | PASS | Exact design signature (design 1191–1195); proves `|m(Y φ)-mσ| ≤ Lm*Cε`, specializing to `Cε=C_K*ε`. No extra premise. |
| `bpI:p5:mu` / `mu-order` | `slope_window_plus` (67–78) | PASS | Exact design signature (1197–1202); strict `δm/4 < μ+ < δm`, including outer endpoint. |
| `bpI:p5:mu` / `mu-order` | `slope_window_minus` (81–92) | PASS | Exact design signature (1204–1209); strict `-δm < μ- < -δm/4`, correct signs. |
| `bpI:p5:mu` / `mu-cont` | `slope_continuous` (95–101) | PASS | Exact design signature (1211–1215); continuity on all real angles, using chart-domain inclusion. |
| local geometry | private `closedBall_subset_cthickening` (40–42) | PASS | Each point of the closed ball has distance at most `r` from the exhibited point `I ∈ K`. |

The source statement at blueprint 137–143 says: “continuous on” all real angles and `|μ±-m±| ≤ Lm C_K ε < κ ≤ δm/4`, with both slopes in the open chart window. The two window theorems give its signed ordering. The strict middle bound is `Smallness.lt_kappa`, reassociated, and the last bound is `PatchConst.κ_le_quarter`. A compiled composition probe verifies the full chain and continuity together for the plus graph; the minus proof uses the identical generic estimate and corresponding scalar bounds.

`Cε` in `slope_close`/`slope_continuous` generalizes the source's product without changing its norm or constant. The helpers fix constants as parameters; they introduce no existential constants or wider constant dependence. All actions and angles use `Fin 2 → ℝ` with its max norm, not EuclideanSpace. `H`, `E`, graph energy, and several patch fields are unused here but belong to the blueprint's standing context and exact audited interface.

## Expanded hypotheses and definition classification

No new `def`, `abbrev`, `structure`, typeclass, instance or choice-defined object occurs in the diff. Definition classification of new objects: **none**. There is one private lemma and four public theorems. Inherited literal definitions used here are `P2` (product phase space), `EnergyPatch.Q` (closed rectangle), and `EnergyPatch.K = {I | I ∈ W ∧ (hR I,m I) ∈ Q}`. Their bodies match the patch/graph context on their full carriers. No junk/default branch or unproved choice is used. For these literal inherited objects: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS/CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A.

Binder inventory (each grouped list below enumerates only pure typing binders): `hR,B,η₁,p,r,Lm,LΦ,κ,H,E,Cε,Y,I,mσ,φ` for `slope_close` (16); same without `φ` for continuity (15); `hR,B,η₁,p,r,Lm,LΦ,κ,F₁,C_K,ε,ρinf,H,E,Y,I,φ` for each window (17). The ambient real/normed instances are canonical Mathlib typing data; there are no user-supplied instances. `p`'s logical fields are expanded below, rather than classified merely as typing data. `pc`, `G`, and `hsm` are also expanded below. `hCr : Cε ≤ r` is STANDING, from blueprint 142; the private lemma's `hI : I ∈ K` and `hCr` are STANDING from the same line.

Each row is one logical field, classified STANDING. References are to blueprint Part 5 unless Part 3 is specified. These are the upstream facts explicitly retained by the source's “Keep the notation” (131), not outputs claimed proved by P5-6.

| Expanded field | Bin | Source / meaning |
|---|---|---|
| `EnergyPatch.δE_pos` | STANDING | Part 3 patch, Part 5 64–65: positive chart width |
| `EnergyPatch.δm_pos` | STANDING | Same: positive slope width |
| `EnergyPatch.ρc_pos` | STANDING | Part 3 patch: positive initial ball radius |
| `EnergyPatch.isOpen_W` | STANDING | Part 3 chart domain |
| `EnergyPatch.W_subset_B` | STANDING | Part 3 chart patch |
| `EnergyPatch.W_subset_ball` | STANDING | Part 3 P1 / Part 5 confinement |
| `EnergyPatch.hR_contDiffOn` | STANDING | Part 3 C¹ chart coordinate |
| `EnergyPatch.m_contDiffOn` | STANDING | Part 3 C¹ chart coordinate; 71, 141–142 |
| `EnergyPatch.isOpen_V` | STANDING | Part 3 chart image; Part 5 65 |
| `EnergyPatch.Ψ_contDiffOn` | STANDING | Part 3 inverse chart; 73 |
| `EnergyPatch.Ψ_mem` | STANDING | Part 3 inverse maps into W |
| `EnergyPatch.Ψ_left` | STANDING | Part 3 inverse identity on W |
| `EnergyPatch.Ψ_right` | STANDING | Part 3 inverse identity on image |
| `EnergyPatch.Q_subset` | STANDING | Part 5 65: closed chart rectangle lies in image |
| `EnergyPatch.ρc_le` | STANDING | Part 3 patch radius / Part 5 confinement |
| `EnergyPatch.ball_subset` | STANDING | Part 3 initial ball in W |
| `EnergyPatch.ball_h` | STANDING | Part 3 P3 / Part 5 156 |
| `EnergyPatch.ball_m` | STANDING | Part 3 P3 / Part 5 156 |
| `EnergyPatch.mPlus_mem` | STANDING | Part 3 patch rays; 74, 143 |
| `EnergyPatch.mMinus_mem` | STANDING | Part 3 patch rays; 74, 143 |
| `PatchConst.r_pos` | STANDING | 68–71: patch radius |
| `PatchConst.r_le_one` | STANDING | 70: minimum with 1 |
| `PatchConst.thick_subset` | STANDING | 71: N ⊆ W |
| `PatchConst.Lm_ge` | STANDING | 72: maximum with 1 |
| `PatchConst.Lm_bound` | STANDING | 72: derivative bound on N |
| `PatchConst.LΦ_ge` | STANDING | 73: maximum with 1 |
| `PatchConst.LΦ_bound` | STANDING | 73: derivative bound for inverse |
| `PatchConst.κ_pos` | STANDING | 74: positive ray margin |
| `PatchConst.κ_le_quarter` | STANDING | 74: κ ≤ δm/4 |
| `PatchConst.κ_le_plus` | STANDING | 74: κ ≤ δm-m+ |
| `PatchConst.κ_le_minus` | STANDING | 74: κ ≤ δm+m- |
| `Smallness.nonneg` | STANDING | Standing perturbation size ε ≥ 0 |
| `Smallness.le_one` | STANDING | ε < ε₁ ≤ 1 (Part 3 constants) |
| `Smallness.lt_dE` | STANDING | 79–85: ε₀ minimum |
| `Smallness.lt_rho` | STANDING | 79–85: ε₀ minimum |
| `Smallness.lt_r` | STANDING | 79–85: C_K ε < r |
| `Smallness.lt_kappa` | STANDING | 79–85: Lm C_K ε < κ |
| `Smallness.lt_Phi` | STANDING | 79–85: energy-coordinate smallness |
| `GraphData.continuous` | STANDING | graph lemma (b), 98–100; used at 141 |
| `GraphData.near` | STANDING | graph lemma (b), 99; used at 142 |
| `GraphData.energy` | STANDING | graph lemma (c), 100 |
| `GraphData.base_mem` | STANDING | Part 3 base points; 142 |
| `GraphData.base_slope` | STANDING | Part 3 points; 142 |

Per public theorem, expanded logical bins: SOURCE 0, RULED 0, EXCESS 0; STANDING 37 for close/continuity (20 patch + 11 constants + 5 graph + hCr), STANDING 43 for each window (20 + 11 + 7 smallness + 5 graph). TYPING counts are listed above; nonlogical patch data (`c,W,m,Ψ,δE,δm,ρc,mPlus,mMinus`) are included within the typing datum `p`. All logical fields have been expanded, including unused ones. There is no premise asserting slope closeness, slope ordering, or continuity of `m ∘ Y`.

## Proof and adversarial checks

Read line by line, then tested the following possible failures:

- **Nonconvex thickening:** no convexity of N is assumed. The entire ball centered at I lies in N by the distance witness, so its convexity suffices for the mean-value inequality. This valid change from the blueprint's segment adds no premise.
- **Total derivative fallback:** differentiability is established at every ball point using C¹ regularity and openness of W (51–55); `fderiv` is not exploited outside its differentiability locus.
- **Negative or zero Cε:** `G.near φ` proves `0 ≤ Cε` (49). The zero-radius/ε=0 case is included. No extra positivity hypothesis is needed.
- **Strict endpoints / signs:** `≤ Lm C_K ε < κ`, `κ ≤ δm-m+`, and `κ ≤ δm+m-` give strict outer endpoints; the quarter margin and base ray intervals give strict inner endpoints. Both signs were checked independently against 143.
- **Continuity only on W:** all values of Y are proved to lie in W, so `ContinuousOn.comp_continuous` gives continuity on the whole angle carrier.
- **Hidden theorem inputs:** GraphData.near is the graph lemma's action estimate, not the slope estimate; PatchConst.Lm_bound is a derivative bound; Smallness.lt_kappa is a scalar choice of ε₀. None encodes the hard mean-value step.

No mathematical discrepancy survived these checks; no tentative blockers remain. No source erratum was identified. The ball-for-segment proof adaptation is the only substantive route deviation, already disclosed by the handoff and accepted here.

## Verification receipts

Build command (exit 0):

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p56 KAM.Iso.Confinement.Position
```

Output: `[inp-gate] slot 1 acquired 01:00:26 for KAM.Iso.Confinement.Position`; `Build completed successfully (2917 jobs).` One replayed upstream warning in `KAM.ODE.Exit:36` reports unused `[NormedSpace ℝ E]` in `gen_exit`. No error or package warning.

A Python extraction compared each header through `:=` against design 1191–1215 after whitespace normalization; all four printed `signature whitespace-normalised MATCH`. It generated `.lake/abi-scratch/P56Audit.lean`, importing only Position and elaborating fresh copies of all four design signatures with bodies `by exact slope_close p pc G hCr φ`, `by exact slope_window_plus p pc hsm G φ`, `by exact slope_window_minus p pc hsm G φ`, and `by exact slope_continuous p pc G hCr`, respectively. It also elaborated the source chain/continuity composition described above.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P56Audit.lean
```

Exit 0; exact axiom output:

```text
'KAM.Iso.Confinement.slope_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.slope_window_plus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.slope_window_minus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.slope_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Position
```

Exit 0. Output: `replaying KAM.Iso.Confinement.Position`.

Lint receipt follows below. The first invocation was plain `sh scripts/lint_sources.sh`. I discovered afterward that its ABI subcheck spawns `lake env lean`; that invocation overlapped other checks and lacked the requested inherited thread/nice settings. This was an audit execution deviation, not a source change. I then repeated the whole lint under `LEAN_NUM_THREADS=1 nice -n 5`, after the build, probes, and kernel replay had exited, with no other audit Lean process active. Other sessions on the host were observed and were not controlled by this audit.

Module/size/policy checks: Position is 105 lines, every line ≤100 characters; copyright, `module`, `public import`, module docstring and `public section` present. Its only direct import is Setting. No added definitions require exposure. No forbidden proof escape, resource override, provider import or frozen theorem import appears. The allowed-axiom output confirms no hidden sorry dependency. `git diff --check inp...HEAD` exits 0. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty.

Final serialized lint command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, exact output:

```text
Lean lines over 100 characters:
/root/code/KAM-inp-p56/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-p56/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-p56/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-p56/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (272 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The four long lines are inherited: `KAM/Kepler/Orbit.lean` has SHA256 `83bd08de8eb499ff2a939462ad13bbc67ad4541e4022a97e3160c236a5c8fe5a` at both HEAD and merge base. They are absent from the P5-6 triple-dot diff. This is an additional baseline lint failure beyond the brief's permitted stale-root exception, so a global lint PASS is not claimed. No repair was made outside the authorized report.

The live `inp` ref moved during this audit: the final observation was `b98cd15554964ba036bca2a03ae8d96a6462218a`. HEAD and the audited Position hash remained unchanged; comparisons are anchored to the recorded merge base and input revision rather than an assumed stationary branch name.

## Anchor status and closeout

Manifest entry `iso.all_time_confinement.v1` names frozen `KAM.Iso.all_time_confinement`, provider `KAM.Provider.Iso.all_time_confinement`, and state `DRAFT_SORRY`. The anchor's unchanged proof is `by sorry`. Its source-facing theorem is outside the package's delivered surface. Provider/frozen exact-type and seal-body tests are **not applicable to P5-6**; no provider is proposed here. This audit does not claim to reapprove the full I-HEAD declaration or its analytic/dynamical dependencies. The frozen guard and all 144 ABI comparisons protect the existing frozen surface.

All added declarations were inspected and classified; exact signatures, foundational axioms, build and kernel replay passed. Package acceptance is PASS WITH NOTES for inherited lint failures. There is no mathematical repair request, no suspected pinned-source defect, and no authority to mark I-HEAD sealed from these helpers alone. Scratch probes and logs were removed after recording their receipts. Only this report was created by the audit outside scratch.
