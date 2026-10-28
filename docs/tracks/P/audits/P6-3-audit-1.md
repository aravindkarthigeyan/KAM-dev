# P6-3 independent audit 1

**Overall: FAIL for the full-comparison hygiene gate; all seven P6-3 public theorems PASS mathematical and signature review.** The blocking lint findings are inherited from before P6-3, not introduced by its reconstruction module. No mathematical repair to P6-3 is requested. The report does not certify the other packages in the broad comparison.

**Frozen anchors proved or sealed: none.** P6-3 is a helper package. Provider-versus-frozen-type and frozen seal-body probes are not applicable; no P-PLANAR, P-FIXED, or D25 headline is declared seal-ready by this audit.

## Scope and comparison evidence

Audited on 2026-10-28 in `/root/code/KAM-inp-p63`, at HEAD `fe7908fc7586c7230baa59b3afe928970eec4605`. Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the P6-3 handoff, design §2.3 and §7/P6-3, the reconstruction signatures, track-P statement, relevant frozen predicates and their definitions, and blueprint-P Part 6 (especially lines 153–205). The user's exact worktree report destination overrides the generic brief's main-worktree destination. No subagents, source edits, commits, or generated-file updates were used.

Both requested comparisons were inspected:

- `git diff inp...HEAD`: Git warns `multiple merge bases, using f936b66a002c430909fcf877131be1590b3d5970`. The two merge bases were `f936b66a002c430909fcf877131be1590b3d5970` and `370c0bac661297ae63552bb547c97bdf1b18cb0c`.
- `git diff inp-p61...HEAD`: `inp-p61` resolves to `f936b66a002c430909fcf877131be1590b3d5970`. Both comparisons initially show 67 changed files, 26062 insertions and 7365 deletions, including inherited packages, graph reports, and generated root imports.
- `git diff HEAD^ HEAD --name-status` isolates P6-3: exactly `A KAM/Planetary/Newtonian/Reconstruction.lean`, 329 total lines. Parent `f81e9f2` is the merge of P6-1. The other 66 files and all eight added generated-root imports already occur in `git diff inp-p61...HEAD^`.

The shared `inp` ref advanced during the audit: initial recorded value `b0fa8bd98cf7cb958cb7e7e08fd50f4de39cd89c`, later `3a5a42751dcd6308d7f3c8eb922e72a47bf00a27`. HEAD and the audited reconstruction hash remained unchanged. Use the pinned merge base above to reproduce the broad comparison rather than assuming a stationary shared branch.

| Input | SHA-256 |
|---|---|
| `KAM/Planetary/Newtonian/Reconstruction.lean` | `e29f80ba99b581db2aaf40df3b345e252d90a8ed87f9349a29842f079ca0facb` |
| `blueprint-P/parts/p6-newtonian-models.tex` | `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5` |
| `/root/code/KAM-inp-design-kep/.drafts/design/KeplerSignaturesP.lean` | `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8` |

## Declaration ledger

All names are in `KAM.Planetary`; lines refer to `Reconstruction.lean`. Each signature is identical after removing whitespace to both the design document's signature and the external `KeplerSignaturesP.lean` draft. Each design signature was also independently elaborated as a fresh `example` applying the actual theorem with every explicit argument in order.

| Blueprint node | Public declaration / line | Verdict | Reason |
|---|---|---|---|
| `bpP:p6:reconstruction` | `reconstruction`, 233 | PASS | All three Newton clauses on arbitrary `J`; mass array is exactly `fun k => G * actualMasses m0 m μ k`; no assumed Newton dynamics. |
| `bpP:p6:reconstruction` | `reconstruction_all_time`, 246 | PASS | Specializes to `J = Set.univ` and packages the literal frozen `IsNewtonSolution G` with actual masses. |
| `bpP:p6:units` | `isNewtonSolutionOn_of_isMovingSolutionOn`, 258 | PASS | Specializes both `G` and `m0` to 1, extracts collision freedom and the guarded Hamilton derivative, rewrites `1 * mass = mass`. |
| `bpP:p6:reconstruction-fixed` | `reconstruction_fixed`, 271 | PASS | Both collision exclusions and both derivatives on arbitrary `J`; force, sign, carrier and pair order match. Arbitrary real `G` strengthens blueprint positivity; arbitrary real ε is explicitly allowed by the node. |
| `bpP:p6:reconstruction-fixed` | `reconstruction_fixed_all_time`, 292 | PASS | Exactly the four conjuncts of frozen `IsFixedSolution`, with `Q_i = q_i` and `V_i = p_i / m_i`. |
| `bpP:p6:orbit-transfer` | `orbit_transfer_moving`, 304 | PASS | Uses only clause (viii) of the physical torus plus collision freedom to discharge the Hamilton-orbit input to reconstruction. |
| `bpP:p6:orbit-transfer` | `orbit_transfer_fixed`, 315 | PASS | Same orbit argument for the fixed Hamiltonian; no additional orbit or force hypothesis. Allows arbitrary real `G, ε`, a valid strengthening. |

All seven allow `n = 0` where well typed, strengthening the standing blueprint convention `n ≥ 1`. There are no constants with widened dependence, changed norms, weakened conclusions, or extra proof-shaped premises. The literal source hypotheses `hG` in moving reconstruction and `hm0` in fixed reconstruction are retained even where algebra does not require them. Their redundancy introduces no meaning change.

Ten private theorems were reviewed as implementation steps: `sum_filter_ne_zero`, `sum_filter_ne_succ` (finite body-index splitting); `hvf_moving_pos`, `hvf_moving_mom`, `hvf_fixed_pos`, `hvf_fixed_mom` (P6-1 field projections); `smul_accel` (mass cancellation); `planeLength_pos_barycentric` (`rc-a`); `hasDerivAt_barycentricPositions` (`rc-sun`, `rc-planets`); and `hasDerivAt_barycentricVelocities` (`rc-vplanet`, `rc-vsun`). They implement the blueprint's steps without replacing its public contracts.

## Refutation and premise review

The P6-1 vector-field lemmas require `NoCollision` at the evaluated phase point, and each call supplies exactly that fact. `hasDerivAt_bodyVector` is applied to the given full Hamilton derivative, then projected to the appropriate position or momentum component. No inverse implication or hidden differentiability premise is assumed.

For the moving position derivative, lines 141–143 establish `D = m0 + μ * ∑ i, m i ≠ 0` from positive `m0`, positive weights, and `μ ≥ 0`. Lines 153–161 prove

`∑ i, m i • q_i' = (1 + (μ / m0) * ∑ i, m i) • P`,

and hence `Q_0' = (-μ / D) • ((D / m0) • P) = (-μ / m0) • P = V_0`. Each individual `m i` is nonzero by `hm`; `m0` is nonzero by `hm0`. Planet derivatives then add `Q_0'` to the heliocentric derivative, cancelling the common momentum term.

For the moving acceleration, `sum_mass_smul_fKernel` discharges action–reaction in the Sun component; it is proved upstream, not assumed as a new premise. The planet component cancels its own positive weight via `smul_accel`, separates the Sun index from planet indices, and uses the actual planet mass `μ * m j`. P6-2 barycentric identities have their unconditional signatures instantiated directly. The Sun–planet reversed difference is handled by negation and evenness of physical length; the planet–planet ordered differences and inequalities are handled with the correct reversed indices. The force factor is `G * actualMasses`, exactly once.

Neither reconstruction divides by μ. Thus `μ = 0` is included: the Sun is stationary and planets obey the test-particle central-force equations. Arbitrary, empty, disconnected, closed, or singleton `J` creates no extra assumption: the curves are globally typed and `HasDerivAt` is asserted at each selected time, rather than a weaker within-set derivative.

In the fixed proof only `m i ≠ 0` is needed for acceleration cancellation; `hm0` is redundant, retained as in the design. The derivation is valid even for nonpositive `G` and arbitrary ε; no unphysical division branch is exploited. In both orbit transfers the tuple destructuring selects precisely the eighth conjunct of `IsPhysicalTorus`, so the derivative of `t ↦ K (φ + t • w)` is supplied directly. No KAM existence or ODE existence is claimed by these conditional transfer helpers.

## Definitions and imports

New `def`, `abbrev`, or `structure`: **none**. No selected witnesses, fallback objects, instances, or bundled hard steps are added.

| Existing definitions used | Classification |
|---|---|
| `bodyVector`, `actualMasses` | Literal block projection and actual mass array `(m0, μm_i)` on their full carriers. |
| `barycentricPositions`, `barycentricVelocities` | Frozen totalized physical formulas; every mass denominator that is cancelled is proved nonzero. No theorem relies on a junk division value. |
| `planeLength`, `NoCollision` | Physical Euclidean planar length and strict exclusion of central and pair collisions; ambient coordinate types remain Pi spaces. |
| `IsNewtonSolutionOn`, `IsNewtonSolution`, `IsFixedSolution` | Literal collision and Newton derivative predicates; the interval predicate absorbs `G` into its mass argument. |
| `IsMovingSolutionOn` | Guarded Hamilton derivative for `movingHamiltonian 1 1`, plus collision freedom; its domain condition in `Set.univ` is harmless typing data. |
| `IsPhysicalTorus` | Frozen torus predicate; only its explicitly supplied flow derivative clause is used for transfer. |

Recursive inspection of all 50 reachable project modules found no provider import and no frozen theorem import. Direct frozen imports are definitions only. Axiom checks independently exclude transitive dependence on a draft proof.

## Exact verification evidence

All Lean activity initiated by this audit was sequential with `LEAN_NUM_THREADS=1` and `nice -n 5`. The build went through the prescribed compile gate, whose implementation supplies `nice -n 5`. Lint was run only after the build, probe and replay finished because its ABI check can invoke Lean. No heartbeat, recursion, synthesis-budget, cache, clean, or dependency override was used.

Targeted build:

```text
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p63 KAM.Planetary.Newtonian.Reconstruction
[inp-gate] slot 1 acquired 01:04:21 for KAM.Planetary.Newtonian.Reconstruction
⚠ [9087/9096] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9096 jobs).
exit 0
```

The two inherited warnings also include Lean's standard suggestions to remove/rename the binder or disable the unused-variable linter; those repetitive hints are omitted here. No suggestion to change options was followed. The Lake job count is not a count of fresh Lean compilations.

Signature and axiom probe (scratch SHA-256 `d64a3ab7d0910ae5e2a08011edafe6e94f14a2d7c39903d9822f624e746e1b75`):

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P63Audit.lean
'KAM.Planetary.reconstruction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.reconstruction_all_time' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.isNewtonSolutionOn_of_isMovingSolutionOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.reconstruction_fixed' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.reconstruction_fixed_all_time' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.orbit_transfer_moving' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.orbit_transfer_fixed' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

Kernel replay, one invocation for the sole new lemma module:

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Newtonian.Reconstruction
replaying KAM.Planetary.Newtonian.Reconstruction
exit 0
```

Source lint, complete output:

```text
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
Lean lines over 100 characters:
/root/code/KAM-inp-p63/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-p63/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-p63/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-p63/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (273 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

Static checks:

- `git diff --check HEAD^..HEAD`: exit 0, no output. The new module contains no forbidden tokens or `set_option`, has no line over 100 characters, and has copyright, `module`, public imports, module docstring and `public section`. Its 329 lines are below 1500; no new definition requires exposure.
- `git diff --check inp...HEAD` and `git diff --check inp-p61...HEAD`: exit 2, four trailing-whitespace findings at `docs/graph/P/reviews/P-p0-delta.md:3,4` and `docs/graph/P/reviews/P-p14b-review.md:3,4`. All are inherited Markdown hard-break spaces. The first command additionally emits the multiple-merge-base warning quoted above.
- `git diff inp...HEAD -- KAM/Frozen manifest README.md` and its `inp-p61` counterpart: no diff output (the first additionally prints the merge-base warning).
- The required broader protected-path check including `KAM.lean` is **not empty**: it shows eight added imports, all inherited before P6-3. `git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty. Thus this report does not falsely certify the broad protected-path gate as passing.

## Findings, errata and disposition

**H1 — blocking full-branch hygiene failure, inherited.** The audit brief permits the generated-root lint notice as its sole exception. The four overlong `KAM/Kepler/Orbit.lean` lines are additional lint failures, so the full-branch hygiene gate fails. `git show HEAD^:KAM/Kepler/Orbit.lean` confirms the identical lines already exist in the parent, with lengths 103, 107, 102 and 105 respectively. The orchestrator should wrap those four lines and rerun lint before accepting a clean full-branch gate. The eight inherited root imports also prevent an unqualified claim that the broad protected-path diff is empty; this is comparison provenance, not a P6-3 unauthorized edit. No repairs were made under the read-only audit rule.

**B1 — minor blueprint normalization typo, nonblocking.** At `blueprint-P/parts/p6-newtonian-models.tex:165`, the parenthesis says “for $G=1$ it is … `actualMasses 1 m μ`”. Setting only `G=1` leaves the Sun entry `m0`, not 1. The replacement should say **“for $G=m_0=1$”**; equivalently the general `G=1` specialization must retain `actualMasses m0 m μ`. For example `m0=2` keeps Sun mass 2. The surrounding units remark at line 180, both design signatures, and the proved Lean normalization helper already use the correct joint specialization. No Lean theorem relies on the erroneous parenthesis. This is a blueprint wording defect, not an identified defect in a pinned literature source.

No suspected pinned-source erratum was identified; this audit did not independently re-audit the Fejoz PDFs. No new mathematical deviation was introduced. Valid strengthenings are the `n = 0` coverage and the fixed-model arbitrary-real-`G` coverage already encoded by the design. The retained redundant positivity hypotheses are nonblocking and match the signatures exactly.

The seven helpers have checked proofs and the intended source-facing statements. The overall FAIL is confined to the explicit full-comparison hygiene requirement above. It does not assert a false reconstruction theorem or reopen a frozen statement. Downstream torus existence, tube bounds, assembly, positive measure, uniqueness and headline proof closure remain outside this package audit.

Only this report was added as an audit deliverable. The initially untracked handoff was left untouched. The scratch probe was removed after recording its hash and results; production sources, frozen files, manifests, generated files and Git state were not edited.
