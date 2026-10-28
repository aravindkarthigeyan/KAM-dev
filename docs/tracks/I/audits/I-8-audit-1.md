# I-8 independent package audit 1

Verdict: **PASS WITH NOTES** for the I-8 infrastructure package at
`f3313b63f3b244fafba6630241170bd56f7e3415` (2026-10-28).
No mathematical defect, excess hypothesis, or unauthorized axiom was found in
`KAM/Iso/PeriodOne.lean`. All five designed exports have exactly the designed
signatures; all 21 public theorem axiom checks and kernel replay passed.
The notes concern the comparison baseline and generated root, not proof validity.

This is not a frozen-anchor seal: I-8 supplies the Part-7 infrastructure consumed
by the future I-R3BP assembly. Provider/frozen-type equality and seal-body probes
are **N/A** because I-8 introduces no provider or frozen anchor. In the current
manifest I-G1, I-HEAD and I-R3BP remain `DRAFT_SORRY` / `FROZEN_UNPROVED`;
I-KEPLER is already `SEALED` and is not resealed by this package.

## Scope, authority, and frozen inputs

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the external
`/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the I-8 handoff,
`docs/tracks/I/statement.md`, the four frozen Track-I theorem anchors and the
definitions used here. Followed the handoff's focus on design §7/§7.1 and
blueprint nodes `bpI:p7:period-one`, `bpI:p7:transfer`, `bpI:p7:nondeg`.
The user's exact worktree report destination overrides the brief's generic
main-worktree destination. Only this report is added; probes are temporary under
`.lake/abi-scratch/`. No source repair, commit, or other state-changing git action.

Method: focused tier-2 statement/proof audit, with separate adversarial and
hygiene passes. The hypotheses and source meanings were reconstructed from the
design and blueprint, then compared with the implementation. No subagents.
Existing dependency proofs were inspected at the interfaces used below, not
independently re-audited in their entirety; the requested module was kernel-replayed.

| Input | Frozen identity / SHA-256 |
|---|---|
| HEAD | `f3313b63f3b244fafba6630241170bd56f7e3415` |
| `inp` | `4e7e06bbd00a96e192cd1c1f0857ce3366ffd164` |
| `inp-i7` | `411a0ac6754be205993d317dbbaf7a6b2ca98cff` |
| `KAM/Iso/PeriodOne.lean` | `c3ab8a647907df3b3ed887a4192a952f37aea30618fbeb6895ba1cdf5a4282cc` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `7c680968ef6f380e4497823a0333ee989b84cf480755d69e474f2d04826e87c8` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `blueprint-I/parts/p6-kepler.tex` | `b623ce5f8d2fc890834e5073dbc3c06701ac27ce7e5014efacadfb5107249bb6` |
| `docs/tracks/I/statement.md` | `060e16321cf4c51b6bf2219d5c4c542e6a5678807b16de0f25f6fdec979ea3ae` |
| `manifest/frozen-anchors.json` | `a7d55a9a566d7d8408d455b1bfb2cc71bb9229baae5d1c547c96d9147159f8f3` |
| I-8 handoff (initially untracked) | `3d62e93b2582a413a5412d2c47b43a45a6a565ecfdbb36b6ff960290a972762c` |

`git diff inp...HEAD` was examined as requested. Git warns:
`inp...HEAD: multiple merge bases, using c2d70f9f451c8fb0085e72e5dd20cc4cd18afb70`.
The two merge bases are `c2d70f9f451c8fb0085e72e5dd20cc4cd18afb70` and
`29fafd025364540626d0c289039e451ed815e986`. Both the requested comparison and
`git diff inp-i7...HEAD` include 57 files, with inherited Apost and graph/report
changes outside I-8. They are not all the work of this package.

The isolated package delta is `git diff d9e908c..HEAD`, after the merge of I-7:
one new file, `KAM/Iso/PeriodOne.lean`, 442 lines. The three I-8 commits are
`963a9c1`, `d1e98c1`, `f3313b6`. This isolation supplements, rather than replaces,
the requested broad comparison.

## Declaration ledger

Names below are under `KAM.Iso`; `Aux.` abbreviates `PeriodOneAux.`. Locations
refer to the frozen HEAD above. Every new public declaration is listed.

| Node / step | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| period-one definition | `tildeF` (52) | PASS | Literal `μ * exactF K (periodOneMapC z) μ`; no branch or new choice. |
| po-dom | `Aux.exactDelta_pos` (61) | PASS | Produced from `exact_radius_spec`, not assumed. |
| po-dom | `Aux.exactDelta_le_half` (64) | PASS | Combines radius subordination and complex-domain bound. |
| po-dom | `Aux.action_bounds` (73) | PASS | Derives positivity, `2*r₀ ≤ J₀`, and `2π*kLMin ≤ J₀`. |
| tr-open | `Aux.isOpen_complexStrip` (86) | PASS | Finite intersection of strict continuous inequalities, all widths. |
| tr-open | `Aux.isOpen_actionNbhd` (93) | PASS | Union of complex open balls; arbitrary B and radius. |
| tr-open | `Aux.continuous_phaseToC` (99) | PASS | Coordinatewise real-to-complex inclusion. |
| tr-open | `Aux.phaseToC_mem` (104) | PASS | B-membership gives real-point membership for positive radii. |
| po-dom | `Aux.periodOneMapC_mem_UDelta` (113) | PASS | Correct reciprocal scaling in the sup norm. |
| po-prop | `Aux.re_keplerRotH_period` (141) | PASS | Exact real converted Hamiltonian formula. |
| po-exact / tr-open | `Aux.periodOne_real` (149) | PASS | Full real tube, not just B: deDom, reality, collision freedom and energy identity. |
| po-prop | `Aux.differentiable_periodOneMapC` (185) | PASS | Entire complex linear map. |
| po-prop | `Aux.norm_ofReal_lt` (191) | PASS | Complex norm equals real absolute value. |
| po-prop | `Aux.tildeF_differentiableOn` (194) | PASS | Composes joint holomorphy with the proved domain inclusion. |
| po-prop | `Aux.delaunayC_add_int` (214) | PASS | All integer angle shifts, including negative ones; no μ premise. |
| po-prop | `Aux.tildeF_periodic` (232) | PASS | All integer period-one shifts; stronger in μ than needed. |
| period-one (d) | `delaunay_periodOne_symplectic` (254) | PASS | Exact design signature; factor 1 on the preimage of deDom. |
| period-one | `period_one` (274) | PASS | Exact design signature: positive radii, domain, holomorphy, bound, periodicity, reality and exactness. |
| tr-open utility | `hamiltonianVectorField_congr` (327) | PASS | Conditional congruence helper; derivative equality is supplied inside transfer. |
| transfer | `transfer` (334) | PASS | Exact design signature; genuine restricted solution and closed radius interval. |
| transfer | `transfer_identities` (393) | PASS | Exact design signature; radius, L/G/a/e recovery and physical energy. |
| nondeg | `nondeg_exact` (422) | PASS | Exact design signature: positive first action and determinant `3/I₀^4` on the full real tube. |

The five designed theorem types were extracted from the embedded
`section Part7PeriodOne` of the design (lines 1649–1714), with `:= sorry`
replaced by applications of the actual exports under anonymous fresh declarations.
All five signature strings also match after whitespace removal. The handoff's
`.drafts/design/KeplerSignatures.lean` is absent in this worktree; the design's
embedded signatures supply a reproducible comparison surface.

`period_one` splits symplecticity into the separate designed export, and the
reality of the integrable Hamiltonian is provided by existing `keplerRotH_real`
and the new real-formula helper. `nondeg_exact` states the determinant value and
positive action; positivity/nonvanishing follows directly. The more general
positive-action determinant formula is already in `KeplerHamiltonian`, rather
than a new hypothesis in this theorem. These are documented decompositions,
not missing blueprint conclusions.

## Expanded premises and definition classification

The main theorem schema is `K, hK, hρ, B, hB`, then, for both transfer exports,
`μ, hμ, J, zt, hz`. Quantifier order and implicitness match the design. The
following rows expand all logical inputs, including the bundled solution input.
Here SOURCE cites the current Part-7 statement; STANDING denotes its inherited
action-region data, not a claim that a new proof step can be assumed.

| Input | Bin | Source and content |
|---|---|---|
| `K` | TYPING | Real two-action set, p7:396/428. |
| `hK.isCompact` | STANDING | Compact K, p7:396. |
| `hK.nonempty` | STANDING | Nonempty K, p7:396. |
| `hK.sub_cone` | STANDING | Every action has `0<G<L`, K contained in C₀, p7:396. |
| `hρ` | STANDING | `max_K L²(1+e)<1`, p7:396. |
| `B` | TYPING | Arbitrary real action subset, p7:428. |
| `hB` | SOURCE | `B ⊆ 2πK` written by division, p7:428. |
| `μ` | TYPING | Real perturbation parameter, p7:428/451. |
| `hμ` | SOURCE | Strict `abs μ < μ₂`, p7:428/451. |
| `J` | TYPING | Arbitrary time set, p7:451. |
| `zt` | TYPING | Real phase curve on all real times, p7:451. |
| `hz`: action membership | SOURCE | At every `t∈J`, `(zt t).2∈B`, frozen Sol, p7:451. |
| `hz`: Hamiltonian differentiability | SOURCE | At every `t∈J`, differentiability at `zt t`, same frozen Sol. |
| `hz`: curve derivative | SOURCE | At every `t∈J`, genuine `HasDerivAt` with the Hamiltonian field, same frozen Sol. |

Expanded counts for `period_one` and `nondeg_exact`: STANDING 4, SOURCE 1,
TYPING 2, RULED 0, EXCESS 0. For each transfer export: STANDING 4, SOURCE 5,
TYPING 5, RULED 0, EXCESS 0. Universal variables and membership guards inside
the conclusions are outputs to be proved, not additional assumptions. There are
no hidden instances. `SafeAction` has exactly the three fields shown above.

The auxiliary lemmas use typing data and explicit local domain/positivity/
membership premises appropriate to their separate claims. In particular,
`phaseToC_mem` assumes `hs,hr,hz`, and the domain inclusion assumes `hδ,hB,hz`;
the final proofs supply these by `exact_radius_spec`, arithmetic and Sol.
`hamiltonianVectorField_congr` assumes equality of derivatives as a congruence
lemma, and `transfer` proves that equality from a neighborhood identity. No
ExactHamData, symplecticity, determinant, collision-freedom or field-equality
obligation is moved into a main theorem's hypotheses.

There is exactly one new definition, `tildeF`; no new abbrev or structure.

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

Its total body is the literal designed composition on the entire declared
complex phase carrier. The analytic claims are correctly restricted to the
source tube. Existing chosen radii are not redefined: all needed admissibility
and positivity come from the proved `exact_radius_spec hK hρ`, so its existing
off-admissible fallback branch is not used to prove this package's conclusions.

## Proof and adversarial checks

The main attempted refutation was that equality only along a solution, or only
on B, might have been used to identify total derivatives. It is refuted by
lines 349–368: the real preimage of `complexStrip × actionNbhd` is open; positive
radii place the visited action in this open set; `periodOne_real` proves the
Hamiltonian identity at every point of that set. The exact text at 357–361 is
`=ᶠ[nhds (zt t)] fun z => restrictedHamTotal μ (delaunay (periodOneMap z))`.
Only then does `hev.fderiv_eq` identify fields. No openness of B or J is assumed.

At 362–373 the restricted Hamiltonian is differentiable at the collision-free
image, Delaunay is differentiable at the proved deDom point, and the existing
period-one curve conjugacy and Delaunay field conjugacy transport the actual
`HasDerivAt`. Physical time is unchanged. The final field is the frozen
`restrictedVectorField`, with a genuine collision witness.

Other attempted failure modes were checked and rejected:

- Wrong 2π factors: angles scale by 2π, actions by its reciprocal; `s₀=δ₂/(2π)`
  and `r₀=2πδ₂`. The radius uses `I₀²/(2π)²`, not a max norm.
- A pole inside the enlarged action tube: `δ₂≤kLMin/2` and
  `J₀≥2π*kLMin` give the strict lower bound `Re I₀>π*kLMin>0` throughout it.
- μ-dependent constants: `exactDelta`, `exactMu2`, `exactCF` depend on K only;
  the bound is `abs μ * exactCF K`, including μ=0, without division by μ.
- Missing negative angle shifts: `delaunayC_add_int` uses the existing integer
  periodicity in each coordinate, and μ is unrestricted in `tildeF_periodic`.
- Wrong bordered determinant: substitution into `3κΩ²/I₀⁴` cancels the 2π
  factors to exactly `3/I₀⁴`. A consumer probe derives determinant nonvanishing
  directly from `nondeg_exact`, with no extra premise.
- Hidden frozen theorem/provider dependency: transitive import traversal visits
  69 project modules and finds **zero** theorem-anchor or provider imports.

The probe also derives the perturbation's reality for all real angles and all
real actions in the entire action tube, and checks `tildeF K 0 z = 0`. Thus the
reality and nondegeneracy conclusions can be consumed with I-HEAD's actual domain
shape. This is not an application or proof of the unproved I-HEAD itself.

## Findings, notes, and source defects

No surviving mathematical finding. No suspected pinned-source erratum or new
mathematical deviation identified in this package. This audit does not claim to
re-audit the primary literature or all previously landed dependencies.

**N1 — baseline hygiene note (verified).** The brief requires an empty
`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`. Its literal result
is nonempty: `KAM.lean` has 4 added imports and README has 35 added / 31 deleted
lines. Frozen and manifest diffs are empty. An adversarial attribution check
using `d9e908c..HEAD` makes the entire protected-path diff empty: these changes
are inherited, not introduced by I-8. Do not report the broad guard as passing;
reconcile the landing baseline as part of integration.

**N2 — expected generated-root note (verified).** Lint reports
`KAM.lean is out of date; run scripts/gen_root_imports.py`. This is the exception
explicitly permitted by the package brief. The orchestrator should regenerate
the root during integration; the auditor has not edited it.

**Execution deviation.** The initial plain lint invocation was started while
the gated build was waiting. Inspection then showed lint itself invokes Lean
for ABI hashing; the gate became available before that lint ended. Thus strict
serialization/nice/thread settings were not guaranteed for that initial lint.
The build, both explicit probes, kernel replay, and final controlled lint are
recorded separately below; the final lint is rerun serially with the required
environment and nice level. This is an auditor execution deviation, not a
property of the package's proofs.

## Verification receipts

All explicit Lean invocations below use `LEAN_NUM_THREADS=1`; final validation
steps are run serially. No cache reset, library rebuild from scratch, heartbeat
override, or `.lake/packages` modification was requested.

1. Targeted gated build:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i8 KAM.Iso.PeriodOne
   ```

   Exit **0**. Output: `[inp-gate] slot 1 acquired 03:26:12 for KAM.Iso.PeriodOne`,
   replayed existing `KAM.Kepler.Energy` unused-variable warnings for `hm` and
   `hκ`, then `Build completed successfully (9115 jobs).` The gate runs
   `nice -n 5 lake build` against the existing overlay. The job count includes
   cached dependency jobs; this was not a clean rebuild.

2. Exact design-type, definition and consumer probes, plus all theorem axioms:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I8Audit.lean
   ```

   Exit **0**, both the initial type/axiom probe and the extended consumer probe.
   The final probe SHA-256 before deletion is
   `3185a3609fa64bbe3eed228b3649c863f95bedf72be9ce935e4536b5cd16e990`.
   It imports only `KAM.Iso.PeriodOne`, extracts all five theorem types from the
   design's Part7PeriodOne section, and applies each actual export with the
   explicit binder lists `hK hρ hB` or `hK hρ hB hμ hz` (none for symplecticity).
   For each of the 21 theorem names in the declaration ledger, the exact output
   is `'<fully qualified name>' depends on axioms: [propext, Classical.choice, Quot.sound]`.
   No other axioms and no errors. The definition equation is checked by `rfl`.

3. Kernel replay (one module, one invocation):

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.PeriodOne
   ```

   Exit **0**. Complete output: `replaying KAM.Iso.PeriodOne`.

4. Controlled serial lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1**, solely for the permitted generated-root exception. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (368 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   Thus lint passes under the brief's explicit root exception; its raw exit code
   is not zero. No source-size, forbidden-token, module or manifest failures.

5. Mechanical hygiene and protected paths:

   - `git diff --check inp...HEAD`: exit **0**, only the multiple-merge-base warning.
   - `git diff --exit-code d9e908c..HEAD -- KAM/Frozen manifest KAM.lean README.md`:
     exit **0**, no output.
   - Broad protected-path check: generated files differ as N1 records;
     `KAM/Frozen` and `manifest` are unchanged.
   - File inventory: **442 lines**, **1 def**, **21 theorems**, **0** overlong lines,
     **0** forbidden tokens/resource overrides. Copyright, module, public imports,
     module docstring and exposed public section are present.

## Closeout

All 22 new declarations have a verdict. Statement correspondence, definition
body, proof interfaces, full-tube derivative use, axioms, and kernel replay pass.
I-8 is suitable for integration subject to the generated-root/baseline notes.
No frozen root closure is asserted and no source files were repaired.
The temporary audit probe was deleted after the successful runs. Final
`git status --short` shows only this new report and the pre-existing untracked
I-8 handoff; the audited Lean file's SHA-256 remains unchanged. The report is
at the exact requested worktree path, not the main inp worktree.
