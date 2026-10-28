# P5-9 independent audit 1

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-p59`.
Audited HEAD: `068dbfa0297fb2247f2673d222dc3acc777c3f3e`.
Comparison ref `inp`: `2dc2c5afd96498a9908350f8454cfd2346ad5c6d`.

**Verdict: PASS WITH NOTES for P5-9's conditional helper.** No material statement, proof, definition, or hygiene defect found in the reviewed changes. **I-HEAD is not certified seal-ready by this package:** this diff introduces no provider. `confinement_main_of_tori` deliberately assumes the Part 3 output bundles; their production and the source-facing provider remain separate obligations. No I/N/P frozen anchor is proved or sealed by this change.

## Scope and authority

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the package audit brief, the P5-9 handoff, the Part58 design (including Appendix A and audit fixes), blueprint-I Part 5, the I-HEAD track statement, the frozen I-HEAD anchor and its solution/Hamiltonian definitions, and the relevant imported setting, threshold, ODE and real-Hamiltonian interfaces.

The user's exact report destination overrides the generic brief's main-worktree destination. Only this report is edited; scratch probes were placed under this worktree's `.lake/abi-scratch/` and removed after validation. No state-changing git command was run.

`git diff inp...HEAD` reports multiple merge bases and selects `cdd0849325af3d590fe5f47c8dac05550fbdeb12`. Its entire changed-file list is:

```text
KAM/Iso/Confinement/Confinement.lean
KAM/Iso/Confinement/Main.lean
```

Both files were reviewed, including P5-8's inherited 110-line confinement module. The P5-9 commit alone (`git diff 068dbfa^...HEAD --stat`) adds only Main (173 lines). The handoff's suggested `inp-p58...HEAD` currently includes unrelated upstream changes (46 files), so it is not a clean package baseline; the required `inp...HEAD` comparison and the actual commit delta establish the scope above.

## Declaration and node review

Names in this table are in `KAM.Iso.Confinement`; line numbers refer to the audited files.

| Node / role | Declaration | Verdict | Reason |
|---|---|---|---|
| hd-eps, hd-fix, hd-sol, hd-uniq | Main:141 `confinement_main_of_tori` | PASS WITH NOTES | Signature byte-identical to design Appendix A:1402–1413. Explicitly conditional, with distinct name; cannot replace the source-facing I-HEAD theorem. |
| hd-eps | same, Main:155–159 | PASS | `exists_eps0` applied before introducing f, epsilon or z0. Fixed finite patches, positive constants and strip radius determine a positive epsilon0 bounded by epsilon1. |
| hd-fix / ray coordinates | Main:49 private `ray_base` | PASS | Energy and slope bounds put (E,m) in Q; `K_eq_image`, `Q_subset` and the inverse identity give membership and the precise slope. No global inverse identity outside its domain is used. |
| hd-fix / energy window | Main:60 private `energy_window` | PASS | Triangle inequality combines the perturbation error with `ball_h`; epsilon < deltaE/4 implies the required energy window. |
| hd-fix / graphs | Main:71 private `main_step_graph` | PASS | Derives both graph outputs from the actual TorusOutput values, establishes both base points in K with their ray slopes, and constructs SepSetting from standing data. |
| hd-sol, hd-uniq | Main:107 private `main_step_solution` | PASS | Constructs a maximal solution, obtains both infinite endpoints via confinement_prop, converts to the frozen solution predicate, and proves uniqueness on every (a,b) containing zero. |
| cf-cont (inherited P5-8) | Confinement:49 private `confinement_core` | PASS | Barrier confines actions to compact K contained in B. Periodic continuation applies at t*=0 in both directions. Two radius eta1/4 estimates give strict displacement < eta1/2. |
| cf-conf, cf-cont conditional helper | Confinement:78 `confinement_prop_of_invariant` | PASS | Distinct conditional name; explicit invariance premise fed to separation_confined_of_invariant. Does not masquerade as the source-facing theorem. |
| bpI:p5:confinement | Confinement:93 `confinement_prop` | PASS | Takes named torus outputs and graph identifications and calls separation_confined, deriving the barrier rather than assuming invariance. Retains both endpoints, all-time separation/K membership, and strict displacement estimate. |

The public confinement statements implement the patch-local design: displacement < eta1/2. Blueprint-I/parts/p5-confinement.tex:171–175 places this inside the global setting with eta1 <= eta, giving the printed < eta/2 bound. Main:130–131 weakens the local estimate to the requested strict < eta; no norm or carrier changes occur.

## Quantifiers, premises and proof checks

Main:141–154 has the fixed-system data and ChartCover/ToriExistence before `exists epsilon0`; f and epsilon follow at line 147, and z0 at line 148. Main:157–159 chooses epsilon0 before the proof introduces those variables. There is no per-perturbation or per-initial-point constant smuggled into the uniform threshold. Epsilon=0 is allowed: PerturbData supplies nonnegativity and all downstream smallness uses strict positive thresholds, not division by epsilon.

Main:160–170 puts the initial action in closure B', derives membership in B from HeadData.inside, bounds the energy error through realHam_sub_le, obtains the patch and tori through htor.tori, and obtains the per-patch constants from the fixed finite-family threshold. The derivative bound comes from hcov.dbound at epsilon <= 1. No frozen theorem supplies tori here.

Main:124 constructs the maximal solution using openness and C1 regularity; Main:126 obtains Tm=bottom and Tp=top. The resulting solution predicate includes action membership in B and differentiability of the Hamiltonian, not merely a formal vector-field equation. At Main:133–135 the competitor needs only its frozen solution predicate on (a,b), initial equality and a<0<b. It need not stay in a chart, near a torus, or satisfy the displacement bound.

The Part 3 bundles remain substantial assumptions. Setting:259–274 quantifies htor.tori over all perturbations after epsilon1 and CK are fixed. This is the documented conditional interface (design sections 0, 2 and Appendix A); the proof does not discharge it, and this audit does not count it as discharged. `hne` is unused except for `have _ := hne` (Main:155–156), matching design B7. This is harmless signature retention. The eventual source-facing assembly must still handle empty B' and produce the bundles in the nonempty branch.

## Definitions and quarantine

Neither changed file introduces any def, abbrev or structure: definition classification for new declarations is **none**. The private declarations are proved lemmas, not alternate definitions or fallback objects.

The consumed definitions retain their intended carriers: P2 is the product of two `Fin 2 → R` spaces with their ordinary sup/product norms; realHamiltonian is Re(h+f) on real inclusions; IsHamiltonianSolutionOn asserts membership, Hamiltonian differentiability and HasDerivAt at every time in its domain. EnergyPatch's inverse is used only on Q inside the specified chart image. No junk value outside the chart is relied upon. SepSetting is assembled from graph data and source standing data in Main; it contains no global-solution or confinement conclusion.

A recursive local-import traversal from Main visited 101 module names and found zero imports of `KAM.Provider.*` or frozen theorem modules. Direct imports of frozen definitions are legitimate. No conclusion-shaped assumption was added to a source-facing result; the two explicitly named conditional helpers retain their documented roles.

## Independent checks

All direct Lean/lake invocations used `LEAN_NUM_THREADS=1`, `nice -n 5`, and were run serially. The targeted build used the mandated compile gate. No resource override, clean, cache download, package update or library-from-scratch command was used.

1. Targeted build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p59 KAM.Iso.Confinement.Main
```

Exit 0. Output: `[inp-gate] slot 1 acquired 01:42:00 for KAM.Iso.Confinement.Main`; `Build completed successfully (2952 jobs).` Replayed KAM.ODE.Exit emitted its existing unused-section-variable warning for `[NormedSpace R E]` in gen_exit. No package elaboration failure or heartbeat failure occurred.

2. Design-signature and axioms probe:

Copied the exact Appendix A signature of confinement_main_of_tori under fresh name audit_design_signature and supplied body `by exact confinement_main_of_tori hd hne hcov htor`, importing only Main. A separate textual comparison of the complete signatures returned `True` (byte-identical). Ran:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P59Audit.lean
```

Exit 0. Exact output:

```text
'KAM.Iso.Confinement.confinement_main_of_tori' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.confinement_prop_of_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.confinement_prop' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Provider/frozen `type_of%` equality and seal-body probes are **not applicable**: there is no provider export in the package. The conditional theorem intentionally has a different type from the frozen headline; a successful signature probe does not make it seal-ready.

3. Kernel replay, one invocation:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Main KAM.Iso.Confinement.Confinement
```

Exit 0. Complete output:

```text
replaying KAM.Iso.Confinement.Confinement
replaying KAM.Iso.Confinement.Main
```

4. `LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh`: exit 1 solely for the explicitly permitted generated-root condition. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (329 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No generated file was repaired. Changed files contain 173 and 110 lines respectively, both with copyright, module declaration, public imports, module docstring and public section. Scanning both for sorry/admit/axiom/unsafe/opaque/set_option/EuclideanSpace returned no matches. No new definitions require expose annotations.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty diff (only git's multiple-merge-base warning). `git diff --check inp...HEAD`: exit 0, no whitespace errors (same warning). No protected paths changed.

## Uncertainties, errata and deviations

No suspected new pinned-source erratum or blueprint contradiction was found. This package implements a derived assembly argument; no external source claim was needed to replace an unpaid analytic step. Existing design notes about conditional Part 3 production and unused nonempty input remain applicable. No mathematical repair or deviation was introduced by this audit.

The scope limit is substantive: this certifies the conditional assembly and the inherited confinement implementation, not production of ChartCover/ToriExistence, I-G1, a source-facing provider, or the frozen I-HEAD proof. Those gates must be audited when their implementations arrive.
