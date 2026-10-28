# P8-1 independent audit 1

**Overall: FAIL for full literal blueprint-node fidelity; PASS for the exact section-K design contracts and their proofs.** The failure is a narrower exported conclusion already present in the design, not an unsound Lean proof. Hygiene is PASS WITH NOTES for inherited lint failures. No frozen theorem/provider is delivered by this package, so anchor sealing is not applicable.

Audited 2026-10-28, worktree `/root/code/KAM-inp-p81`, HEAD `e9b191324305b9c52b80c6baad552129f25b21b5`, `inp` comparison `370c0bac661297ae63552bb547c97bdf1b18cb0c`. `git diff inp...HEAD` adds only `KAM/Iso/Collision.lean`: 222 physical lines, one definition, eleven public theorems, three private lemmas. SHA256 `beb966fb46810df16f39dd4a6709d26b20f2219f214ccfda36c0331276766074`.

Read AGENTS.md, PLAN, DECISIONS, the requested brief/handoff, design sections 3/5/6/8/12 and Appendix K, both PART58 design audits, raw `blueprint-I/parts/p8-r3bp.tex:84–126`, track statements I/N/P, frozen Radius/RadiusSq/Primary1/Primary2/CollisionFree, RestrictedNearCircular, and relevant Kepler.Plane definitions/proofs. Applied the lean-statement-audit skill. The scratch signatures file is absent locally; all twelve public contracts were checked against the design's reproduced section K. Only this report and temporary probes were written. No production edit or state-changing git command.

## Findings

**P81-01 — source-node conclusion coverage, major design discrepancy.** At `blueprint-I/parts/p8-r3bp.tex:118`, the source states “δ_S := min_{q∈S} min_{i≠j} |q_i−q_j| > 0 (for S≠∅)”; line 122 says the minimum “is attained”. `KAM/Iso/Collision.lean:207–212` exports only an existential positive common lower bound, not attainment or a characterization as the minimum. On a singleton configuration of separation 1, δ=1/2 satisfies the exported conclusion without being the minimum. Likewise blueprint line 95 defines the compact-exclusion distance by an attained double minimum, whereas `collision_exclusion_compact` (127–139) exports positive uniform separation and quantitative exclusion without a minimum/attainment conjunct.

Both implemented statements match design Appendix K exactly (1473–1481, 1497–1503). The round-2 design audit accepted these positivity contracts. D9/D10 document the carrier generalization, but do not explicitly describe dropping minimum characterization. Under this audit brief's strict instruction to fail weakened conclusions, complete literal minimum assertions are therefore **not certified**. The uniform bounds actually needed by downstream exclusion are proved. Add source-facing attainment characterizations under the source nonemptiness/distinct-pair conditions, or explicitly reconcile the blueprint/design scope, before claiming full literal node coverage. No repair made. This finding does not assert that the mathematical blueprint is false.

**P81-02 — inherited lint failure.** Full lint exits 1 beyond the permitted stale-root exception: unchanged `KAM/Kepler/Orbit.lean` lines 36/38/57/199 have lengths 103/107/102/105. `git show inp:KAM/Kepler/Orbit.lean` independently gives the same four lines and lengths. Collision passes these checks. Generated KAM.lean was not edited.

No counterexample to an exported Lean theorem, new conclusion-shaped premise, or suspected defect in a pinned external mathematical source was found. Known B1 (physical Euclidean length versus Pi sup norm) is correctly addressed. The minimum discrepancy is blueprint/design correspondence, not an external-source erratum.

## Declaration ledger

All names are in `KAM.Iso.Collision`. Source labels have prefix `bpI:p8:`. Dual verdicts separate implementation agreement from full source coverage.

| Node | Declaration (Collision.lean line) | Verdict | Reason |
|---|---|---|---|
| x-norm / B1 | radius_add_le (42) | PASS | Physical Euclidean triangle inequality via definitionally equal planeLength. |
| x-norm / B1 | radius_neg (45) | PASS | Even physical radius. |
| x-norm / B1 | radius_eq_zero_iff (47) | PASS | Full definiteness equivalence. |
| x-norm / F02 repair | radius_nonneg (50) | PASS | Square-root nonnegativity on the whole plane. |
| x-topo / B1 | continuous_radius (52) | PASS | Continuous sqrt of finite sum of coordinate squares. |
| collision-exclusion(a) | exclusionMu (58) | PASS | Exact piecewise threshold, including c=0. |
| collision-exclusion(a) | exclusionMu_pos (60) | PASS | Positive with precisely the parameter guards. |
| collision-exclusion(a), ce-quant | collision_exclusion_quant (87) | PASS | Uniform δ/2 bound for all permitted μ,q,j; correct constant scope. |
| collision-exclusion(b), ce-compact | collision_exclusion_compact (127) | FAIL literal minimum coverage; PASS design | Positive distance and exclusion consequence proved; P81-01. No finite-dimensionality needed for the generalized carrier. |
| shell-exclusion, se-inst | shell_exclusion (147) | PASS | Exact ν₀/2 bounds, signed μ, closed shell, both primaries. |
| shell-exclusion | shell_collisionFree (196) | PASS | Actual frozen CollisionFree; arbitrary momentum. |
| min-distance, md-min | min_distance (207) | FAIL literal minimum coverage; PASS design | Positive lower bound over distinct pairs; P81-01. |
| internal threshold | private exclusionMu_le (68) | PASS | Threshold ≤ μ₁ even outside the positivity regime. |
| internal displacement | private mul_exclusionMu_le (74) | PASS | cμ_* ≤ δ/2 for c≥0, δ≥0; zero branch handled. |
| compactness helper | private exists_pos_lower_bound (110) | PASS | Positive continuous finite family on compact S; empty cases explicit. |

Unused hneg and hμ₁ in the quantitative proof remain exact source/design premises. The proof uses displacement y−x, so evenness is unnecessary. Shell h1 follows from shell membership. Retaining redundant source premises changes no meaning and hides no missing proof; `_unused` only repackages supplied hypotheses.

## Definitions and proof inspection

The only new def/abbrev/structure is **exclusionMu**, a literal formula on all real triples:

`if c = 0 then μ₁ else min μ₁ (δ/(2*c))`.

- BODY_MATCH: OK — identical to design K/D9 and the source formula on c≥0.
- PUBLIC_CARRIER: OK — total algebraic formula; physical positivity claimed only for c≥0, μ₁>0, δ>0. Negative parameters acquire no claimed threshold property. The c=0 branch is source-prescribed, not an invented fallback.
- WELL_DEFINEDNESS: N/A_LITERAL.
- CHARACTERIZATION: N/A_LITERAL; defining equation checked by rfl.
- CHOICE_INDEPENDENCE: N/A.
- DEFINITION_VERDICT: PASS.

There is no exported chosen object. Proof-local choice selects witnesses for a finite family. The compactness proof actually selects attained minima on nonempty S, then a smallest family value; the exported conclusion omits attainment. Empty S or empty family uses δ=1 with vacuous bounds. min_distance indexes the subtype `{p : ι × ι // p.1 ≠ p.2}`, excluding all diagonal pairs and also handling fewer than two indices.

Semantic closure: radius=√(∑qᵢ²), primary₁=(-μ,0), primary₂=(1−μ,0); CollisionFree means strictly positive distances to both. radius and planeLength have definitionally identical formulas. The quantitative proof uses q−x=(q−y)+(y−x), |μ|≤μ₁ and c|μ|≤δ/2, then subtraction. Shell exclusion derives radius(q−(1,0))≥1−radius(q), takes reference masses 0,(1,0), c=1, μ₁=ν₀/2, and reduces exclusionMu 1 (ν₀/2) ν₀=ν₀/2. No ambient sup norm is substituted for physical length.

## Binder ledger

One row per outer binder occurrence in the eleven public theorems follows. Inner universal binders retain their exact section-K types (checked textually and by whole-telescope elaboration). hy quantifies every permitted μ and each mass; hS every q in S and mass; hsep every q in S and distinct pair. No bundled logical assumption occurs. TYPING includes scalar/function/set data. RULED denotes the documented design generalization D9/D10/B1 and round-2 F02, not a newly inferred owner approval. Counts: **37 TYPING, 25 SOURCE, 18 RULED, 0 STANDING, 0 EXCESS**.

| Declaration | Binder | Bin | Authority |
|---|---|---|---|
| `radius_add_le` | `u` | TYPING | source carriers and design K |
| `radius_add_le` | `v` | TYPING | source carriers and design K |
| `radius_neg` | `u` | TYPING | source carriers and design K |
| `radius_eq_zero_iff` | `u` | TYPING | source carriers and design K |
| `radius_nonneg` | `u` | TYPING | source carriers and design K |
| `exclusionMu_pos` | `c` | TYPING | source carriers and design K |
| `exclusionMu_pos` | `μ₁` | TYPING | source carriers and design K |
| `exclusionMu_pos` | `δ` | TYPING | source carriers and design K |
| `exclusionMu_pos` | `hc` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `exclusionMu_pos` | `hμ₁` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `exclusionMu_pos` | `hδ` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_quant` | `X` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `[AddCommGroup X]` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_quant` | `ℓ` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `htri` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_quant` | `hneg` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_quant` | `m` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `x` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `c` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `μ₁` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `hc` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_quant` | `hμ₁` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_quant` | `y` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `hy` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_quant` | `S` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `δ` | TYPING | source carriers and design K |
| `collision_exclusion_quant` | `hδ` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_quant` | `hS` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_compact` | `X` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `[AddCommGroup X]` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `[TopologicalSpace X]` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `[IsTopologicalAddGroup X]` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `ℓ` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `htri` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `hneg` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `hcont` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `hnonneg` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `hzero` | RULED | design D9/D10, B1; round-2 F02 (norm properties/generalized carriers) |
| `collision_exclusion_compact` | `m` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `x` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `c` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `μ₁` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `hc` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_compact` | `hμ₁` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_compact` | `y` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `hy` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_compact` | `S` | TYPING | source carriers and design K |
| `collision_exclusion_compact` | `hS` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `collision_exclusion_compact` | `hxS` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_exclusion` | `rmin` | TYPING | source carriers and design K |
| `shell_exclusion` | `ρmax` | TYPING | source carriers and design K |
| `shell_exclusion` | `h0` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_exclusion` | `h1` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_exclusion` | `h2` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_exclusion` | `μ` | TYPING | source carriers and design K |
| `shell_exclusion` | `hμ` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_exclusion` | `q` | TYPING | source carriers and design K |
| `shell_exclusion` | `hq` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_collisionFree` | `rmin` | TYPING | source carriers and design K |
| `shell_collisionFree` | `ρmax` | TYPING | source carriers and design K |
| `shell_collisionFree` | `h0` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_collisionFree` | `h1` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_collisionFree` | `h2` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_collisionFree` | `μ` | TYPING | source carriers and design K |
| `shell_collisionFree` | `hμ` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `shell_collisionFree` | `z` | TYPING | source carriers and design K |
| `shell_collisionFree` | `hq` | SOURCE | p8 collision/shell statement, lines 87–110 |
| `min_distance` | `ι` | TYPING | design D10 generalized finite configurations |
| `min_distance` | `X` | TYPING | design D10 generalized finite configurations |
| `min_distance` | `[Finite ι]` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `[AddCommGroup X]` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `[TopologicalSpace X]` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `[IsTopologicalAddGroup X]` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `ℓ` | TYPING | design D10 generalized finite configurations |
| `min_distance` | `hcont` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `hnonneg` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `hzero` | RULED | p8:118; design D10/B1, K |
| `min_distance` | `S` | TYPING | design D10 generalized finite configurations |
| `min_distance` | `hS` | SOURCE | p8:118; design D10/B1, K |
| `min_distance` | `hsep` | SOURCE | p8:118; design D10/B1, K |

## Mechanical checks

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p81 KAM.Iso.Collision` — exit **0**:

   ```text
   [inp-gate] slot 1 acquired 00:44:56 for KAM.Iso.Collision
   Build completed successfully (9090 jobs).
   ```

   The gate invokes nice -n 5 lake build. The dependency job count is not a claim to have rebuilt the library from scratch; the existing overlay was used.

2. Python extraction compared all eleven public theorem headers through `:=` with design K: **11 TYPE_TEXT_MATCH**, no mismatch. The definition body matches too. A temporary `.lake/abi-scratch/P81Audit.lean` imported Collision, checked the defining equation by rfl, and checked eleven examples `example : ∀ <binders copied from K>, <design conclusion> := @KAM.Iso.Collision.<name>`. This checks complete telescopes, including implicitness and dependency order. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P81Audit.lean` — exit **0**, only unused-variable warnings in the copied forall probes; no errors.

3. The probe ran #print axioms of every public theorem, with exact output:

   ```text
   'KAM.Iso.Collision.radius_add_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_eq_zero_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.continuous_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.exclusionMu_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.collision_exclusion_quant' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.collision_exclusion_compact' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.shell_exclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.shell_collisionFree' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.min_distance' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

4. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Collision` — exit **0**, exact output:

   ```text
   replaying KAM.Iso.Collision
   ```

   One invocation; there is only one changed lemma module and no provider. This replays Collision, not every Mathlib dependency independently.

5. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` — exit **1**, output:

   ```text
   Lean lines over 100 characters:
   /root/code/KAM-inp-p81/KAM/Kepler/Orbit.lean:36:103
   /root/code/KAM-inp-p81/KAM/Kepler/Orbit.lean:38:107
   /root/code/KAM-inp-p81/KAM/Kepler/Orbit.lean:57:102
   /root/code/KAM-inp-p81/KAM/Kepler/Orbit.lean:199:105
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (268 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   Initial lint invocation also exited 1 with these same defects. It omitted the explicit thread-limit/nice prefix while the targeted build was waiting at the compile gate; this is a procedural deviation, corrected by the recorded repeat. No concurrent package compilation occurred. All direct build/probe/replay invocations explicitly used LEAN_NUM_THREADS=1 and ran sequentially; the repeat applies that environment and nice priority to lint's ABI subprocess as well.

6. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` — exit **0**, empty output. `git diff --check inp...HEAD` — exit **0**, empty output. A recursive scan of all 44 reachable project module names found **no provider or frozen-theorem import edge**. Collision satisfies copyright/module/public-import/docstring/exposed-public-section rules. No forbidden escape or resource override, no EuclideanSpace, no overlong Collision line, and only 222 total lines. No clean/update/cache-fetch or dependency edit.

## Handoff

Written file: `/root/code/KAM-inp-p81/docs/tracks/I/audits/P8-1-audit-1.md` only. Temporary probes removed. No provider=frozen-type or seal-body probe applies: P8-1 delivers infrastructure, not a provider. RestrictedNearCircular remains DRAFT_SORRY; no I/N/P headline closure is claimed.

Uncertainties: the untracked original signatures file is unavailable locally; the design's exact reproduced section K was used instead. The audited proof contracts are sound and uniform exclusion is established. Full literal minimum-node certification requires resolving P81-01; the owning package must handle P81-02. No external-source erratum or production deviation was introduced by this auditor.
