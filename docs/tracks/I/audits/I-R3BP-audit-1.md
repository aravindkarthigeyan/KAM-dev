# I-R3BP independent package audit 1

Verdict: **PASS (seal-ready)** for `iso.restricted_near_circular.v1`, subject to the orchestrator performing the seal. No material proof or statement defect found in the audited diff. Documentation and harmless linter notes are recorded below. The current frozen export remains **FROZEN_UNPROVED** (`DRAFT_SORRY`); this report does not seal it or claim track-I closure.

## Scope, authority, and frozen snapshot

Audited on 2026-10-28 in `/root/code/KAM-inp-ir3bp`. The user's explicit report destination overrides the generic brief's main-worktree destination. Repository changes are restricted to this report; the transient probe is deleted after verification. No commits, repairs, frozen edits, dependency edits, or generated-file edits.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and `docs/tracks/I/audits/I-R3BP-handoff.md`. Applied manuscript-audit tier 2 and the exact-type/binder/definition/axiom checks from lean-statement-audit, scoped to provider seal readiness. This is an independent audit of the submitted implementation, with a separate adversarial pass over possible premise, normalization, quantifier, and quarantine failures. It does not repeat the entire pre-existing mathematical campaign or a new literature audit.

- HEAD: `63688ceabce6b07d6cd64f19baba7446f9f5b82f`.
- `inp` at initial comparison: `59aa6ce896afaa3cf07fb4a97bd4f3e4be494c00`.
- Required `git diff inp...HEAD` warns: `multiple merge bases, using a5a84d778af8754a3c9450e997ee74955f470552`.
- `git merge-base --all inp HEAD`: `a5a84d778af8754a3c9450e997ee74955f470552`, `c1f3255083e75a0d394e097699d59c1ef196588a`.
- The selected three-dot diff contains **two** Lean files: `Constants.lean` (+195 lines) and the provider (+52 lines). Both were audited, including every new public declaration. The handoff's narrower `git diff a1f36d2..63688ce` contains only the provider; it was checked as supplemental evidence and did not narrow the requested scope.
- Initial worktree status: only the supplied untracked `docs/tracks/I/audits/I-R3BP-handoff.md`.

Snapshot SHA-256:

| Path | Hash |
|---|---|
| `KAM/Provider/Iso/RestrictedNearCircular.lean` | `76d50d966091727b93c575fb7e765d0a9ff8ac87dbaabc8cc7b2c70613b00219` |
| `KAM/Iso/R3bp/Constants.lean` | `50242adead14d397f2e2c6342b732a0dbf63b80dd8c65f2648a9c1905bb92018` |
| `KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean` | `bafd9ad666bf857936ebfa5388861f0a2c22ffab011e122afef3f3b0e4a83373` |
| `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean` | `2687ac27147e2f8651d5be9c636ddb018b670bd9b55be0de5082390a829cb538` |
| `blueprint-I/parts/p8-r3bp.tex` | `69c7b6913a1f422a509d85d508984730b25aa818fec63fd297a42ee5463b8a0b` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |

Manifest identity: `iso.restricted_near_circular.v1`, export `KAM.Iso.restricted_near_circular`, kind theorem, state `DRAFT_SORRY`, owner approval D20, ABI `51ef78464ec9887a4af758841d92ff8ebd3a8b16d5455a50490c8df10bf6cc2e`. Its imported predecessor is `iso.all_time_confinement.v1`, state **SEALED**, ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`. Source metadata names `KAM-dev@b1422e0 docs/tracks/I/statement.md`, §I-R3BP, an adopted derived application rather than CC03's numerical theorem. All ten definition-closure file hashes across the two manifest entries independently recomputed equal their manifest values.

## Declaration ledger

Names in the first twelve rows are in `KAM.Iso.R3bp`; the last is fully qualified.

| Blueprint node / role | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bpI:p8:constants`, ν₀ | `shellNu` | PASS | Literal `min rmin (1 − ρmax)` |
| constants, μ₀ | `r3bpMu0` | PASS | Exact design departure D2: denominator `abs CF + 1` |
| constants, d | `r3bpD` | PASS | Literal ν₀/2 |
| constants, R | `r3bpR` | PASS | Literal square root of 2/rmin |
| shift-smallness adapter | `exactMu2_safe_pos` | PASS | Positivity from safe radii and explicit `shiftEps` formula |
| constants positivity | `shellNu_pos` | PASS | Both min operands positive from safe radii |
| constants positivity | `r3bp_constants_pos` | PASS | All four required bounds; only parameter premises and εH positivity |
| `stepI:p8:pf-small` | `r3bp_small` | PASS WITH NOTES | Correct strict smallness and absolute-value bound; `hp` is unused here (harmless, matches the design signature) |
| `stepI:p8:bd-r` adapter | `delaunay_radius_bounds` | PASS | Exact Kepler radius bounds on `deDom`; no independent eccentricity assumption |
| `stepI:p8:bd-p` adapter | `delaunay_energy` | PASS | Exact Kepler energy on the chart domain |
| `bpI:p8:bounds` | `delaunay_orbit_bounds` | PASS | Safe compact extrema plus energy give physical Euclidean radius and momentum bounds |
| `pf-coord`, `pf-small`, `pf-sol`, `pf-bounds`, `pf-dist` | `r3bp_core` | PASS | Produces constants, perturbation premises and preimage before consuming an actual global Hamiltonian solution; an internal conditional transformation, not an assumed I-R3BP result |
| `bpI:p0:r3bp`, `pf-head`, `pf-uniq` | `KAM.Provider.Iso.restricted_near_circular` | PASS (seal-ready) | Exact frozen type; actual sealed I-HEAD application plus transfer and unrestricted physical uniqueness |

No new abbrev or structure is introduced by the diff.

## Binder and consumption audit

The frozen declaration at `RestrictedNearCircular.lean:47` and provider at `RestrictedNearCircular.lean:32` agree, including implicitness, binder order, carriers and every conjunction. Source: `docs/tracks/I/statement.md:176–254`, blueprint `bpI:p0:r3bp`, and Part 8 `bpI:p8:dependence`. The following table expands all outer provider inputs; `R3bpParams` has exactly the six displayed logical fields (`Region.lean:40–46`). There are no instance or hidden assumption binders.

| Input | Bin | Source / use |
|---|---|---|
| `{aMinus : ℝ}` | TYPING | Semimajor-axis endpoint; source initial region |
| `{aPlus : ℝ}` | TYPING | Semimajor-axis endpoint; source initial region |
| `{eMinus : ℝ}` | TYPING | Eccentricity endpoint; source initial region |
| `{ePlus : ℝ}` | TYPING | Eccentricity endpoint; source initial region |
| `ha : 0 < aMinus` | SOURCE | Safe inner semimajor axis, action region; packed at provider:50 |
| `haa : aMinus < aPlus` | SOURCE | Nonempty axis interval and action region |
| `he : 0 < eMinus` | SOURCE | Enlarged safe region stays away from circularity |
| `hee : eMinus < ePlus` | SOURCE | Nonempty eccentricity interval |
| `heSmall : ePlus < 1/4` | SOURCE | Safe enlarged eccentricity remains below one; arithmetic of safe enlargement |
| `hinner : aPlus * (1 + ePlus) < 1` | SOURCE | Safe outer radius below one, secondary exclusion, analytic shift |

Counts: SOURCE 6, STANDING 0, TYPING 4, RULED 0, EXCESS 0. Packing does not add a premise. The source convention and D20 govern the physical model; they are not extra logical hypotheses.

Helper premise inventory (all are explicit in the design signatures or the local source step): `exactMu2_safe_pos`, `shellNu_pos` take the same six-field parameter package; `r3bp_constants_pos` and `r3bp_core` additionally take arbitrary εH>0; `r3bp_small` additionally takes μ≥0 and μ<μ₀; the two Delaunay adapters take only chart membership; `delaunay_orbit_bounds` takes a compact safe action set, positive lower radius, chart membership and action membership. These are internal local-lemma domains, not extra premises on the frozen result. `SafeAction`, `HeadData`/`BaseData`, and `PerturbData` were inspected: the latter bundles only the actual I-HEAD premises, with the smallness proof supplied separately. No conclusion is hidden as an assumption.

Point-of-use trace against design §11.2:

1. Provider:50–54 derives `hp`, then `r3bp_headData hp`, then calls **the sealed frozen** `KAM.Iso.all_time_confinement` with all its premises, including η=1. The returned εH is chosen from endpoint data before μ or z₀.
2. Provider:55–57 obtains μ₀,d,R and positivity from `r3bp_core hp hεH`, proves openness and nonemptiness, then introduces μ≥0, μ<μ₀ and z₀∈NearCircular. All constants have the required uniform dependence.
3. Provider:58–62 consumes the actual perturbation package (holomorphy, period-one periodicity, reality, nonnegative size, size bound), strict ε<εH, and initial action membership. The I-HEAD result supplies `zt`, `hzt0`, `hzt` as terms. The unused confinement and uniqueness clauses can be discarded because `IsHamiltonianSolutionOn` already includes action-domain membership.
4. `Constants.lean:154–171` constructs the initial Delaunay preimage and its exact inverse period-one scaling, then invokes `transfer` on the actual `zt` to obtain a physical solution. No time reparametrization is introduced. At :172–191 it recovers safe action membership for every time, applies Kepler energy/radius estimates, and invokes `Collision.shell_exclusion` for both primaries.
5. Provider:63–65 consumes that transformed global solution and uses `restricted_unique` with `hy0.trans hz0.symm`. The competitor needs only the frozen physical solution predicate on `(a,b)`; there is no chart or confinement condition on it. The existing uniqueness proof uses `restricted_reduction` and general ODE uniqueness on the collision-free open domain.

Nested source quantifiers are preserved: μ≥0 and μ<μ₀, then z₀ and its membership, then the global witness, then every real time for all four physical bounds; competitor a,b,y with a<0<b, matching initial value and the local solution predicate, then every t∈(a,b). In particular μ=0 is retained, both primaries remain excluded, and NearCircular itself is never asserted invariant. The physical `radius` is the Euclidean length on `Fin 2 → ℝ`, separate from its analytic sup norm.

## Definitions and adversarial pass

All four new definitions are **literal auxiliary formulas**, not characterization-defined or arbitrarily chosen objects:

| Definition | Whole-carrier meaning / source |
|---|---|
| `shellNu K` | Minimum of existing real extrema, design §N / blueprint constants |
| `r3bpMu0 K εH` | Explicit four-way minimum with a strictly positive `abs exactCF + 1` denominator, design D2 |
| `r3bpD K` | Half the shell margin |
| `r3bpR K` | Real square root of 2/kRmin, intended bound on the safe locus |

For each: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. Total real division/square root outside a safe K is ordinary auxiliary formula evaluation; no theorem relies on its sign or physical meaning there. Positivity and all physical uses are proved on `safeK`, never obtained from an off-domain fallback. There is no new choice, junk branch, or assumed characterization.

Refutation pass: tried post-μ dependence (excluded by both term order and exact type), an unfilled Hamiltonian-solution premise in `r3bp_core` (filled at provider:60–63), a chart restriction on competitors (absent), μ=0 exclusion (absent), a max-norm substitution for physical distance (absent), hidden perturbation nonnegativity (proved upstream from the norm bound on a nonempty domain), and importing an unproved predecessor (none). The alternative μ₀ formula was checked against design D2 and its actual strict-smallness proof; it is a documented smaller existential witness, not a weakened frozen conclusion.

Import closure: a recursive source-import scan reached 222 project modules and found **zero imports of DRAFT_SORRY anchors** from the provider closure. Direct provider imports are only Constants, HeadData, Uniqueness and the private SEALED AllTimeConfinement anchor. The only provider-import edges in the closure are sealed-anchor-to-own-provider edges (AllTimeConfinement, IsoenergeticKam, VolumeNotDiophantineLe), allowed by quarantine. No direct bypass to another provider.

## Independent verification

All Lean/lake/checker invocations in this audit were serialized, with `LEAN_NUM_THREADS=1` and `nice -n 5`; the targeted build used the mandated gate. No budget overrides, clean, update, cache download or broad rebuild.

### Targeted build

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-ir3bp KAM.Provider.Iso.RestrictedNearCircular
```

Exit 0. Output ends `Build completed successfully (9268 jobs).` Gate acquired slot 1. These are Lake's reported jobs, not a claim that dependencies were rebuilt. Replayed warnings: two unused variables in `KAM/Kepler/Energy.lean:106`, an unused section variable in `KAM/ODE/Exit.lean:36`, and `Constants.lean:76:20: Variable name hp is not explicitly referenced.` No provider warning or elaboration failure.

### Exact type, seal body, and axioms

Transient file `.lake/abi-scratch/AuditIR3bp1.lean` imports the frozen target and provider. It checks:

```lean
example : type_of% @KAM.Iso.restricted_near_circular :=
  @KAM.Provider.Iso.restricted_near_circular
example : type_of% @KAM.Provider.Iso.restricted_near_circular :=
  @KAM.Iso.restricted_near_circular
example : @KAM.Provider.Iso.restricted_near_circular =
  @KAM.Iso.restricted_near_circular := rfl
```

It also copies the **actual frozen declaration text**, renames only the theorem to `audit_proposed_seal`, and substitutes precisely this seal body, with all six explicit binders in frozen order:

```lean
by exact KAM.Provider.Iso.restricted_near_circular ha haa he hee heSmall hinner
```

Command: `env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/AuditIR3bp1.lean`. Exit 0, no errors or warnings. `#print axioms` output:

```text
'KAM.Provider.Iso.restricted_near_circular' depends on axioms: [propext, Classical.choice, Quot.sound]
'audit_proposed_seal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.all_time_confinement' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.restricted_near_circular' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.exactMu2_safe_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.shellNu_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.r3bp_constants_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.r3bp_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.delaunay_radius_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.delaunay_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.delaunay_orbit_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.r3bp_core' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The target's `sorryAx` is its still-authorized draft body, not a dependency of the provider. Equality by proof irrelevance does not prove axiom cleanliness; the separate provider and proposed-seal axiom checks establish that.

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Provider.Iso.RestrictedNearCircular KAM.Iso.R3bp.Constants
```

Exit **0**. Exact output:

```text
replaying KAM.Iso.R3bp.Constants
replaying KAM.Provider.Iso.RestrictedNearCircular
```

### Lint and boundary checks

Command: `env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`. Exit **1 solely for the brief-allowed stale generated root**. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (393 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is the expressly permitted lint exception, not a fully zero-exit lint run. The generated file was left untouched.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty (apart from the multiple-merge-base warning). `git diff --check inp...HEAD`: exit 0. Forbidden-token scan of both changed Lean files: no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace` or resource-limit override. File sizes: provider 67 lines; Constants 195 lines. Both have copyright, `module`, imports, module docstring and `public section`; definitions are under `@[expose] public noncomputable section`.

## Notes, source defects, and limitations

No new suspected defect in a pinned external source was found. This is a local package audit against the approved frozen surface and the current blueprint/design, not a renewed audit of Chi05 or HL19, nor a fresh proof audit of the pre-existing I-HEAD and Kepler implementations.

- **Existing documented departure D2, not a blocker:** blueprint `p8-r3bp.tex:199` writes `εH/CF`, whereas Constants:43–44 uses `εH/(|CF|+1)`. Design §0 item 7 and §5 D2 explicitly prescribe the latter. The source now states CF>0 at :195; the Lean choice avoids needing that exported positivity lemma. Since the theorem promises existence of μ₀, the smaller positive witness preserves the contract. No repair requested.
- **Stale explanatory prescription, not a frozen statement defect:** `docs/tracks/I/statement.md:247` says “choosing its η smaller than that enlargement.” Current blueprint Part 8:15–20 explicitly says “No margin condition on η is needed (we take η=1).” The proof legitimately uses η=1 because action membership in the safe B is part of the actual solution predicate. Rechecking the solution definition and blueprint refutes any claim that this blocks the provider; the statement note should be refreshed by its owner.
- **Historical design statuses:** design §2 says “I-G1 is DRAFT_SORRY” and “I-HEAD is likewise unsealed.” These are old scheduling notes, superseded by the current manifest and the standard-only axiom check of I-HEAD. They do not forbid consumption of the sealed predecessor under the corrected audit brief.
- **Handoff scope:** “only file changed” is accurate for `a1f36d2..63688ce`, but not for the requested three-dot diff; the additional Constants module has been covered here. The handoff's “none” under deviations does not erase the earlier documented D2 departure.

No implementation changes were made by the auditor. The provider is ready for the orchestrator's separate sealing step; until then the frozen target retains its draft proof status. All audited new declarations are classified, and no material finding remains open.

Closeout: temporary probe deleted; report destination verified inside this worktree; report whitespace check passed. Only this audit report was created by the auditor outside permitted transient build/probe artifacts.
