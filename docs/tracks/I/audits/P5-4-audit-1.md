# P5-4 independent audit 1

**Verdict: PASS WITH NOTES for package P5-4.** Both public lemmas are proved at their exact design types, with standard axioms only and successful kernel replay. No material mathematical or statement-fidelity defect was found. This is acceptance of the bounded helper package, **not seal-readiness of I-HEAD**. No provider or frozen theorem is implemented by this diff.

## Scope and frozen inputs

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-p54`.

- HEAD / snapshot v1: `868e1bbd03d8dfc32379b5330cdf658d414cce6d`.
- Comparison ref `inp`: `3a5a42751dcd6308d7f3c8eb922e72a47bf00a27`.
- `git diff inp...HEAD`: only `KAM/Iso/Confinement/Invariance.lean`, 107 added lines.
- Audited file SHA-256: `cd0caabc92d93712b4cf9156de4aee49036388c1b756ca780190e1f5c82012a2`.
- Design SHA-256: `2d4b0559c5247f6c89712e987ca3f3d7d9fa1a43f0f1117d265d40150f930a98`.
- `blueprint-I/parts/p5-confinement.tex` SHA-256: `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9`.
- `blueprint-I/parts/p3-iso-local-charts.tex` SHA-256: `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827`.
- `Setting.lean` SHA-256: `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2`.
- `RealHam.lean` SHA-256: `04d9b07067ab80f0091d38f5b1403766c95c2d9a2fdf16adc65028b853bf9450`.
- `KAM/ODE/Uniqueness.lean` SHA-256: `bbdf5cdf2991e25e1162f743a0239f47badc0e637d76febd2e696d3094937fcd`.

Read AGENTS.md, PLAN.md, DECISIONS.md, the external package audit brief, the handoff, track-I statement, relevant frozen definitions and I-HEAD anchor, blueprint invariance statement/proof, and design §8.1/P5-4 and its exact signatures. All locators below refer to snapshot v1. The user explicitly overrides the generic brief's main-worktree output destination: this report is written only in the requested package worktree. Read-only tier-2 correspondence/proof audit, followed by adversarial reconsideration and hygiene; no source repair, commit, or external action. Only scratch probes and this report were created. All audit Lean invocations were serialized and inherited `LEAN_NUM_THREADS=1`.

## Declaration ledger

All names below are in `KAM.Iso.Confinement`.

| Blueprint node / step | Declaration | Verdict | Evidence |
|---|---|---|---|
| Auxiliary positive strip width | private `rhoInf_pos`, line 39 | PASS | `min s₀ 1 / 8 > 0` follows from `s₀ > 0`; no override. |
| T2 at real points | private `torus_invarianceError_real`, line 45 | PASS | Expands the actual frozen `invarianceError = X_H ∘ K - DK ωt`, using real-strip membership. |
| `stepI:p5:inv-sol` | `torus_flow`, line 53 | PASS | Exact design signature, design lines 1138–1142; all-real-time trajectory, correct real Hamiltonian and frequency. |
| Open uniqueness domain | private `isOpen_prod_realAct'`, line 72 | PASS | Product of open sets; harmless duplication of an existing private helper. |
| `stepI:p5:inv-incl`, `stepI:p5:inv-uniq`, `bpI:p5:invariance` per torus | `torus_invariant`, line 78 | PASS WITH NOTES | Exact design signature, lines 1146–1151; inclusion and invariance of one torus. The union follows from the existing `KAM.ODE.isInvariantSet_union`; no full confinement/union assembly is claimed by this module. |

Neither lemma is a provider export. Frozen/provider equality and frozen seal-body probes are therefore **N/A for this diff**, rather than unchecked successes. The two explicit-binder design applications were elaborated instead (see checks).

Related anchor `iso.all_time_confinement.v1`, export `KAM.Iso.all_time_confinement`, is manifest-state `DRAFT_SORRY`; its source pin is `KAM-dev@b1422e0 docs/tracks/I/statement.md (draft v0.1, D19)`, §I-HEAD. It stays **FROZEN_UNPROVED, not seal-ready**. This audit neither approves a new anchor nor promotes that anchor's proof status.

## Statement and expanded-binder audit

The source statement at `blueprint-I/parts/p5-confinement.tex:108` says “$\mathcal T_\pm\subset W_B$” and, explicitly, that a solution meeting one torus stays in it at every time of its interval. Line 112 constructs `w(t) = k(θ₁ + (t-t₁)ω)` and line 113 invokes uniqueness. The implementation has the same lifted max-norm phase space `(Fin 2 → ℝ) × (Fin 2 → ℝ)`, real time, original Hamiltonian, and two-sided time quantification. No rate, constant order, or frequency rescaling changes.

Classification is relative to the **bounded P5-4 interface**, not an assertion that intermediate Part-3 output may be assumed by I-HEAD. STANDING entries are the precise standing data of the invariance subsection or its explicit input interface. SOURCE/RULED/EXCESS counts are zero. The following table accounts for each implicit parameter and each expanded bundled logical input; universal variables inside predicates have their displayed mathematical carriers.

| Input | Bin | Meaning and source |
|---|---|---|
| `B : Set (Fin 2 → ℝ)` | TYPING | Real action domain, p5 lines 28–29. |
| `s₀ : ℝ` | TYPING | Analytic strip width. |
| `r₀ : ℝ` | TYPING | Action-neighborhood radius. |
| `h : (Fin 2 → ℂ) → ℂ` | TYPING | Integrable Hamiltonian. |
| `f : ((Fin 2 → ℂ) × (Fin 2 → ℂ)) → ℂ` | TYPING | Perturbation Hamiltonian. |
| `ε : ℝ` | TYPING | Perturbation size. |
| `C_K : ℝ` | TYPING | Part-3 closeness constant. |
| `E : ℝ` | TYPING | Torus energy. |
| `K : (Fin 2 → ℂ) → ((Fin 2 → ℂ) × (Fin 2 → ℂ))` | TYPING | Complex parameterization. |
| `I : Fin 2 → ℝ` | TYPING | Base action. |
| `ωt : Fin 2 → ℝ` | TYPING | Torus frequency. |
| `hb.hs : 0 < s₀` | STANDING | I-HEAD analytic data; p5 standing setting. |
| `hb.hr : 0 < r₀` | STANDING | Same. |
| `hb.holo` | STANDING | `h` holomorphic on `actionNbhd B r₀`, I-HEAD. |
| `hb.real` | STANDING | `h` real on the real slice of that neighborhood. |
| `hf.holo` | STANDING | `f` holomorphic on `complexStrip 2 s₀ ×ˢ actionNbhd B r₀`. |
| `hf.periodic` | STANDING | Period-one angle periodicity on the same domain. |
| `hf.real` | STANDING | `f` real on its real slice. |
| `hf.nonneg : 0 ≤ ε` | STANDING | I-HEAD perturbation size. |
| `hf.bound` | STANDING | Pointwise `‖f z‖ ≤ ε` on the fixed complex domain. |
| `T.holo` | STANDING | Part-3 T1, p3 line 376. |
| `T.primary` | STANDING | Part-3 T1, same line. |
| `T.real` | STANDING | Part-3 T1, same line. |
| `T.invariant` | STANDING | Complex invariance equation, Part-3 T2, line 377. |
| `T.energy` | STANDING | Pointwise complex energy identity, Part-3 T3, line 378. |
| `T.close` | STANDING | Uniform closeness on the full strip, Part-3 T4, line 379. |
| `T.du` | STANDING | Angle derivative bound on the half strip, Part-3 T4. |
| `T.dv` | STANDING | Action derivative bound on the half strip, Part-3 T4. |
| `hmem : ∀ θ, (realRestriction K θ).2 ∈ B` | STANDING | Explicit design input; inclusion step p5 line 111 is supplied by graph position. |
| `θ₁ : Fin 2 → ℝ` (`torus_flow` only) | TYPING | Arbitrary initial torus parameter in `inv-sol`. |

Counts: `torus_flow`: TYPING 12, STANDING 18, SOURCE 0, RULED 0, EXCESS 0. `torus_invariant`: TYPING 11, STANDING 18, SOURCE 0, RULED 0, EXCESS 0. No instance parameters or other hidden logical inputs are added. Output structure fields unused by these proofs remain legitimate inherited data. No new constants are chosen after varying the input data.

**Refutation checks.** The word `invariant` in `TorusOutput` does not mean the real-flow conclusion: it is precisely the complex differential equation `X_H(K θ) - DK θ ωt = 0`. Deriving a real solution from it still requires the actual derivative bridge, real-valuedness, Hamiltonian-field bridge and chain rule, all supplied inside `torus_flow`. `ToriExistence` has only size constants and existential Part-3 torus witnesses; it has no `IsSolutionIn` or `IsInvariantSet` field and is not an argument of either new theorem. Thus neither bundle hides the result being proved.

`hmem` is genuine domain membership, not a uniqueness or trajectory premise. It does make the inclusion conjunct immediate, as explicitly planned. In the full source proof it is produced by the preceding graph/position argument. The design states `torus_graph_mem` at lines 1116–1120: graph values lie in `cthickening r p.K ⊆ p.W ⊆ B`; combine this with the graph equality to obtain membership of every `k θ`. This package does not implement that upstream graph module (it is absent at this snapshot). Accepting the interface here does **not** certify an implemented producer or a full source-level assembly. A claim that P5-4 alone proves I-HEAD would fail.

The source additionally assumes nonresonance and nonzero frequency from Part 3. The new proofs work for arbitrary real `ωt` satisfying the same complex equation, including zero; omission of those unused restrictions is a valid strengthening for these lemmas.

## Point-of-use proof audit

`torus_flow`, lines 58–69:

1. `hmem` places each point of the proposed trajectory in `univ ×ˢ B`.
2. `hb.hs` proves positive `rhoInf`; `T.holo` and `T.real` discharge exactly `realRestriction_fderiv`'s hypotheses at the real angle `θ₁ + t • ωt`.
3. The affine parameter curve has derivative `ωt` for every real `t`; composition gives `Dk · ωt`.
4. `subset_realAct hb.hr (hmem _)` discharges the real Hamiltonian bridge's action-domain guard. `isRealOnReals_iff` identifies `K(ιθ)` with `ι₂(k θ)`; the complex invariance equation identifies the remaining derivative with the complex field. Injectivity of `ι₂` returns equality in the real phase space. No off-domain derivative fallback is used.

`torus_invariant`, lines 86–103: all premises of `gen_uniqueness` are accounted for:

| Required premise | Actual supply |
|---|---|
| Open spatial domain | `hW`: `univ ×ˢ realAct B r₀` is open, line 88. |
| `C¹` field on that domain | `hF`: `realHam_contDiffOn hb hf` weakened to `C²`, then `ham_smooth_c1`, lines 95–97. |
| Order-connected time set | `hJ`, unpacked from the actual definition of `IsInvariantSet`. |
| Initial time belongs to time set | `ht₁`. |
| First curve solves in the same domain | `hmono hy`, using `B ⊆ realAct B r₀`. |
| Second curve solves there on `J` | `hmono (hx.mono (subset_univ J))`, with `hx := torus_flow … (θ - t₁ • ωt)`. |
| Equal initial values | `hx0.symm`, with `(θ - t₁ • ωt) + t₁ • ωt = θ` and the actual range witness `hθ`. |
| Target time belongs to `J` | `ht`. |

The final reversed equality is the correct `range` witness. The chosen parameter `θ - t₁ • ωt` produces exactly the source's shifted trajectory; a separate use of `gen_symmetry_shift` is unnecessary. Working on the larger open real-action neighborhood is valid and slightly strengthens the interface: `IsOpen B` is unnecessary for these two lemmas. Bounded or closed time intervals are treated exactly as the `OrdConnected` solution predicate permits; no completeness/global-existence assertion about arbitrary initial points is smuggled in.

## Definitions and import closure

New `def`/`abbrev`/`structure` declarations: **none**. Definition classification for the diff: N/A; no choice-defined object, junk branch, or off-domain extension is introduced.

Inspected inherited meanings: `realRestriction = Re ∘ K ∘ ι`; `realHamiltonian = Re(h+f)`; real/complex Hamiltonian fields use `(∂I H, -∂θ H)`; `invarianceError = X_H ∘ K - DK ω`; `realAct` is the real preimage of `actionNbhd`; `rhoInf = min s₀ 1 / 8`; `IsSolutionIn` requires both membership and the genuine two-sided derivative at every time; `IsInvariantSet` quantifies over all order-connected time sets and solutions. These are faithful literal objects/predicates on their stated carriers. The field bridge and positive-strip guards prevent proof use of unconstrained `fderiv` values.

Direct imports are only `Setting` and `RealHam`; their relevant proof chain through `Strip.RealRestriction`, the real Hamiltonian bridge and `ODE.Uniqueness` was inspected. The axiom results below exclude any transitive draft-theorem dependence of the two exports. No provider or frozen theorem is imported by the added module.

## Verification commands and observed output

Commands ran in `/root/code/KAM-inp-p54`, sequentially with `LEAN_NUM_THREADS=1` for Lean activity. No library clean, package/cache change or heartbeat/resource override was used.

1. Targeted build through the required gate:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p54 KAM.Iso.Confinement.Invariance
   ```

   Exit **0**. The wrapper invokes `nice -n 5 lake build`.

   ```text
   [inp-gate] slot 1 acquired 01:06:20 for KAM.Iso.Confinement.Invariance
   ⚠ [2841/2875] Replayed KAM.ODE.Exit
   warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
     [NormedSpace ℝ E]
   consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
     omit [NormedSpace ℝ E] in theorem ...
   Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
   Build completed successfully (2945 jobs).
   ```

   This is an inherited replayed warning, not an override used by the audit or package.

2. Mechanical signature comparison against the embedded design declarations: both signatures, from `theorem …` through `:=`, were **text-identical**. Probe `.lake/abi-scratch/P54Audit.lean` imported only `KAM.Iso.Confinement.Invariance`, copied the design's section parameter declarations and full theorem types under fresh names, and replaced each `sorry` body by the corresponding explicit application:

   ```lean
   by exact KAM.Iso.Confinement.torus_flow hb hf T hmem θ₁
   by exact KAM.Iso.Confinement.torus_invariant hb hf T hmem
   ```

   Command:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P54Audit.lean
   ```

   Exit **0**, with no elaboration warnings. The same probe contained `#print axioms` for every new public theorem:

   ```text
   'KAM.Iso.Confinement.torus_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Confinement.torus_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

3. Kernel replay, one invocation covering the only added module:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Invariance
   ```

   Exit **0**. Output:

   ```text
   replaying KAM.Iso.Confinement.Invariance
   ```

4. Source lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1 solely for the explicitly permitted stale-root notice**; all other checks passed. Exact output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (307 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

5. Protected-path and whitespace checks:

   ```sh
   git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
   git diff --check inp...HEAD
   ```

   Both exit **0**, no output; protected diff is 0 bytes. The changed Lean file has **107 lines**, standard copyright/module/public-import/docstring/public-section form, and no forbidden proof escapes or resource overrides. A direct forbidden-token search returned no matches. The probe is removed after verification. Final source hash is unchanged from snapshot v1.

## Findings, notes and closeout

No blocker, major finding, suspected pinned-source erratum, or blueprint contradiction survived the refutation pass. No source defect or repair is proposed. Notes:

- The handoff mentions only two private lemmas; there are **three**, also including `torus_invarianceError_real` at line 45. This is an inventory correction, not a proof defect.
- The design's standalone `.drafts/design/IPart58Signatures.lean` is absent in this worktree. The equivalent exact signatures embedded in the tracked design document were used and tested; both match the implementation byte-for-byte at the declaration header level.
- `hmem` production and the two-torus union are outside this package. They remain integration obligations; there is no result replacing an unpaid producer by a new assumption in the frozen I-HEAD statement.
- The broader track-I source documents and anchor bodies are not re-audited as complete proofs. In particular, I-G1 and I-HEAD are not closed by this result. No external pinned PDF was needed: the audited invariance mechanism is the project's own proof, explicitly supplied in the blueprint.

Closeout: all five new declarations classified; both public types mechanically compared and elaborated; point-of-use uniqueness obligations checked; axiom closure and kernel replay passed; lint recorded; protected files unchanged; scratch removed. Report-only permission envelope honored. **Package accepted with the scope notes above; no anchor seal authorization is implied.**
