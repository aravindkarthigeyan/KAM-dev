# Independent audit I-7, round 1

**Verdict: PASS WITH NOTES for package I-7 (`bpI:p7:exact-ham`).** All three exports pass statement fidelity, proof review, axiom checks and kernel replay. No mathematical corrective finding remains. Notes concern the expected root-import lint failure, a stale comparison reference in the handoff, and an auditor execution deviation corrected by a serial rerun.

Report destination: `/root/code/KAM-inp-i7/docs/tracks/I/audits/I-7-audit-1.md`, following the explicit user instruction over the generic brief's destination. No production file was edited.

## Snapshot, scope and authorities

- Worktree `/root/code/KAM-inp-i7`; HEAD `c2d70f9f451c8fb0085e72e5dd20cc4cd18afb70`.
- `inp`: `8cdeed8eb5146d6966577facd7b55a7af8564aa6`.
- `git diff inp...HEAD`: exactly one added file, `KAM/Iso/ExactHamiltonian.lean`, 451 lines.
- The current `inp-i6` reference is `a5e0de936d928b67718ccb3edfd3e1c38e576fd3`. Its three-dot comparison now includes unrelated later work. The requested authoritative `inp...HEAD` comparison isolates exactly I-7; the path-restricted `git diff inp-i6...HEAD -- KAM/Iso/ExactHamiltonian.lean` agrees for this file. No unrelated changes were attributed to I-7.
- File SHA256: `093d48742cf727377ea26653b332c7e1c3dfe15edbcdda20fac7f442abc5b521`.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local I-7 handoff and its AUDIT FOCUS, track-I statements, the four frozen Track-I theorem anchors, and the literal restricted Hamiltonian/collision/radius/primary/action-neighbourhood definitions. Reviewed `blueprint-I/parts/p7-delaunay.tex:393–423`, design §7 row I-7 (L441), §7.1 (L546–550), the exact-ham signatures (L1599–1643), and design audits 1–3, especially F3/R2-1 and its final resolution. Relevant imported definitions and theorem implementations in ComplexDomain, ShiftPotential, RestrictedHam and Orbit were inspected for applicability.

Following the orchestrator's update, compared directly against `/root/code/KAM-inp/.drafts/design/KeplerSignatures.lean`. All **seven definition bodies** and **three export types** match after removing comments and whitespace. The tracked appendix agrees too. Signature SHA256: `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370`; companion P signatures SHA256: `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8`. The P companion defines no I-7 replacement interface and was not proof-audited.

There is **no provider or frozen anchor delivered by I-7**. Provider/frozen-type and seal-body probes are therefore inapplicable. No frozen anchor is certified seal-ready by this report. I-G1, I-HEAD and I-R3BP remain outside this package's proof claim; I-KEPLER is not reproved here. Fresh probe examples instead checked the three exact design export types, with bodies `by exact <export> hK hρ`.

## Mathematical review

**Selected radius (L244–313, L422–431): PASS.** `SafeAction K` contains exactly compactness, nonemptiness and the real cone `0<G<L`. Together with `kRhoMax K<1`, it supplies positive shell/shift constants. The proof takes the compact real fundamental cell times K, embeds it into the open selected complex domain, chooses a compact closed thickening contained in that domain, and applies uniform continuity of the genuine complex Delaunay map there. Integer periodic reduction preserves actions, imaginary angles and the map. For each reduced complex point, the literal existential witness in `actionNbhd` gives a real action in K; no unique nearest point is assumed. Product/Pi distance estimates put both points in the compact thickening.

The uniform-continuity tolerance is `exactEps K / 4` for the product sup norm. `clen_lt_of_norm_lt` explicitly proves `‖z‖ < c/2 → clen z < c`. Taking `c=exactEps K/2` supplies the strict Euclidean collar `clen(q-q')<exactEps K/2`. This correctly distinguishes the analytic sup norm from the physical complex Euclidean length. The real orbit bounds and compact extrema put q' in the entire required shell.

`ExactAux.exactRadiusData_of_positions` proves all analytic and physical clauses for that same radius. `exact_radius_spec` first establishes `∃ δ, ExactRadiusData K δ` and only then unfolds the choice: `choose_spec` gives **all** conjuncts, and the zero branch is contradicted by proved existence. No proof relies on the fallback. The shift-neighbourhood inclusion is retained in the choice predicate, exactly closing design-audit R2-1. All constants and radii depend on K only, before w and μ.

**Hamiltonian and analytic data (L365–414): PASS.** Holomorphy is joint in (w,μ), by composition on `UDelta K δ × ball 0 (exactMu2 K)`. The bound is the exact prescribed `shiftCsh`, with no extra μ-dependence. Periodicity follows from equal position arguments and holds even for arbitrary complex μ, a harmless strengthening of the domain-restricted blueprint. Reality applies on all real points of the chosen complex neighbourhood. At each such point, the complex-domain theorem proves `0<G<L`, the shift theorem supplies collision freedom with the literal frozen predicate, and the identity uses the literal frozen subtype Hamiltonian. No physical formula is replaced by an arbitrary extension at collisions.

`exact_identity` (L328–359) combines `shift_mul_eq` with the real shifted-potential identity, the μ=0 total Hamiltonian and `delaunay_hamiltonian`; taking real parts and rearranging yields the exact barycentric perturbation with both displaced primaries and the correct sign. The proof includes μ=0 without dividing by μ. Extra hypotheses of the auxiliary builders are explicit intermediate inputs that are proved internally before the source-facing exports are invoked. They are not additional premises of `exact_ham` or `exact_radius_spec`.

The blueprint's illustrative choice `δ₂≤δ₁/2` in its proof is replaced by a compact thickening giving `δ₂≤δ₁`, which is exactly the proposition and approved design conclusion. This is an equivalent compactness implementation, not weakened coverage.

## Declaration inventory

All names below are in `KAM.Iso`; auxiliary names have the explicit `ExactAux.` prefix. Lines refer to `KAM/Iso/ExactHamiltonian.lean`. Each public declaration is listed separately.

| Node / role | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| exact-ham definition | `exactF` (50) | PASS | Literal shift potential composed with complex position. |
| exact-ham constant | `exactEps` (52) | PASS | Prescribed shell-dependent epsilon. |
| exact-ham constant | `exactMu2` (53) | PASS | Epsilon divided by two. |
| exact-ham constant | `exactCF` (54) | PASS | Literal shift bound. |
| exact-ham output | `ExactHamData` (57) | PASS | All six formal conjuncts encode holomorphy and clauses (i)–(iv). |
| eh-delta output | `ExactRadiusData` (76) | PASS | Positivity, subordination, full data, geometric inclusion jointly retained. |
| eh-delta selection | `exactDelta` (82) | PASS | Full-predicate choice; zero branch excluded under source premises. |
| neighbourhood auxiliary | `ExactAux.UDelta_mono` (91) | PASS | Inclusion under increasing radius, no positivity restriction needed. |
| neighbourhood auxiliary | `ExactAux.isOpen_UDelta` (95) | PASS | Open angle strips and union of open action balls. |
| exact-ham(iv) auxiliary | `ExactAux.real_mem_UDelta` (112) | PASS | Every real safe-action point lies in every positive neighbourhood. |
| periodic reduction auxiliary | `ExactAux.update_mem_UDelta` (120) | PASS | Updates preserving imaginary part preserve domain. |
| periodic reduction auxiliary | `ExactAux.periodic_coord` (129) | PASS | Complex Delaunay periodicity in either angle. |
| periodic reduction auxiliary | `ExactAux.im_shift` (137) | PASS | Real period shifts preserve imaginary part. |
| periodic reduction auxiliary | `ExactAux.periodic_int` (139) | PASS | Both integer directions derived, domains preserved. |
| periodic reduction auxiliary | `ExactAux.reduce_coord` (165) | PASS | Floor reduction into [0,2π), with all invariants. |
| periodic reduction auxiliary | `ExactAux.reduce` (191) | PASS | Both coordinates reduced simultaneously. |
| metric auxiliary | `ExactAux.norm_sub_re` (205) | PASS | Complex displacement to real part equals imaginary modulus. |
| metric auxiliary | `ExactAux.clen_lt_of_norm_lt` (210) | PASS | Valid conservative sup-to-Euclidean conversion. |
| eh-shell | `ExactAux.real_pos_data` (222) | PASS | Real agreement and uniform physical radial bounds. |
| eh-delta | `ExactAux.exists_positions` (244) | PASS | Geometric radius existence proved from hK and hρ alone. |
| eh-hol/eh-exact auxiliary | `ExactAux.real_positions` (317) | PASS | Real agreement and shell-neighbourhood membership at subordinate radius. |
| eh-exact auxiliary | `ExactAux.exact_identity` (328) | PASS | Explicit shift/domain data imply exact frozen Hamiltonian identity. |
| eh-hol/eh-exact builder | `ExactAux.exactRadiusData_of_positions` (365) | PASS | Proves full output from the internally constructed geometric radius. |
| eh-delta export | `exact_radius_spec` (422) | PASS | Exact design type; proved existence excludes fallback. |
| exact-ham export | `exact_ham` (436) | PASS | Only source hK/hρ, full approved data at selected radius. |
| eh-delta geometric export | `exact_positions_mem_shiftO` (443) | PASS | Geometric projection for exactly that selected radius. |

## Definition classification

There are seven new definitions and no new abbreviations, structures or instances. `exactF` is the intended total composition; off-domain values inherit the existing total analytic expressions and are not used for off-domain physical conclusions. `exactEps`, `exactMu2` and `exactCF` are literal formulas; positivity and denominator admissibility follow under the source hypotheses from the shift constants. `ExactHamData` and `ExactRadiusData` are transparent theorem-output predicates, never assumed by a source-facing export. `exactDelta` is a total choice with a zero default on sets without an admissible radius; it is an auxiliary radius, not a physical observable, and its characterization is proved in this package on the complete intended carrier.

## Independent checks

Only one module is new, with no separate new lemma modules to add to the kernel invocation. Final Lean runs were serial, with `LEAN_NUM_THREADS=1` and niceness 5; the build used the required compile gate.

1. Targeted build:

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i7 KAM.Iso.ExactHamiltonian
```

Exit **0**. Output:

```text
[inp-gate] slot 1 acquired 03:04:12 for KAM.Iso.ExactHamiltonian
⚠ [9086/9094] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9107 jobs).
```

The two warnings are pre-existing dependency warnings; no I-7 warning or elaboration failure occurred. The gate executes `nice -n 5 lake build`. No clean, update or cache fetch was run.

2. An untracked `.lake/abi-scratch/I7Audit.lean` imported only `KAM.Iso.ExactHamiltonian`, checked the three exact signature types with fresh examples, and ran `#print axioms` for **all 19 public theorems**:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I7Audit.lean
```

Exit **0**. Complete axiom output:

```text
'KAM.Iso.ExactAux.UDelta_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.isOpen_UDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.real_mem_UDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.update_mem_UDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.periodic_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.im_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.periodic_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.reduce_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.reduce' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.norm_sub_re' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.clen_lt_of_norm_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.real_pos_data' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.exists_positions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.real_positions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.exact_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ExactAux.exactRadiusData_of_positions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.exact_radius_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.exact_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.exact_positions_mem_shiftO' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.ExactHamiltonian
```

Exit **0**; output:

```text
replaying KAM.Iso.ExactHamiltonian
```

4. Final serial lint:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the explicitly permitted generated-root exception. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (363 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No generated file was regenerated. No forbidden token, resource override, oversized file, module-format violation or ABI drift was reported. The new module is 451 lines, contains the prescribed copyright/module/public imports/module docstring/public section, and exposes definitions through the enclosing `@[expose]` section.

5. `git diff --check inp...HEAD`: exit **0**, empty output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output. A recursive source import traversal visited **61 KAM modules**, finding **zero providers or frozen theorem modules**. All project dependencies are ordinary proved infrastructure or frozen definitions; the axiom output independently excludes `sorryAx` contamination. No imported provider or DRAFT_SORRY theorem was used.

## Notes, uncertainties, errata and deviations

- No suspected defect in a pinned mathematical source, blueprint theorem, frozen statement, or approved I-7 signature was found. This node is an original derivation; Chi05 is explicitly not its provider (`p7-delaunay.tex:409`). No new external-source theorem is asserted or quoted as independently re-audited.
- The final lint exception is exactly the one allowed by the brief; root regeneration belongs to the orchestrator.
- **Auditor execution deviation:** the initial `sh scripts/lint_sources.sh` was started while the targeted build was outstanding. Inspection then revealed its ABI checker launches `lake env lean` internally, so that initial run could overlap the build and did not explicitly set the requested thread count/niceness. This was a mistake in check scheduling. After it finished, the export/axiom probe, kernel replay and final `env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` were run serially. Only that final serial lint result is relied on above. No source change or mathematical deviation resulted.
- No frozen sealing or downstream I-R3BP closure is claimed. The infrastructure proof is complete in the audited scope. No outstanding mathematical uncertainty was identified.
- Persistent audit output is this report only. The pre-existing untracked `I-7-handoff.md` was preserved; the temporary audit probe was deleted after checking.
