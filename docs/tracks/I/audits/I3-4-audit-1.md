# Independent audit of I3-4

Overall verdict: **PASS WITH NOTES** for package I3-4. `bpI:p3:hypothesis-d` passes; `bpI:p3:torus` passes with the interface note below. No blocking defect, conclusion-shaped premise, forbidden dependency, or unapproved axiom was found. All 51 new public theorems have only `propext`, `Classical.choice`, and `Quot.sound`; kernel replay exits 0.

This is an infrastructure package, **not a frozen-anchor seal**. It introduces no provider export and proves no frozen theorem. The provider/frozen-type and frozen-seal-body tests are therefore not applicable. This report does not certify closure of I-G1 or I-HEAD.

## Snapshot, authority and scope

Audited 2026-10-28 in `/root/code/KAM-inp-i34`, HEAD `fdea54d58b59f3d14c4461531eb93a0ad3dbe8c5`, against `inp` at `7b9d88a4a6b36e35a70dc43fc08ccd292410fbb5`.

Read the supplied audit brief, AGENTS.md, PLAN.md, DECISIONS.md, the I3-4 handoff, design v2 §7/Appendix C6/issue B4, both design audits, Track I statement, blueprint Part 3 and pertinent Part 1/graph contracts, I-G1 and I-HEAD frozen statements, their relevant frozen definitions, and the K lemmas actually reused. No original-paper erratum claim is made from blueprint text alone.

The user explicitly requires this report inside this package worktree; that overrides the brief's generic main-worktree output instruction. The user also specifies `git diff inp...HEAD`; I inspected the handoff's `inp-i31...HEAD` comparison as supplemental evidence, not as the controlling scope.

`git diff inp...HEAD` warns of multiple merge bases and selects `70bba4e3ddd8e44a7c57ec66b8ec5b69bd4db876`. Its entire patch is three added files:

| File | Lines | SHA-256 |
|---|---:|---|
| `KAM/Iso/Charts/Constants.lean` | 183 | `18920733299c0c8ad6def420c79c1bc6ebebe221b62fb10dd2e7bd705fb1405a` |
| `KAM/Iso/Charts/Coordinates.lean` | 248 | `ae6b4fabdb49fba92a2d24b445a2068e5596eb5eb4c3097a30169e45a9c6cfa0` |
| `KAM/Iso/Charts/Torus.lean` | 608 | `e84e3b53775b10de290dbe7f59e9656da1cd3c945623179cf43a9d8af4a222ac` |

The first two files are inherited I3-1 material; I included their declarations and axioms in this audit. `inp-i31` is `285405576ce882e3a3db8af06f26568e9713994e`; its three-dot comparison includes 32 files and unrelated package/audit changes. Those unrelated changes are outside the controlling diff. The handoff was already untracked on entry and was preserved.

## Focus findings and interface note

**Statement fidelity.** In a temporary probe, I copied `hypothesis_d` and `torus` directly from design Appendix C6, renamed them, replaced their placeholders by `by exact hypothesis_d hd hf hε1` and `by exact torus hd hf hε1 hI hgrad`, and proved equality of each copied type with the implementation type using `type_of%` and `rfl`. Both elaborate at default resources. Binder order, carriers, constants, ray equality, strip widths and all perturbation/error bounds agree.

`HeadData` (`Confinement/Setting.lean:79`) contains the frozen I-HEAD source premises, including isoenergetic nondegeneracy, not Kolmogorov nondegeneracy. `PerturbData` (`:92`) contains holomorphy, periodicity, reality, nonnegative ε and the domain bound. Neither assumes an intermediate torus, inverse bound, derivative estimate, or package conclusion. `hypothesis_d` proves all five Hamiltonian bounds, including D²H, from K's derivative estimates with ε ≤ 1. The constants depend only on the fixed source data, not f, ε, I or the ray.

**B4 re-proofs.** Compare `Torus.lean:142,153,187,228` with `Head/Unperturbed.lean:62,83,186,290`. The derivative decomposition, action-Hessian decomposition, flat torsion and invariance-error identities retain K's actual objects and conclusions at n=2. They replace the unnecessary K `Data` parameter with the source `HeadData`/`PerturbData`. Local openness and holomorphy justify every derivative. `invarianceError_flat` states the identity alone; the norm estimate is retained in `torus` using `hypothesis_d`, so no bound is lost at the node interface.

**Border and remainder.** `energyRow_flat` (`:205`) computes DH(K)N directly and includes the ∂I f term. It does not replace the last row by ωᵀ off invariance. `extendedTorsion_flat` (`:262`) combines the correct real-to-complex Hessian bridge with this last row; `flatRemainder` has zero last column and exactly the two derivative blocks specified by blueprint Part 3:296–297. The matrix norm is the maximum absolute row sum throughout. `norm_flatRemainder_le` (`:331`) uses an even sharper upper-block bound F₂ε, and the last row has two entries bounded by F₁ε. Thus the stated 2F₂ε bound has the right dimension factor.

**Neumann and energy.** At `:494–535`, membership in S supplies B′ nonemptiness, so the inherited compact lemma applies without a new premise. The bordered determinant is nonzero by `hd.iso`; the cast inverse has norm ≤ S_h. Positivity of S_h and F₂ and `ε ≤ 1/(4S_hF₂)` give `S_h * ‖average - bordered‖ ≤ 1/2`. `neumann_fintype` then proves determinant invertibility and inverse norm ≤ 2S_h. `:429–490` supplies actual continuity/integrability of the averaged remainder. `:538–550` integrates the genuine perturbation over the unit-volume cube, proving the energy error ≤ ε. No nonintegrable-integral default is used.

**N1, nonblocking interface packaging.** Blueprint Part 3:293 explicitly writes `DK(θ)v=(v,0)` and `‖G_K⁻¹‖=1`, whereas the audited design and `torus` bundle only `‖DK‖=1`, `G_K=1`, and the frame identity. The derivative action already follows from imported `KAM.Head.fderiv_unperturbedTorus`, with no source premises; the Gram inverse statement follows by rewriting `G_K=1`. I independently elaborated both consequences, including the Gram determinant unit. Likewise `2S_h=σ_T−μ` follows by unfolding `sigmaTConst` (independently elaborated), and the energy conclusion at E₀ follows by substitution from `h(ιI)=(E₀:ℂ)`. These are available consequences, not unpaid analytic steps or false claims. No signature repair is required. A consumer wanting the literal fully bundled blueprint statement may use these existing identities.

The global holomorphy in `torus` is stronger than strip holomorphy. No B′ nonemptiness is assumed for the two main theorems; the inverse implication recovers it from I ∈ S. The inherited coordinate theorem works at any center c ∈ U, stronger than restricting c to closure B′. The algebraic determinant identity needs no analytic premise. The slope ratio is positive from its two positive longitudinal coordinates; its norm identity uses the same max norm as the blueprint.

## Declaration inventory

All names below have prefix `KAM.Iso.Charts.`. Node names have prefix `bpI:p3:` unless identified as an auxiliary bridge; `to-*` are the corresponding Part 3 proof steps. Every public declaration in the controlling diff has its own row. PASS for an auxiliary means its stated local role is faithful; it does not claim an entire blueprint node independently.

| Node / role | Declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| setting | `isOpen_realAct_charts` (Constants:41) | PASS | Real slice is the continuous inclusion preimage of the open action neighborhood. |
| setting | `subset_realAct_charts` (Constants:46) | PASS | Self witness gives B ⊆ U for positive radius. |
| compact | `contDiffOn_frequencyMap` (Constants:50) | PASS | C¹ frequency regularity from the non-Kolmogorov local API. |
| compact | `continuousOn_fderiv_frequencyMap` (Constants:55) | PASS | Continuity of the Hessian on the open real slice. |
| compact | `continuousOn_borderedHessian` (Constants:60) | PASS | Entrywise continuity of the genuine bordered Hessian. |
| ext-cramer | `continuousOn_inv_of_det_ne_zero` (Constants:73) | PASS | Generic Cramer continuity; nonzero determinant guards the inverse. |
| compact | `continuousOn_norm_inv` (Constants:85) | PASS | Norm of the bordered inverse is continuous where the standing determinant is nonzero. |
| det-identity (a) | `frequencyMap_ne_zero_of_det_ne_zero` (Constants:92) | PASS | Zero gradient gives a zero last row; no nondegeneracy assumption is smuggled in. |
| compact | `inv_ne_zero_of_det_ne_zero` (Constants:103) | PASS | Nonzero determinant implies a nonzero inverse on this nonempty index type. |
| compact | `compact` (Constants:111) | PASS | Positive dB, compact S, both inclusions, positive extrema and uniform bounds. Extrema witnesses constructed in proof. |
| det-identity | `borderedHessian_det_eq` (Coordinates:67) | PASS | Algebraic determinant identity for arbitrary h and I; stronger domain than blueprint. |
| det-identity | `hessR_transpose` (Coordinates:76) | PASS | Real Hessian symmetry follows from holomorphy and real restriction. |
| det-identity | `det_identity` (Coordinates:93) | PASS | Symmetry, determinant identity, nonzero gradient and signed 2×2 identity; iff follows by rewriting. |
| coordinates | `dotProduct_self_pos` (Coordinates:110) | PASS | Positive real dot square for nonzero g; max norm convention unchanged. |
| coordinates | `continuous_aCoord` (Coordinates:117) | PASS | Continuity of linear coordinate divided by a fixed scalar. |
| coordinates | `dotProduct_eq_aCoord_mul` (Coordinates:123) | PASS | Cancellation guarded by g ≠ 0. |
| coordinates | `det2_self` (Coordinates:130) | PASS | Unconditional determinant cancellation. |
| coordinates | `eq_aCoord_smul_add_bCoord_smul` (Coordinates:135) | PASS | Exact vector decomposition for nonzero g. |
| coordinates | `coordinates` (Coordinates:151) | PASS | Decomposition, open chart domain, center membership, C¹ chart and center value. Generalized to any c ∈ U. |
| slope-ray | `slope_ray` (Coordinates:193) | PASS | Exact positive ratio equivalence and max-norm ratio; positivity follows from the two longitudinal premises. |
| hypothesis-d | `hypothesis_d` (Torus:48) | PASS | Exact design type; all five Hamiltonian bounds and j=1,2,3 perturbation estimates on the correct domain. |
| to-torus | `TorusAux.toC_mem_half` (Torus:109) | PASS | Self witness in the half-radius action neighborhood. |
| to-torus | `TorusAux.unperturbed_mem` (Torus:115) | PASS | Flat torus maps the half strip into fractD. |
| to-torus | `TorusAux.real_mem` (Torus:119) | PASS | Every real angle lies in the positive half strip. |
| hd-open | `TorusAux.differentiableOn_totalH` (Torus:123) | PASS | Holomorphy of h∘snd + f on the shrunken open domain. |
| to-torsion | `TorusAux.differentiableAt_h` (Torus:130) | PASS | Genuine derivative at action points of the domain. |
| to-torsion | `TorusAux.differentiableAt_f` (Torus:135) | PASS | Genuine derivative at phase points of the domain. |
| to-torsion / B4 | `TorusAux.fderiv_totalH` (Torus:142) | PASS | Same derivative identity as K; no Kolmogorov field. |
| to-torsion / B4 | `TorusAux.actionHessian_totalH` (Torus:153) | PASS | Same second-derivative identity as K; local eventual equality licenses differentiation. |
| to-torsion / B4 | `TorusAux.torsion_flat` (Torus:187) | PASS | Same flat torsion identity for any real frequency, with constant normal frame. |
| to-torsion | `TorusAux.energyRow_flat` (Torus:205) | PASS | Exact DH(K)N, including ∂I f; direct differentiation is the documented flat route. |
| tr-compare / B4 | `TorusAux.freq_facts` (Torus:217) | PASS | Real gradient and derivative agree with complex gradient/Hessian under local holomorphy and reality. |
| to-error / B4 | `TorusAux.invarianceError_flat` (Torus:228) | PASS | Same K error identity at ∇h(I); the bound is separately proved and included in torus. |
| to-torsion | `TorusAux.borderedHessian_map` (Torus:243) | PASS | Correct real-to-complex bordered matrix including both gradient borders. |
| to-torsion | `TorusAux.extendedTorsion_flat` (Torus:262) | PASS | Exact pointwise bordered Hessian plus the specified remainder. |
| constants | `TorusAux.Fconst_nonneg` (Torus:285) | PASS | Nonnegative F_j for every natural j and positive radii. |
| constants | `TorusAux.Fconst_one_le_two` (Torus:291) | PASS | F₁ ≤ F₂ from 0 < δ* ≤ 1. |
| to-torsion | `TorusAux.differentiableAt_fderiv_f` (Torus:300) | PASS | Holomorphy supplies the derivative of Df on the domain. |
| to-torsion | `TorusAux.norm_actionHessian_f_le` (Torus:309) | PASS | True row-sum operator norm ≤ F₂ε, via the bilinear derivative norm. |
| to-torsion | `TorusAux.norm_row_f_le` (Torus:317) | PASS | Each last-row derivative ≤ F₁ε using a unit action direction. |
| to-torsion | `TorusAux.norm_flatRemainder_le` (Torus:331) | PASS | Top rows ≤ F₂ε, bottom row ≤ 2F₁ε ≤ 2F₂ε; correct operator norm. |
| real-inverse bridge | `TorusAux.norm_map_ofReal` (Torus:367) | PASS | Preserves row-sum norm for any finite index type. |
| real-inverse bridge | `TorusAux.det_map_ofReal'` (Torus:371) | PASS | Determinant commutes with the real inclusion. |
| real-inverse bridge | `TorusAux.inv_map_ofReal` (Torus:377) | PASS | Cramer inverse commutes with the real inclusion even at singular matrices. |
| ext-integral | `TorusAux.norm_entrywiseAverage_le` (Torus:392) | PASS | Continuous matrix-valued integrand, unit cube and operator norm; no integrability fallback used. |
| ext-integral | `TorusAux.integral_const_add` (Torus:418) | PASS | Continuity gives integrability and unit volume preserves the constant. |
| to-torsion | `TorusAux.continuous_flatRemainder` (Torus:429) | PASS | Holomorphic derivatives restricted to real angles are continuous. |
| to-torsion | `TorusAux.norm_extendedAverage_sub_le` (Torus:460) | PASS | Actual entrywise integral equals the constant matrix plus the integrable remainder average. |
| to-neumann | `TorusAux.extendedAverage_inv` (Torus:494) | PASS | I ∈ S implies B′ nonempty; compact bounds and εT establish the half-size Neumann condition. |
| to-energy | `TorusAux.norm_energyAverage_sub_le` (Torus:538) | PASS | Exact unit-cube integral with continuous bounded perturbation; error ≤ ε. |
| torus | `torus` (Torus:561) | PASS WITH NOTES | Exact design type; items (a)–(e), with elementary consequences checked separately below. |

## Definition classification

`Torus.lean` and `Constants.lean` introduce no `def`, `abbrev`, or `structure`. The sole new definition in the controlling diff is private `Coordinates.sumFin3` (`Coordinates.lean:40`): the bijection `Fin 2 ⊕ Unit ≃ Fin 3`, taking the two left indices to 0 and 1 and the right index to 2. Both inverse laws are proved by finite cases. This is the intended reindexing on its entire carrier; there is no junk or fallback value. The private `det_bordered` theorem (`:54`) is the corresponding ring-generic 3×3 determinant expansion, kernel-replayed with its module.

The used `flatRemainder`, constants, `HeadData` and `PerturbData` are inherited definitions, not new in this patch. `flatRemainder` is exactly `bordMat (actionHessian f (θ,ιI)) 0 (fun b => Df(θ,ιI)(0,e_b))`. Its derivatives are guarded by local holomorphy in every theorem that uses their mathematical meaning. Infima/suprema are only used for nonempty compact sets with continuous functions when deriving bounds. `extendedAverage_inv` proves nonemptiness before using them. No theorem relies on singular-inverse defaults; `inv_map_ofReal` is itself a valid total algebraic equality, while analytical inverse estimates separately establish nonzero determinants.

## Independent verification and exact receipts

All Lean invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`. Builds used the required gate. No heartbeat, recursion-depth or synthesis-heartbeat override was used. No cache download, clean, update, source edit, or state-changing git operation was performed. Scratch paths below are relative to this worktree and were removed after their evidence was copied into this report.

### Targeted builds

First command:

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i34 KAM.Iso.Charts.Torus
```

Exit 0; terminal output included `Build completed successfully (3253 jobs).` The gate acquired slot 1. The only warning was replayed `KAM/ODE/Exit.lean:36:0`, unused section variable `[NormedSpace ℝ E]` in `KAM.ODE.gen_exit`, outside the patch.

To include the inherited Coordinates module explicitly, I then ran (after the other checks had completed):

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i34 KAM.Iso.Charts.Torus KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates > .lake/abi-scratch/I34Build.log 2>&1
```

Exit 0, exact output:

```text
[inp-gate] slot 2 acquired 03:26:59 for KAM.Iso.Charts.Torus KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates
⚠ [2841/2852] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (3254 jobs).
```

### Type and axiom probe

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I34Audit.lean > .lake/abi-scratch/I34Audit.log 2>&1
```

Exit 0. The two copied design declarations and these type checks elaborated:

```lean
example : (type_of% @audit_hypothesis_d) = (type_of% @hypothesis_d) := rfl
example : (type_of% @audit_torus) = (type_of% @torus) := rfl
```

The same probe proved `DK(θ)v=(v,0)`, the Gram determinant unit and inverse norm 1, and `sigmaTConst - muParam = 2 * ShConst`. The first probe run failed only because my generated axiom query omitted the trailing prime from `det_map_ofReal'`; I corrected that scratch identifier and reran successfully. No implementation error was involved. Final output is exactly the following 51 lines; every changed public theorem is included:

```text
'KAM.Iso.Charts.isOpen_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.subset_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.contDiffOn_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_fderiv_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_borderedHessian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_inv_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_norm_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.frequencyMap_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.inv_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.compact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.borderedHessian_det_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.hessR_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_self_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuous_aCoord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_eq_aCoord_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det2_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.eq_aCoord_smul_add_bCoord_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.coordinates' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.slope_ray' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.hypothesis_d' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.toC_mem_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.unperturbed_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.real_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableOn_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_f' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.fderiv_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.actionHessian_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.torsion_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.energyRow_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.freq_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.invarianceError_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.borderedHessian_map' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.extendedTorsion_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.Fconst_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.Fconst_one_le_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_fderiv_f' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_actionHessian_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_row_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_flatRemainder_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.det_map_ofReal'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.inv_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_entrywiseAverage_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.integral_const_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.continuous_flatRemainder' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_extendedAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.extendedAverage_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_energyAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.torus' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Charts.Torus KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates > .lake/abi-scratch/I34Checker.log 2>&1
```

Exit **0**, exact output:

```text
replaying KAM.Iso.Charts.Coordinates
replaying KAM.Iso.Charts.Constants
replaying KAM.Iso.Charts.Torus
```

There is no provider module for this package; this single invocation replays all three lemma modules in the actual diff, including their private declarations.

### Lint, dependency quarantine and protected paths

```sh
env LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh
```

Exit **1**, with exactly the permitted stale-root exception and no other failure:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (357 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is accepted under the audit brief's explicit exception. I did not regenerate `KAM.lean`.

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exit 0, with no diff/check output; each emits only the warning `inp...HEAD: multiple merge bases, using 70bba4e3ddd8e44a7c57ec66b8ec5b69bd4db876`.

A recursive local import traversal from the three changed modules visited 98 KAM files and found **zero** imports of `KAM.Provider.*` or `KAM.Frozen.*.Theorems.*`. This also excludes indirect use of draft or sealed theorem anchors. Frozen definition imports are intentional. Source inspection and lint found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, forbidden ambient carrier, or resource override in the three files. All three have the required copyright, `module`, interface `public import`, module docstring and `public section`; their lengths 183/248/608 are below 1500. The new private equivalence has no public unfolding requirement.

## Source/blueprint defects, deviations and limits

No new suspected source erratum or mathematical blueprint defect was found. In particular the sign and perturbative last row agree with the frozen definitions; this package introduces no additional source correction. B4 is the already documented K API limitation at `PART123-LEAN-DESIGN.md:324–327`, not a false source result. The restatements and the direct last-row route faithfully implement its intended resolution. The direct last-row route is also represented by the graph's `stepI:p3:to-torsion#flat-route`; it does not require importing `Linear.LastRow`.

N1 above records an interface packaging difference between the blueprint and its design, with all affected consequences independently discharged. No new conclusion-shaped hypothesis, weakening requiring repair, wider constant dependence, or meaning-changing carrier was found. No edits to blueprint, graph, frozen files, manifest, Lean sources, or generated files are requested or made.

The supplied track statement page still describes itself as Phase 0 draft text; the current frozen declarations and D20 control this audit. No claim of frozen I-G1/I-HEAD proof completion follows from a clean audit of these auxiliary nodes. The original pinned PDFs were not re-audited: this package's claims are derived local identities/estimates, checked against the blueprint, frozen objects and actual K proofs.

Only this report was written as a deliverable. Temporary probe and receipt files were deleted from `.lake/abi-scratch/` after inclusion here. The pre-existing untracked I3-4 handoff was preserved.
