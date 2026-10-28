# P8-1 delta audit 2

**Verdict: PASS for the delta and closure of P81-01; package PASS WITH NOTES for inherited checkout lint.** The two attained-minimum theorems supply the conclusions missing in audit 1. No frozen anchor/provider is part of P8-1, so no seal or headline theorem closure is claimed.

Audit date: 2026-10-28. Worktree `/root/code/KAM-inp-p81`; audited HEAD `8068216d4f556f96a4689edeb041740cda21052b`, baseline `e9b191324305b9c52b80c6baad552129f25b21b5`. Current inp at review: `f56dab7c4b2a96d2fd66dd13f585d7e144927ae9`. Read current rules/plan/decisions, original audit brief and report, and raw blueprint lines 95, 118, 122 with surrounding assumptions/proofs. Applied the statement-audit skill. This is a focused delta audit, carrying forward the unchanged original contracts after byte comparison.

`git diff e9b1913..8068216` changes only `KAM/Iso/Collision.lean`, adding 64 lines: two public theorems and one private theorem. Current file: 286 lines; SHA256 `7c7bb8807f8b7a8941a2ce22a5ffd088704760222763aa60610987905a2541e4`.

## Source fidelity and closure

| Source node / location | Declaration / current Collision.lean line | Verdict | Evidence |
|---|---|---|---|
| collision-exclusion(b), blueprint p8:95 | collision_exclusion_compact_attained, 164–183 | PASS | Positive δ; witness q₀∈S and j₀ with δ=ℓ(q₀−x j₀); δ below every admissible value; quantitative exclusion at this same δ. |
| min-distance, blueprint p8:118/122 | min_distance_attained, 265–284 | PASS | Positive δ; q₀∈S and distinct i₀,j₀; δ equals their actual separation and bounds every distinct-pair separation throughout S. |
| finite-family compact minimum, ce-compact/md-min proof steps | private exists_attained_lower_bound, 128–139 | PASS | Proves attainment from compactness/continuity and nonempty finite family; positivity follows from pointwise positivity. |
| Existing twelve public signatures | original eleven theorems plus exclusionMu | PASS | Exact headers unchanged; removing the three new declaration blocks recovers the entire original file byte-for-byte. |

Blueprint line 95 specifies the minimum over masses and points of S; line 118 specifies the minimum over configurations and distinct pairs, and line 122 explicitly requires attainment. In both new exports the equality witness is admissible and the universal lower bound covers the entire source set. These are exactly the defining conditions for an attained minimum. They exclude the earlier counterexample of selecting half the true minimum: an equality witness could not then exist. If two candidate values both satisfy these conditions, evaluating each universal bound at the other's attaining witness gives inequalities in both directions, hence equality. The witness value is canonical even when an attaining configuration/index is not unique. Explicit nested min operators are unnecessary to express this characterization, and swapping the two finite/compact minimizations does not change the characterized value.

For compact exclusion δ is chosen before the conclusion's universally quantified μ,q,j. The threshold remains exclusionMu c μ₁ δ. Positivity of this threshold follows from the unchanged exclusionMu_pos using hc,hμ₁ and the returned positive δ; d=δ/2>0. Thus both the attained-distance assertion and part (a)'s uniform exclusion consequence hold at the same source minimum.

The added hm:0<m and hne:S.Nonempty in compact exclusion are exactly line 95's m≥1 and S≠∅. In min_distance_attained, [Finite ι] with [Nontrivial ι] expresses a finite index set with at least two elements, the source's N≥2. The added hne is line 118's S≠∅. These are SOURCE conditions, not excess assumptions or assumed proof steps. No claimed attained minimum is extended to an empty admissible set. The old theorems continue handling the vacuous cases. The established generalization from Euclidean norms to continuous nonnegative definite lengths is unchanged; finite-dimensionality is not needed for compact attainment.

The private proof first obtains a minimum point for each function by IsCompact.exists_isMinOn, selects a smallest value among the finite nonempty index family, and proves both equality and the global lower bound. Compact exclusion derives positivity using hxS and definiteness; min_distance_attained derives positivity from hsep and definiteness. The distinct-pair subtype excludes diagonals, and Nontrivial supplies its nonemptiness through exists_pair_ne. No conclusion-shaped assumption is introduced.

**P81-01: CLOSED.** The new exports supply the full source-facing attained-minimum assertions while preserving the old useful lower-bound APIs. There is no outstanding minimum-characterization discrepancy in the audited delta.

## Binder and definition ledger

No new def/abbrev/structure. exclusionMu and all frozen semantic definitions are unchanged; its literal-definition PASS from audit 1 carries forward. Proof-local choices select attaining points after proving existence; no noncanonical chosen object is exported. Definitions/classification: N/A for this delta.

Every outer binder occurrence in the two new public declarations is listed below. Universal binders inside htri/hneg/hcont/hnonneg/hzero/hy/hxS/hsep have their explicit source/generalized-length meanings; no bundled assumptions. Counts: 12 TYPING, 15 RULED (previously audited design carrier/norm generalization), 11 SOURCE, 0 STANDING, 0 EXCESS. RULED does not assert a new owner ruling.

| Declaration | Binder | Bin | Authority |
|---|---|---|---|
| `collision_exclusion_compact_attained` | `X` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `[AddCommGroup X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `[TopologicalSpace X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `[IsTopologicalAddGroup X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `ℓ` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `htri` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `hneg` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `hcont` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `hnonneg` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `hzero` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `collision_exclusion_compact_attained` | `m` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `hm` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `x` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `c` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `μ₁` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `hc` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `hμ₁` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `y` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `hy` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `S` | TYPING | p8:95 |
| `collision_exclusion_compact_attained` | `hS` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `hne` | SOURCE | p8:95 |
| `collision_exclusion_compact_attained` | `hxS` | SOURCE | p8:95 |
| `min_distance_attained` | `ι` | TYPING | p8:118/122 |
| `min_distance_attained` | `X` | TYPING | p8:118/122 |
| `min_distance_attained` | `[Finite ι]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `[Nontrivial ι]` | SOURCE | p8:118/122 |
| `min_distance_attained` | `[AddCommGroup X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `[TopologicalSpace X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `[IsTopologicalAddGroup X]` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `ℓ` | TYPING | p8:118/122 |
| `min_distance_attained` | `hcont` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `hnonneg` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `hzero` | RULED | design B1/D9/D10; prior audit (norm properties/generalized carriers) |
| `min_distance_attained` | `S` | TYPING | p8:118/122 |
| `min_distance_attained` | `hS` | SOURCE | p8:118/122 |
| `min_distance_attained` | `hne` | SOURCE | p8:118/122 |
| `min_distance_attained` | `hsep` | SOURCE | p8:118/122 |

## Mechanical checks

Lean invocations, including lint's ABI subprocess, were serialized, with LEAN_NUM_THREADS=1. No resource override, clean/update/cache fetch, dependency mutation, state-changing git, frozen edit, or generated-file edit.

1. **Targeted gate build**

   Command: `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p81 KAM.Iso.Collision`.

   Exit 0; the gate runs nice -n 5 lake build. Output:

   ```text
   [inp-gate] slot 2 acquired 01:01:20 for KAM.Iso.Collision
   Build completed successfully (9090 jobs).
   ```

2. **Axioms**

   Temporary probe `.lake/abi-scratch/P81DeltaAudit.lean` imports KAM.Iso.Collision and runs #print axioms for all thirteen public theorems, including both additions. Command: `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P81DeltaAudit.lean`. Exit 0; no warnings/errors. Exact output:

   ```text
   'KAM.Iso.Collision.radius_add_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_eq_zero_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.radius_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.continuous_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.exclusionMu_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.collision_exclusion_quant' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.collision_exclusion_compact' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.collision_exclusion_compact_attained' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.shell_exclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.shell_collisionFree' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.min_distance' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Collision.min_distance_attained' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

3. **Kernel replay**

   `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Collision` — exit 0. Exact output: `replaying KAM.Iso.Collision`. One invocation, replaying the only changed lemma module.

4. **Original signatures / file preservation**

   Python extracted each original public theorem/def header through `:=` from `git show e9b1913:KAM/Iso/Collision.lean` and `git show 8068216:KAM/Iso/Collision.lean`: all twelve UNCHANGED (radius_add_le, radius_neg, radius_eq_zero_iff, radius_nonneg, continuous_radius, exclusionMu, exclusionMu_pos, collision_exclusion_quant, collision_exclusion_compact, shell_exclusion, shell_collisionFree, min_distance). Removing the three added declaration/docstring blocks from the new text yields exactly the original file, including all original proof and definition bodies. Current filesystem bytes equal the committed 8068216 file.

   `git diff --check e9b1913..8068216` exits 0, no output. Both `git diff e9b1913..8068216 -- KAM/Frozen manifest KAM.lean README.md` and `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` are empty. No new imports. The unchanged module header/imports/public section remain valid; file length 286<1500. Forbidden-word/override scan of Collision returns no matches.

5. **Lint and P81-02**

   `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` — exit 1. Exact output:

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

   The stale root is the expected exception. The only additional failure is the older checkout's Orbit line lengths; none comes from the delta.

   Independently inspected `git show inp:KAM/Kepler/Orbit.lean`: no line exceeds 100 characters. **P81-02 is resolved on current inp**, as the user reported. This package checkout still carries the older Orbit bytes, so a lint failure for those old lengths would not reopen the resolved inp finding. No merge or repair was performed during this audit.

## Handoff

Only `/root/code/KAM-inp-p81/docs/tracks/I/audits/P8-1-audit-2.md` was written as a repository artifact; temporary audit probes removed. No new suspected source errata or blueprint defects, no introduced deviations. P81-01 is closed by the attained wrappers; original twelve signatures and implementations are preserved. No frozen provider/seal check applies to this infrastructure package.
