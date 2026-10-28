# I2-6 independent audit 1

**Verdict: PASS WITH NOTES for I2-6 (`bpI:p2:step`).** The one public theorem `KAM.Iso.Apost.step` faithfully implements the blueprint's five conclusions, discharges every input-lemma premise, builds, has clean axiom closure, and passes kernel replay. No material finding or requested code repair. This is acceptance of the Step assembly only; I2-4/I2-5 proof internals remain under separate audit. **No frozen anchor is seal-ready from this package.** The associated `iso.isoenergetic_kam.v1` anchor remains `DRAFT_SORRY` / `FROZEN_UNPROVED`; provider/frozen-type equality and seal-body probes are not applicable to this helper-only package.

## Scope and immutable inputs

Audited 2026-10-28 in `/root/code/KAM-inp-i26`, HEAD `11adb28d58aa1a3ad32e0e1d5ceab2d59fbd9128`. Comparison base `inp` at audit start was `59beecd5ddea6c4e26c9bd6fabb272d3f6ea1920`; `inp-i24` is `e042e2687db8732ee78cf58006d632d39a948e6a`.

Read the package brief `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, local AGENTS, PLAN, DECISIONS, the handoff, track-I statement, blueprint standing/admissibility/correction/new-error/torsion/step statements, design v2 §7 and Appendix B6, and both design audits. The prompt's exact report destination overrides the brief's generic main-worktree destination. The handoff is pre-existing and untracked; it was not edited.

The initial `git diff inp...HEAD` contains NewtonError (620 lines), Step (103), Torsion (274), and TorsionDiff (345): 4 files, 1342 insertions. Per AUDIT FOCUS, only `KAM/Iso/Apost/Step.lean` is judged here; the restricted `git diff inp-i24...HEAD -- KAM/Iso/Apost/Step.lean` is precisely its 103-line addition. Input signatures, definitions and import closure were inspected to assess this assembly, without certifying their independent internal mathematics.

| Frozen input | SHA-256 |
|---|---|
| `KAM/Iso/Apost/Step.lean` | `52b3617d75a4345afcb46753c0de38e7847c4a6c917acf6ba54fbded38579615` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |

The manifest identifies the downstream theorem as `iso.isoenergetic_kam.v1`, export `KAM.Iso.isoenergetic_kam`, file `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, provider `KAM.Provider.Iso.IsoenergeticKam`, state `DRAFT_SORRY`, approved by D20. Step is neither a provider nor a frozen export and does not import that anchor. Frozen-prefix/suffix and ABI identity are checked by lint below, not inferred from the handoff.

## Declaration and conclusion fidelity

| Node / declaration | Verdict | Evidence |
|---|---|---|
| `bpI:p2:step` / `KAM.Iso.Apost.step` (`Step.lean:48–80`) | PASS | All (a)–(e), exact smallness and constants, correct updated frequency and strip losses; design Appendix B6 signature matches after removing whitespace. |

Blueprint locators below are `blueprint-I/parts/p2-iso-iteration.tex` at the hashed snapshot.

| Clause | Blueprint | Lean / assessment |
|---|---|---|
| Input | 227–232 | `Step.lean:48–53`: standing data, admissible K, positive δ, δ≤1, 4δ<r, and ĉ_step ε/(γ⁴δ^(2a))≤min(1,β). r,β>0 and 0≤ε≤1 are inside admissibility. |
| (a) | 234 | 54–56: differentiable over ℂ on T_(r−2δ), primary there, real on reals. |
| (b) | 235 | 57–63: map displacement≤d, d≤β/2, open ball of radius β−d inside D, frequency displacement≤d. The vector expression equals abs(s̄−s)‖ω*‖; independently elaborated below. |
| (c) | 236 | 64–69: invariance error at **s̄ω*** and averaged energy defect both bounded by Ĉ_E ε²/(γ⁴δ^(2a)) on the prescribed strip. No fixed-frequency substitution. |
| (d) | 237 | 70–76: derivative difference≤nd/δ, Gram determinant a unit, inverse difference≤C_Bd/δ on T_(r−3δ). Over ℂ determinant-unit means nonzero. |
| (e) | 238 | 77–80: new averaged extended torsion at **(K̄,s̄ω*)** invertible; inverse difference from (K,sω*)≤2𝔪²C_Δ𝖳 d/δ². |

Here `dStep = hatCDelta * ε / (γ² * δ^aExp)`, `aExp = 2κ+2`, and constants depend only on `(n,τ,M,σK,σB,σT)`. None acquires dependence on the torus, ray size/direction, σω, ν, energy, strip, or error. The source's product max norm and maximum-row-sum matrix norm agree with the scoped Lean norms. There is no new existential choice or altered quantifier scope.

## Expanded binder test

Each row is a leaf logical assumption after expanding the two project bundles; conjunctions for Hamiltonian bounds, Gram and twist are split. The data rows enumerate all outer implicit parameters. Bins: STANDING 21, SOURCE 20, TYPING 19, RULED 0, EXCESS 0. There are no instance binders added by this theorem.

| Binder / expanded leaf | Bin | Source locator |
|---|---|---|
| `n : ℕ` | TYPING | Standing 36–41 |
| `τ : ℝ` | TYPING | Standing 36–41 |
| `M : ℝ` | TYPING | Standing 36–41 |
| `σK : ℝ` | TYPING | Standing 36–41 |
| `σB : ℝ` | TYPING | Standing 36–41 |
| `σT : ℝ` | TYPING | Standing 36–41 |
| `σω : ℝ` | TYPING | Standing 36–41 |
| `ν : ℝ` | TYPING | Standing 36–41 |
| `γ : ℝ` | TYPING | Standing 36–41 |
| `ωstar : Fin n → ℝ` | TYPING | Standing 36–41 |
| `D : Set ((Fin n → ℂ) × (Fin n → ℂ))` | TYPING | Standing 36–41 |
| `H : ((Fin n → ℂ) × (Fin n → ℂ)) → ℂ` | TYPING | Standing 36–41 |
| `E₀ : ℝ` | TYPING | Standing 40 |
| `r : ℝ` | TYPING | Step 228 |
| `β : ℝ` | TYPING | Step 228 |
| `ε : ℝ` | TYPING | Step 228 |
| `δ : ℝ` | TYPING | Step 228 |
| `s : ℝ` | TYPING | Step 228 |
| `K : (Fin n → ℂ) → ((Fin n → ℂ) × (Fin n → ℂ))` | TYPING | Admissible 94–95; step 228 |
| `hS.toParams.two_le : 2≤n` | STANDING | 37 |
| `hS.toParams.tau_ge : n−1≤τ` | STANDING | 37 |
| `hS.toParams.M_pos` | STANDING | 37 |
| `hS.toParams.σK_pos` | STANDING | 37 |
| `hS.toParams.σB_pos` | STANDING | 37 |
| `hS.toParams.σT_pos` | STANDING | 37 |
| `hS.σω_gt` | STANDING | 37 |
| `hS.ν_pos` | STANDING | 37 |
| `hS.ωstar_ne` | STANDING | 37 |
| `hS.isOpen` | STANDING | 38–39 |
| `hS.transl_mem` | STANDING | 38–39 |
| `hS.holo` | STANDING | 38–39 |
| `hS.periodic` | STANDING | 38–39 |
| `hS.real` | STANDING | 38–39 |
| `hS.bounds.1 : ‖DH‖≤M` | STANDING | 40 |
| `hS.bounds.2.1 : ‖X_H‖≤M` | STANDING | 40 |
| `hS.bounds.2.2.1 : ‖DX_H‖≤M` | STANDING | 40 |
| `hS.bounds.2.2.2.1 : ‖D²X_H‖≤M` | STANDING | 40 |
| `hS.bounds.2.2.2.2 : ‖D²H‖≤M` | STANDING | 40 |
| `hS.gamma_pos` | STANDING | 40 |
| `hS.dio` | STANDING | 41 |
| `hK.r_pos` | SOURCE | 228 |
| `hK.β_pos` | SOURCE | 228 |
| `hK.ε_nonneg` | SOURCE | 228 |
| `hK.ε_le_one` | SOURCE | 228 |
| `hK.holo` | SOURCE | B1, 97 |
| `hK.primary` | SOURCE | B1, 97 |
| `hK.real` | SOURCE | B1, 97 |
| `hK.ball_sub` | SOURCE | B2, 98 |
| `hK.deriv_le` | SOURCE | B3, 99 |
| `hK.gram`: determinant-unit | SOURCE | B4, 100 |
| `hK.gram`: inverse-norm bound | SOURCE | B4, 100 |
| `hK.error_le` | SOURCE | B6, 102 |
| `hK.s_gt` | SOURCE | 228; admissible 94 |
| `hK.twist`: extended determinant-unit | SOURCE | B5, 101 |
| `hK.twist`: extended inverse-norm bound | SOURCE | B5, 101 |
| `hK.energy_le` | SOURCE | B7, 103 |
| `hδ` | SOURCE | 228 |
| `hδ1` | SOURCE | 228 |
| `h4δ` | SOURCE | 228 |
| `hsmall` | SOURCE | 230 |

Expansion inspected at `KAM/Apost/Standing.lean:41–47`, `KAM/Iso/Apost/Defs.lean:46–76`, and `KAM/Iso/Linear/Defs.lean:124–137`. The assumed B5 is the **old extended torsion**, expressly a source premise; it is neither the unbordered twist nor the new extended-torsion conclusion. No bundle hides correction existence, quadratic improvement, or future admissibility.

## Premise discharge and attempted refutations

At `Step.lean:81–98`:

1. `hP := hS.toParams`, `hγ := hS.gamma_pos`, `hK.ε_nonneg` supply arithmetic standing hypotheses. `hK.freq hS` gives γ≤‖sω*‖≤Θ; transitivity proves γ≤Θ without assuming it. This is blueprint 105–108, 243–245.
2. `Arith.iso_step_small` (`ConstantsArith.lean:777`) consumes precisely hP, hγ, γ≤Θ, δ>0, δ≤1, ε≥0, hsmall. Its three outputs are the symplectic bound≤1/2, d≤β/2 and 2𝔪C_Δ𝖳d/δ²≤1. None is an input to Step.
3. `2δ<r` follows by linear arithmetic from δ>0 and 4δ<r. `d<β` follows from d≤β/2 and `hK.β_pos`. Thus neither stronger strip smallness nor a strict perturbation estimate is smuggled in.
4. `correction` (`Correction.lean:385`) receives hS,hK,hδ,hδ1,h2δ. Its final two outputs bound ΔK and the moving frequency by d. The final rewrite uses `TorsionAux.isoNewtonMap_of_mem` and `(K+ΔK)−K=ΔK` only within the actual new strip.
5. `newton_error` (`NewtonError.lean:582`) receives the same data plus the derived d<β and symplectic bound. Its two final outputs supply (c) at the **updated** frequency.
6. `torsion_step` (`Torsion.lean:91`) receives hS,hK,hδ,hδ1,h4δ, derived d<β, and the derived extended-torsion smallness. It supplies regularity, ball, frame and both final torsion outputs. Frame projections select exactly derivative difference, Gram-unit, and inverse difference; the extra absolute frame bounds are deliberately discarded.

Refutation pass specifically checked: use of ω instead of ω̄ (absent); wrong-width Newton map (absent); hidden hypothesis of new admissibility or new-frequency Diophantinity (absent); assuming d<β or γ≤Θ (both proved); discarding a required frame/energy item (none); replacing the norm of the scalar-frequency displacement by a weaker bound (equivalence proved); provider/frozen-theorem import cycles (none). The locally resolved project import closure has 87 modules, with zero provider or draft frozen-theorem imports. Lean elaboration and kernel replay independently check the actual assembled term. No recursive appeal to Step occurs in any of its input module imports.

## Definitions

**New definitions/abbreviations/structures in scope: none.** Step introduces one theorem only.

For semantic inspection of existing terms: `isoNewS` is literally s(1−Re ξω), with realness of ξω concluded by `correction`; `isoNewtonMap` is K+ΔK inside T_w and K elsewhere (`Defs.lean:142–152`). The latter branch is explicitly prescribed by blueprint `newton-error`, not a fabricated fallback used to evade an estimate. The current proof uses its defining equation on the required strip; 4δ<r makes that width positive and puts real angles there. `dStep`, `hatcStep`, `hatCE`, `CDTbord` have the displayed blueprint formulas and parameter dependence. Frozen energy/torsion averages retain period-one integration; the extended matrix uses DH(K)N in its last row, not a replacement by ωᵀ. Existing definitions are not re-certified as a new package by this report.

New-definition classification: BODY_MATCH / PUBLIC_CARRIER / WELL_DEFINEDNESS / CHARACTERIZATION / CHOICE_INDEPENDENCE / DEFINITION_VERDICT: N/A (no new definition).

## Independent verification receipts

All final Lean-related checks below were run sequentially, with `LEAN_NUM_THREADS=1`, `nice -n 5`, no heartbeat/recursion/synthesis overrides, and no clean/update/cache operation. Builds used the required compile gate. The repository's generated root was left untouched.

1. Targeted build:

   ```sh
   env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i26 KAM.Iso.Apost.Step
   ```

   Exit **0**. Output:

   ```text
   [inp-gate] slot 2 acquired 02:54:40 for KAM.Iso.Apost.Step
   Build completed successfully (3216 jobs).
   ```

   The gate invokes `nice -n 5 lake build`. This is a targeted incremental build against the worktree snapshot, not a clean library rebuild. An earlier identical invocation also completed; only the above rerun's full exit/output receipt is used here.

2. Independent type and scalar-frequency probes:

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I26Audit1.lean
   ```

   Exit **0**. The probe imported only `KAM.Iso.Apost.Step`, extracted the exact theorem signature from design Appendix B6 under fresh name `auditDesignStep`, and supplied body:

   ```lean
   by exact step hS hK hδ hδ1 h4δ hsmall
   ```

   It also proved for arbitrary real s,t and ω:

   ```lean
   example (s t : ℝ) (ω : Fin n → ℝ) :
       ‖t • ω - s • ω‖ = |t - s| * ‖ω‖ := by
     rw [← sub_smul, norm_smul, Real.norm_eq_abs]
   ```

   The sole public theorem's axiom query printed exactly:

   ```text
   'KAM.Iso.Apost.step' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   No sorryAx or project axiom. The probe is deleted after verification.

3. Kernel replay (one invocation, only the audited lemma module; no provider in this package):

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Step
   ```

   Exit **0**. Exact output:

   ```text
   replaying KAM.Iso.Apost.Step
   ```

4. Final serial lint:

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1**, with only the expressly allowed generated-root warning. Exact output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (366 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   **PASS modulo the brief’s explicit root-generation exception.** No other lint failure. The ABI subprocess inherits the thread limit and nice priority.

5. At audit start, `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit **0**, empty output. `git diff --check inp...HEAD`: exit **0**, empty output. During closeout another actor advanced `inp` to `dd01255d2c72f469a01a875aebaa31cb6dd21b29`; HEAD and `inp-i24` stayed unchanged. Repeating the live three-dot command then warned `multiple merge bases, using 42f2f1b51d1fb3e84f4ec76a58907e55f451f873` and showed five generated `KAM.lean` imports (Correction, Chart, Points, Rays, ComplexDomain). This moving-base result is recorded, not described as an empty live diff. The immutable audit comparison was independently rerun:

   ```sh
   git diff --stat 59beecd5ddea6c4e26c9bd6fabb272d3f6ea1920...11adb28d58aa1a3ad32e0e1d5ceab2d59fbd9128
   git diff 59beecd5ddea6c4e26c9bd6fabb272d3f6ea1920...11adb28d58aa1a3ad32e0e1d5ceab2d59fbd9128 -- KAM/Frozen manifest KAM.lean README.md
   git diff --check 59beecd5ddea6c4e26c9bd6fabb272d3f6ea1920...11adb28d58aa1a3ad32e0e1d5ceab2d59fbd9128
   ```

   All exit **0**: stat remains the same four files / 1342 insertions, protected-path diff empty, whitespace check empty. The Step source hash is unchanged. Thus the package itself contains no protected-path edit relative to the recorded baseline. Mechanical checks: Step has 103 physical lines, copyright, `module`, public imports, module docstring, exposed public section; zero forbidden tokens or resource overrides. Signature comparison against design, after whitespace removal: `True`.

**Procedural deviation, corrected:** the first lint command was `sh scripts/lint_sources.sh`, without the explicit thread limit or nice wrapper. Inspection revealed that its ABI stage launches `lake env lean`; it overlapped the second targeted build invocation. That first lint exited 1 solely for the expected stale generated root and reported successful frozen/ABI checks. The final lint above was rerun after the build, probes and replay finished, with the required environment and priority. This correction does not erase the initial scheduling deviation. No audit change to any mathematical statement or implementation was made.

## Findings, errata and closeout

No blocking, major or minor mathematical/source-fidelity finding in Step. No new suspected defect in a pinned external source, blueprint step statement, or frozen statement. The external HL19 PDF was not independently re-audited; the source-comparison target is the pinned local blueprint and audited design. Design-audit notes about Part 1's wider τ range and the any-frequency regularity API do not create an additional premise here: Step uses the actual Part 2 standing range, and does not require the new frequency to be Diophantine or within the endpoint segment.

The local theorem is formally proved with clean axioms and replay. Its input statements are consumed with fully discharged premises; their separately pending mathematical audits are not replaced by this receipt. I-G1 and other tracks' anchors receive no proof or sealing verdict from this helper audit. No uncertainty remains about the Step assembly; independent input-proof audits and downstream iteration/limit assembly remain outside scope.

Only this report was added by the audit. Temporary probes were confined to `.lake/abi-scratch/` and removed. No production source, frozen anchor, manifest, generated file, or git history/index was changed.
