# I2-1 independent audit 1

Verdict: **PASS WITH NOTES** for package I2-1. The three helper results pass statement, proof, and kernel checks. **I-G1 is not seal-ready**: this package has no provider and does not prove the frozen isoenergetic KAM theorem.

## Scope and frozen inputs

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-i21`. Permission envelope: repository read-only except this report; temporary probes in `.lake/abi-scratch/`, subsequently removed; no git mutation. The user's exact output path overrides the brief's parenthetical main-worktree destination.

Snapshot `frozen-v1`:

- HEAD: `48f04d22f6e5e965ca8657188aa39ade368f5b6b`.
- `inp`: `ca2a6f99a20c65aced66576f7ef24a7e1faaa8c0`.
- `inp-i11`: `3626838deeef8b58e1a2a12dfd62e74467cc4a2d`.
- HEAD parent: `07a7d1e` (merge of I1-1 and fixed I-D0).
- Initial untracked file: `docs/tracks/I/audits/I2-1-handoff.md`; preserved.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Apost/Standing.lean` | `961f127bec19b15c829708b0e0dd983b777771ba233bfa6003e642f75540532c` |
| `KAM/Iso/Apost/Defs.lean` | `bfe66bba3354dbcd66b5bbaa2dab630018b6fb44259e31cad47a319032bb8163` |
| `KAM/Iso/Linear/Defs.lean` | `f08cbdb606c96d8290c31f1c66009cc2cf66c74e463a65a6eec7602189383844` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `34436a69c1f582d7e1a711b8e2ffcb57e6c97ebaef70b2e22b110e417f4ac1dd` |

Read AGENTS, PLAN, DECISIONS, the audit brief, handoff focus, track-I statement, design §7 I2-1 row and §B1, design audits 1/2, blueprint Part 2 standing/ray/admissible, frozen I-G1 and its energy/bordered-torsion definitions. Method: focused tier-2 audit, source reconstruction followed by proof inspection and a separate adversarial pass. No subagents. External PDFs and unrelated inherited packages were not independently re-audited.

The requested `git diff inp...HEAD` was inspected. Git warns:

```text
warning: inp...HEAD: multiple merge bases, using 3626838deeef8b58e1a2a12dfd62e74467cc4a2d
```

Both `inp...HEAD` and the handoff's `inp-i11...HEAD` include 83 files, including inherited packages and planetary graph reports. `git show --stat HEAD` and `git diff HEAD^ HEAD --name-only` isolate the actual I2-1 commit: **only `KAM/Iso/Apost/Standing.lean`, 134 added lines** (the handoff says 132). This report certifies its three public declarations and their relevant assumption/definition interfaces, not every inherited declaration in the broad diff.

## Statement ledger

| Node / anchor | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bpI:p2:standing#k-bridge` | `KAM.Iso.Apost.IsoStanding.setting`, Standing:44–59 | PASS | Produces Part-1 `Setting` and its K-standing projection at `s • ωstar`, using only standing data and `1 ≤ s`. |
| `bpI:p2:ray` | `KAM.Iso.Apost.ray`, Standing:62–120 | PASS | All six conjuncts match the design, including the endpoint-margin inequality and the strict interior conclusion. |
| `bpI:p2:admissible`, display `bpI:p2:freq` | `KAM.Iso.Apost.IsoAdmissible.freq`, Standing:123–132 | PASS | Exactly `γ ≤ ‖s • ωstar‖ ∧ ‖s • ωstar‖ ≤ Theta n M σK σB σT`. |
| `iso.isoenergetic_kam.v1` / I-G1 | `KAM.Iso.isoenergetic_kam` | PASS WITH NOTES for supporting package only | Frozen anchor remains `DRAFT_SORRY`; no provider/seal is claimed or tested by this package. Proof status: FROZEN_UNPROVED. |

All three theorem statements are textually identical to the corresponding commands in design §B1 before the proof bodies. They also match `/root/code/KAM-inp/.drafts/design/IPart123Signatures.lean` (three programmatic comparisons returned `True`). Probes copied the complete design signatures under fresh names and supplied the actual exports as proofs, with exactly the explicit binders in order. All elaborated.

The ray theorem is stronger than the blueprint's standing-context formulation: it requires only `IsDiophantine γ τ ωstar`, permits arbitrary real γ, τ, σω, and needs no nonzero-vector premise. The first-coordinate conjunct explicitly takes `hn : 0 < n`; standing data supplies this from `n ≥ 2`. The omitted textual clause `ν' - d > 0` is immediately `sub_pos.mpr hdν`, so there is no lost conclusion. The norm is the stipulated Pi max norm, and the lattice is `Fin n → ℤ`.

## Expanded binder audit

All implicit data binders are TYPING:

| Export | Implicit data binders | Count |
|---|---|---|
| `IsoStanding.setting` | `n`; `τ M σK σB σT σω ν γ`; `ωstar D H`; `s` | 13 |
| `ray` | `n`; `γ τ σω`; `ωstar` | 5 |
| `IsoAdmissible.freq` | `n`; `τ M σK σB σT σω ν γ E₀ r β ε s`; `ωstar D H K` | 18 |

No implicit instance premise introduces mathematics. Universally quantified variables inside standing fields range over the literal source carriers; their membership premises remain inside those fields. The following expands every logical input of `hS` (used by setting and freq), splitting conjunctive fields:

| Expanded input | Bin | Source at frozen-v1 |
|---|---|---|
| `Params.two_le`: `2 ≤ n` | STANDING | p2:standing, blueprint:37 |
| `Params.tau_ge`: `n - 1 ≤ τ` | STANDING | blueprint:37 |
| `Params.M_pos` | STANDING | blueprint:37 |
| `Params.σK_pos` | STANDING | blueprint:37 |
| `Params.σB_pos` | STANDING | blueprint:37 |
| `Params.σT_pos` | STANDING | blueprint:37 |
| `σω_gt`: `1 < σω` | STANDING | blueprint:37 |
| `ν_pos` | STANDING | blueprint:37 |
| `ωstar_ne` | STANDING | blueprint:37 |
| `isOpen` | STANDING | blueprint:38–40, I1 |
| `transl_mem` | STANDING | blueprint:38–40, I1 |
| `holo` | STANDING | blueprint:38–40, I2 |
| `periodic` | STANDING | blueprint:38–40, I2 |
| `real` | STANDING | blueprint:38–40, I3 |
| `bounds`: `‖DH‖ ≤ M` | STANDING | blueprint:40, I4 |
| `bounds`: `‖X_H‖ ≤ M` | STANDING | blueprint:40, I4 |
| `bounds`: `‖DX_H‖ ≤ M` | STANDING | blueprint:40, I4 |
| `bounds`: `‖D²X_H‖ ≤ M` | STANDING | blueprint:40, I4 |
| `bounds`: `‖D²H‖ ≤ M` | STANDING | blueprint:40, I4 |
| `gamma_pos` | STANDING | blueprint:40–41 |
| `dio` at `ωstar` | STANDING | blueprint:41 |

The `hK` input to freq expands as follows; all are literal admissibility premises at `ω = s • ωstar`, not the frequency conclusion:

| Expanded input | Bin | Source at frozen-v1 |
|---|---|---|
| `r_pos` | STANDING | blueprint:94 |
| `β_pos` | STANDING | blueprint:94 |
| `ε_nonneg` | STANDING | blueprint:94 |
| `ε_le_one` | STANDING | blueprint:94 |
| `holo` | STANDING | B1, blueprint:97 |
| `primary` | STANDING | B1, blueprint:97 |
| `real` | STANDING | B1, blueprint:97 |
| `ball_sub` | STANDING | B2, blueprint:98 |
| `deriv_le` | STANDING | B3, blueprint:99 |
| `gram`: unit determinant | STANDING | B4, blueprint:100 |
| `gram`: inverse bound | STANDING | B4, blueprint:100 |
| `error_le` | STANDING | B6, blueprint:102 |
| `s_gt` | STANDING | blueprint:94 |
| `twist`: bordered unit determinant | STANDING | B5, blueprint:101 |
| `twist`: bordered inverse bound | STANDING | B5, blueprint:101 |
| `energy_le` | STANDING | B7, blueprint:103 |

Remaining top-level logical inputs:

| Export / input | Bin | Evidence |
|---|---|---|
| setting / `hs : 1 ≤ s` | SOURCE | design §B1 bridge; blueprint:44–46 gives `s > 1`, so the endpoint extension is stronger |
| ray / `hdio` | SOURCE | blueprint:41 and ray:50–58 |

Bin totals (expanded top-level inputs, including typing data): setting SOURCE 1, STANDING 21, TYPING 13, RULED 0, EXCESS 0; ray SOURCE 1, STANDING 0, TYPING 5, RULED 0, EXCESS 0; freq SOURCE 0, STANDING 37, TYPING 18, RULED 0, EXCESS 0. Inner ray implications are precisely the source's scaling, positive-dimension, and margin hypotheses; no extra premise was inserted.

## Proof and refutation pass

**Bridge.** Standing:49–59 copies Params, openness, integer-translation stability, holomorphy, periodicity, reality, and γ positivity. Its three K derivative bounds are exactly entries 2–4 of the five input bounds; `dH_le` is entry 1. The only frequency proof is `isDiophantine_smul hS.dio hs` from Linear/Tools:38–47. Neither the standing structure nor its inherited Params contains a KAM result, twist inversion, or frequency upper bound. No assumed result is smuggled through the bridge.

**Ray.** Standing:73–74 derives the exact distance identity by `sub_smul` and `norm_smul`. Lines 76–89 prove each affine endpoint distance decreases by at most `|s'-s|`, take the minimum, and multiply by the nonnegative norm. Lines 91–102 prove positive scaling coefficientwise and apply the lattice inequality at the single-coordinate vector. Lines 111–120 derive a positive margin from `d < ν'`, then positivity of both endpoint distances. Refutation tests: at ωstar=0 or n=0 the positive-margin antecedent is impossible; no division by its norm occurs. At arbitrary s or σω the Lipschitz estimate remains algebraically valid. The proof therefore does not need a hidden nonzero or positive-dimension premise for those clauses.

**Frequency.** At Standing:129–131, `(hS.setting hK.s_gt.le).toStanding` supplies K standing. `hK.r_pos`, `ε_le_one`, centre membership from `ball_sub` and `β_pos`, `deriv_le`, `gram`, and `error_le` instantiate `KAM.Apost.frequency` (Frame:423–435). It returns `γ ≤ ‖ω‖ ≤ 2nσKσB(M+ε) ≤ Θ`; transitivity gives the exact claim. The proof never asks for unbordered twist A5. B5 and B7 are source admissibility data but unused here, as expected. Θ has exactly the claimed dependence `(n,M,σK,σB,σT)`; no later torus, ray scalar, or error enters it.

## Definition classification

No new `def`, `abbrev`, or `structure` occurs in the I2-1 commit. Relevant inherited interfaces were nevertheless expanded and checked:

| Object | Classification and verdict |
|---|---|
| `IsoStanding`, Apost/Defs:46–62 | Literal source standing predicate; all fields classified above. PASS. |
| `rayMargin`, Apost/Defs:65 | Literal formula `min (s - 1) (σω - s) * ‖ωstar‖` on its entire real carrier; no fallback/choice. PASS. |
| `IsoAdmissible`, Apost/Defs:69–76 | Literal B1–B7 predicate extending `AdmissibleNoTwist`, Linear/Defs:124–137. The twist is bordered. PASS. |
| `Setting`, Linear/Defs:45–48 | K standing plus the source bound on DH. PASS. |

For each of these literal definitions: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. The ray formula was also checked by an `rfl` probe. Inherited `isoLimit`/`isoSLimit` removals in the broad diff belong to the fixed I-D0 package, not I2-1; they are not reintroduced or relied on here.

Frozen energyAverage and extendedTorsionAverage remain their period-one cube integrals, and extendedTorsion has the actual `DH(K)N` last row. These appear only in the source admissibility data for freq; the proof does not exploit any off-domain total inverse or integral value.

## Verification evidence

All commands ran in `/root/code/KAM-inp-i21`. No heartbeat, recursion-depth, or synthesis override was used.

1. Targeted gate build:

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i21 KAM.Iso.Apost.Standing
```

Output, exit 0:

```text
[inp-gate] slot 1 acquired 02:08:41 for KAM.Iso.Apost.Standing
Build completed successfully (3193 jobs).
```

The gate invokes `nice -n 5 lake build`; this was a targeted build using the existing snapshot, not a clean/library rebuild.

2. Exact signature/explicit-binder probe and axioms:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I21Audit1.lean
```

Probe generation: for each of `IsoStanding.setting`, `ray`, `IsoAdmissible.freq`, extract the complete `theorem <name> ... := sorry` command from design §B1, rename it to `audit_exact_0/1/2`, replace only `sorry` with `by exact IsoStanding.setting hS hs`, `by exact ray hdio`, or `by exact IsoAdmissible.freq hS hK`. Import only `KAM.Iso.Apost.Standing`, use its namespace/open declarations and operator matrix norm scope, and add the literal rayMargin equation with proof `rfl`. Append `#print axioms` for the three exports. Exit 0; exact output:

```text
'KAM.Iso.Apost.IsoStanding.setting' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.ray' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.IsoAdmissible.freq' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Frozen/provider type equality and a frozen seal-copy probe are N/A: I2-1 exports helpers, not the I-G1 provider. The above probes check all actual package exports against the complete design types instead. No frozen theorem was imported into the package probe.

3. Single kernel replay:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Standing
```

Output `replaying KAM.Iso.Apost.Standing`; exit 0.

4. Serialized final lint:

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely the allowed stale-root condition; exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (343 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Thus frozen file/prefix/suffix/definition guards and all 144 elaborated manifest declarations pass. The I-G1 manifest entry is still `DRAFT_SORRY`; successful ABI checks do not prove it.

5. `git diff --check`: exit 0, no output. The forbidden-token/override scan of Standing.lean found no matches. The file has 134 total lines, with copyright, `module`, public imports, module docstring, and `@[expose] public section`. It imports only Apost/Defs, Linear/Tools, and K Apost/Frame; the three clean axiom closures exclude transitive draft/provider proof use.

6. Protected paths:

```sh
git diff inp...HEAD -- KAM/Frozen manifest README.md
git diff inp...HEAD -- KAM.lean
git diff --quiet HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md
```

First command: empty (apart from the multiple-merge-base warning). Second: **nonempty**, 12 inherited generated root imports added, so the brief's literal broad-diff empty-root condition is not met. Third: exit 0, confirming the I2-1 commit changes none of the protected paths. This is an inherited comparison-scope note, not an unauthorized I2-1 edit. No root regeneration was performed.

## Findings, deviations, and closeout

No material mathematical mismatch or source defect survived the refutation pass. In particular, attempts to refute the ray at zero norm, empty dimension, and arbitrary endpoint parameters fail for the explicit reasons above. No new pinned-source erratum is alleged; external source PDFs were not re-audited. No mathematical deviation was introduced by this audit.

Notes: the handoff's line count is 132 rather than 134; the stated `inp-i11` comparison is still broader than the package commit; the broad diff has inherited generated-root changes and the live root omits this new module, producing the allowed lint warning. These facts qualify repository hygiene/scope, not the three proved helper statements.

Execution deviation: the first `sh scripts/lint_sources.sh` lacked `nice` and explicit `LEAN_NUM_THREADS=1`; its internal ABI subprocess briefly overlapped the exact-signature probe. After discovering this internal Lean invocation, all subsequent Lean invocations and the final lint were serialized, with the requested environment and priority. Initial lint output was the same root warning, module PASS, guard OK, and ABI OK; exit 1. This rerun does not erase the initial scheduling deviation.

Acceptance: all three exports inventoried, types matched, assumptions expanded, proof reviewed and refutation-tested, axiom closures clean, targeted build and kernel replay passed, final lint recorded, scratch probe removed. Only this audit report is created by the auditor. No seal, theorem-body completion, or audit of unrelated inherited I/N/P packages is claimed.
