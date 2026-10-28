# P6-6 independent audit 1

Verdict: **PASS WITH NOTES** for the P6-6 infrastructure package. All seven contracted main results pass statement fidelity and proof checks. No frozen theorem anchor is implemented or sealed by this package, so provider/frozen-type and frozen seal-body checks are **not applicable**. This verdict does not seal P-PLANAR, P-FIXED, or any other headline.

Scope: only `KAM/Planetary/Newtonian/Reduction.lean`, compared with `git diff inp...HEAD`. Reviewed HEAD `fe6e90cfff2c5e271d2aab3e021d44906587e2e4`; inp `d9921a75b2e196520afda935beee22c004461382`; module SHA-256 `deb23280582303fa7cbee6ad185d119f3ba1abaa0ab5051ada6224589c14dad6`. The diff adds this one 401-line module. The pre-existing untracked handoff was read and preserved. The report destination follows the user's explicit worktree-path instruction, overriding the generic brief's main-worktree destination.

Read: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the package audit brief and handoff; `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` (mapping, D12, P6-6 row, §7.1, signatures at lines 1818–1869); `blueprint-P/parts/p6-newtonian-models.tex` (especially nbody and reduction); track P statement and the relevant frozen definitions, including the differentiability-guarded solution predicate. Existing Models facts were inspected as dependencies, not re-audited as a separate package.

## Declaration audit

Names below are in `KAM.Planetary`. Every new declaration is listed, including private implementation helpers. Extra algebraic helpers implement elementary steps of the named node rather than replace a source theorem.

| Node / role | Declaration (module line) | Verdict | Reason |
|---|---|---|---|
| nbody | `nbodyHamiltonian` (36) | PASS | Exact kinetic energy and unordered-pair Newtonian potential; generic masses strengthen the physical specialization. |
| reduction (a) | `helioMap` (43) | PASS | Exact total linear coordinate formulas, Sun at 0 and planets at succ(i). |
| reduction (a) | `helioInv` (47) | PASS | Exact total linear coordinate formulas, Sun at 0 and planets at succ(i). |
| reduction, algebra | `planeDot_add_left` (55) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_sub_left` (59) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_comm` (63) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_add_right` (66) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_sub_right` (70) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_sum_left` (74) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeDot_sum_right` (79) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeSq_smul` (84) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `planeSq_neg` (88) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `bodyVector_add` (91) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `bodyVector_smul` (94) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction, algebra | `eq_of_bodyVector_eq` (97) | PASS | Unconditional dot/squared-length bilinearity or body-coordinate identity; no stronger input than elementary typing/algebra. |
| reduction (a), algebra | `symplecticForm_eq_bodies` (104) | PASS | Reindexes the frozen sum with the correct momentum-position sign. |
| reduction (b), algebra | `sum_pairs_succ` (113) | PASS | Sun/planet and planet/planet split counts every k<l pair once. |
| reduction (a), coordinate helper | `helioMap_pos_zero` (131) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioMap_pos_succ` (135) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioMap_mom_zero` (139) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioMap_mom_succ` (143) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioInv_pos_zero` (147) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioInv_pos_succ` (151) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioInv_mom_zero` (155) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a), coordinate helper | `helioInv_mom_succ` (159) | PASS | Unconditional coordinate equation for the declared map/inverse. |
| reduction (a) | `helioMap_helioInv` (166) | PASS | Two-sided inverse on the whole carrier, with no premises. |
| reduction (a) | `helioInv_helioMap` (177) | PASS | Two-sided inverse on the whole carrier, with no premises. |
| reduction (a), private def | `helioLin` (193) | PASS | Packages helioMap with proved linearity; no assumed symplecticity. |
| reduction (a) | `helioMap_pairing` (213) | PASS | Exact canonical pairing, by bilinearity and cancellation. |
| reduction (a) | `helioMap_symplectic` (223) | PASS | Global derivative-based symplecticity with multiplier 1; derives fderiv from linearity. |
| reduction (b) | `nbodyHamiltonian_helio` (241) | PASS | Exact design signature; total-function identity, stronger than collision-free positive-mass specialization. |
| reduction (b) | `nbodyHamiltonian_helio_zero_momentum` (273) | PASS | Exact design signature; P_i = μ p_i gives F = μ H_mov, with all factors retained. |
| reduction (c), private | `sum_filter_ne_succ` (303) | PASS | Splits the Sun from the non-self planet sum. |
| reduction (c), private | `accel_identity` (312) | PASS | Finite-sum force identity; central sign and μGm_i pair factor agree. |
| reduction (c), private | `hasDerivAt_ofBodies` (332) | PASS | Finite-product derivative assembly; no dynamics assumed. |
| reduction (c) | `newton_to_moving` (341) | PASS | Exact design signature; arbitrary J, literal Newton input G·M, zero momentum, guarded Hamiltonian solution and derived NoCollision. |

## Definitions and mathematical fidelity

The three public definitions and one private definition have the intended bodies on their full Lean carriers. `nbodyHamiltonian` uses the physical squared Euclidean plane length, not the ambient Pi norm. Its divisions are Lean's total real divisions, including zero masses or collisions; the algebraic identities hold for those total functions, while the physical ODE theorem is restricted to positive masses and collision-free trajectories. There is no branch or fallback introduced to make an obligation vacuous. `helioMap` and `helioInv` are global linear coordinate transformations; `helioLin` has exactly `helioMap` as its function and proves its linearity fields. No other def, abbrev, structure, instance or bundled assumption is added.

All seven main signatures match the design after whitespace removal and qualification of `univ` as `Set.univ`. Fresh anonymous copies of those design signatures were elaborated with direct applications of the corresponding theorem, using every explicit binder in order. No new premise, changed quantifier order, widened constant dependence or altered carrier was found. The statements also work for n=0 where meaningful, strengthening the blueprint's standing n≥1 convention.

For reduction (c), `p_i = m_i V_i = Y_i/μ` is the specified scaled momentum. The force predicate absorbs G into its mass argument, while total momentum uses the actual masses without G. These are different quantities for the intended reason. The position derivative uses zero momentum to recover V₀ = −(μ/m₀)ΣmᵢVᵢ; the momentum derivative splits off the central force and matches the Models field. Collision avoidance is derived from the pairwise Newton predicate; analyticity supplies Hamiltonian differentiability at every point used. Arbitrary time sets retain ambient `HasDerivAt`, consistent with both frozen predicates. There is no conclusion-shaped hypothesis.

The stronger unconditional identities in (a) and the first identity in (b) are legitimate. Unused signed positivity/nonzero premises are harmless and retained; the zero-momentum identity does not require positivity, only the stated nonzero assumptions.

Scope notes: the prose nbody node also describes equivalence of the full unreduced Hamilton equations and Newton equations, and reduction (b) mentions conservation of total momentum. No separate public theorem for either assertion is added here. The signed P6-6 API does not request them; this audit passes that API, and does not certify standalone formal closure of every prose clause of those blueprint nodes. Linearity is proved in the private `helioLin` packaging rather than exported as a public linear-equivalence object.

## Hygiene and independent verification

All commands ran from `/root/code/KAM-inp-p66`. Required successful final Lean checks use `LEAN_NUM_THREADS=1`, with no simultaneous auditor-owned Lean/lake/checker command. No clean, dependency modification, heartbeat override, production-source edit, git mutation or generated-root regeneration was performed.

1. Targeted compile through the required gate:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p66 KAM.Planetary.Newtonian.Reduction
[inp-gate] slot 1 acquired 04:42:58 for KAM.Planetary.Newtonian.Reduction
Build completed successfully (9092 jobs).
exit 0
```

The gate invokes `nice -n 5 lake build`. The only warnings were replayed pre-existing unused `hm` and `hκ` at `KAM/Kepler/Energy.lean:106`; none in Reduction.

2. Design-signature probes and all public theorem axioms:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P66Audit.lean
exit 0
```

The scratch imported Reduction, opened `KAM KAM.Kepler KAM.Planetary Set`, and elaborated seven anonymous copies of the signed theorem statements with direct applications. The first probe attempt omitted `open Set`, producing an unresolved `univ` in the copied design syntax; adding the design's namespace context fixed this audit-probe error without any source edit.

Exact axiom output (all 29 public theorems):

```text
'KAM.Planetary.planeDot_add_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_sub_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_comm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_add_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_sub_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_sum_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeDot_sum_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeSq_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeSq_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.bodyVector_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.bodyVector_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.eq_of_bodyVector_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.symplecticForm_eq_bodies' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.sum_pairs_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_pos_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_pos_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_mom_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_mom_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioInv_pos_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioInv_pos_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioInv_mom_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioInv_mom_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_helioInv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioInv_helioMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_pairing' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.helioMap_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.nbodyHamiltonian_helio' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.nbodyHamiltonian_helio_zero_momentum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.newton_to_moving' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Provider/frozen probes are inapplicable: this module exports infrastructure, not `KAM.Provider` declarations, and edits no anchor. A recursive scan found 46 KAM modules in the import closure, with **no frozen theorem or provider import**, hence no DRAFT_SORRY theorem dependency. The printed axiom lists independently exclude `sorryAx`.

3. Kernel replay (one invocation; Reduction is the only new lemma module):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Newtonian.Reduction
replaying KAM.Planetary.Newtonian.Reduction
exit 0
```

4. Final lint:

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (401 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

PASS under the brief's explicit stale-generated-root exception; no other lint failure. An initial `sh scripts/lint_sources.sh` run exited 1 with only the allowed stale-root failure and printed `check_lean_modules: PASS (401 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, and `ABI HASHES OK (144 frozen declarations)`. That initial lint lacked the explicit thread environment/nice prefix; it is repeated below under the required settings. Its ABI Lean subprocess began after the targeted build finished.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0. `git diff --check inp...HEAD`: empty, exit 0. Direct source scan: no sorry/admit/axiom/unsafe/opaque, no `set_option`, and 401 lines (below 1500); copyright, module command, public imports, module docstring, exposed public section present.

## Errata, uncertainties and deviations

No suspected mathematical defect in the reviewed blueprint claims or frozen definitions was found. Pinned source PDFs were not independently re-audited; this is the requested Lean-module audit against the accepted blueprint/design, not a renewed Fejoz source audit. The existing blueprint's Fej07e correction is not a new erratum. No mathematical deviation was introduced by the auditor. No findings require a code change. Only this report is retained; the audit probe is deleted after verification.
