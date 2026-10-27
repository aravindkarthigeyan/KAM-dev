# P4-9 independent delta audit 2

Overall verdict: **PASS. F1 is closed.** Commit `7bfac39d773dce4b53fa3396a6c77aad92549c53` exports the missing full `step:p4:rt-small` estimate, retaining the previously verified real angle derivative bound and periodicity. The main theorem and its Appendix A signature are unchanged. Together with audit 1's unchanged passing nodes, this resolves the package's sole reported failure.

Scope: branch `k/p4-9`, HEAD `7bfac39`; delta against parent `cb1db69556bcc0d4dd7c75c12488d162793f7882`. Read the complete commit diff, audit 1/F1, the new declarations and their uses, the binding Appendix A §14 signature, and `blueprint/parts/p4-measure.tex:1028–1033`. This is a delta audit; unchanged predecessor packages and external source PDFs were not independently re-audited.

## Contract coverage

Locations refer to `KAM/Head/RealTorus.lean` at audited HEAD. All declaration names below have prefix `KAM.Head.`.

| Contract component | Declaration and location | Verdict and evidence |
|---|---|---|
| Full complex displacement derivative estimate | `rt_small_full`, lines 80–88 | PASS. For arbitrary holomorphic `K` with displacement bounded by η on `T_ρ`, exports the full induced operator norm `‖D(K − K⁰_I)‖ ≤ n (ρ/2)⁻¹ η` on `T_{ρ/2}`. No angle projection and no assumed derivative bound. Uses `cauchy_strip` with loss `ρ/2`. |
| Exact Cauchy coefficient | `rt_cauchy_const_eq`, lines 302–305 | PASS. Exports `n (s/8/2)⁻¹ η = 16 n η / s`, with explicit positive width. No changed constant dependence. |
| Blueprint's normalized torus and numerical smallness | `rt_small_normDisp`, lines 326–340 | PASS. Exports `∀ θ ∈ T_{s/16}, ‖D W_ω(θ)‖ ≤ 16 n η₀/s` and `16 n η₀/s ≤ 1/2` together, with exactly `W_ω = normDisp … ω`. `normalize` supplies holomorphy and the displacement bound on `T_{s/8}`; `smallness` supplies (s3). The strip rewrite is exactly `s/8/2 = s/16`. |
| Real angle derivative bound | `rt_small_complex`, lines 93–114; `rt_small`, lines 120–137 | PASS. `rt_small_complex` now obtains the full derivative estimate from `rt_small_full` before projecting. The unchanged real-restriction argument exports differentiability and the derivative bound `≤ 1/2` at every real point. |
| Integer periodicity of the real angle displacement | `angleReal_add_int`, lines 140–146 | PASS. The existing export gives `ũ(x+m) = ũ(x)` for every real x and integer m. The required primarity and reality come from `normalize`. |

These declarations collectively cover the entire blueprint statement at lines 1029–1033, including the full complex derivative rather than only its angle component. No conclusion-shaped premise, fallback value, new object, or additional source assumption was introduced. The three additions are theorems, not definitions. The only pre-existing definition, `angleReal`, is unchanged.

An independent Lean probe assembled the full normalized-torus contract in one conjunction from `rt_small_normDisp`, `normalize`, `rt_eta0_bounds`, `rt_small`, and `angleReal_add_int`: the complex full derivative bound on `T_{s/16}`, its numerical `≤ 1/2`, `∀ x, ‖fderiv ℝ (angleReal K_ω) x‖ ≤ 1/2`, and `∀ x m, angleReal K_ω (x+m) = angleReal K_ω x`. It elaborated without additional hypotheses or warnings. Thus the node mapping is now the exports in the table, rather than the incomplete mapping in audit 1.

The new normalized-displacement theorem passes `GValid` only to `normalize`; it also projects `toPos` for `smallness`. It invokes no G1/G2/G3 field directly and introduces no frozen-theorem/provider import.

## Signature preservation

`git show 7bfac39 -- KAM/Head/RealTorus.lean` shows only three theorem additions and proof refactoring of `rt_small_complex` and `rt_eta0_bounds`. `git diff --name-only 7bfac39^ 7bfac39` prints exactly:

```text
KAM/Head/RealTorus.lean
```

A Python comparison extracted each old theorem signature from its `theorem` header through the text before ` :=`, and compared it with the same declaration at HEAD. It also compared the complete `real_torus` suffix against the parent and its signature against Appendix A §14. Output:

```text
Existing theorem signatures unchanged: True (12)
Added theorems: rt_small_full, rt_cauchy_const_eq, rt_small_normDisp
real_torus complete declaration unchanged: True
real_torus signature byte-identical to Appendix A: True
Definitions unchanged: True
Axiom probe theorem count: 15
```

In particular, `real_torus` (now lines 343–383) has an unchanged statement **and proof body**. It is the only Appendix A declaration in this module; every other Appendix A implementation file and the design document are untouched by `7bfac39`. Hence no Appendix A signature changed in this delta. A probe also copied the design's `real_torus` signature into an anonymous example and proved it with `exact real_torus hD hP hgc hSA hω`.

## Hygiene and validation

Lean operations were serialized. No heartbeat, synthesis-budget, or recursion-depth override was used.

`nice -n 5 lake build KAM.Head.RealTorus` — exit 0:

```text
Build completed successfully (3219 jobs).
```

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (276 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`nice -n 5 lake env lean .lake/abi-scratch/P49Audit2.lean` — exit 0. Besides the two successful anonymous examples described above, it ran `#print axioms` for all fifteen module theorems, with exactly this output:

```text
'KAM.Head.rt_analytic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small_full' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small_complex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.angleReal_add_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_immersion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_embedding' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dotProduct_mulVec_lagrange' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_lagrangian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_ode' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_cover' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_cauchy_const_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_eta0_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small_normDisp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.real_torus' depends on axioms: [propext, Classical.choice, Quot.sound]
```

`wc -l KAM/Head/RealTorus.lean` — exit 0:

```text
389 KAM/Head/RealTorus.lean
```

The following scan exits 1 with no matches:

```sh
rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option[[:space:]]+(maxHeartbeats|maxRecDepth|synthInstance\.maxHeartbeats)|^(public )?import KAM\.(Frozen\.Theorems|Provider)\.' KAM/Head/RealTorus.lean
```

The following checks exit 0 with no output:

```sh
git diff --check 7bfac39^ 7bfac39
git diff --check
git diff 7bfac39^ 7bfac39 -- KAM/Frozen manifest
git diff main...HEAD -- KAM/Frozen manifest
python3 -I scripts/gen_root_imports.py --check
```

The module header, imports, module docstring and exposed public section are unchanged and pass module lint. No frozen file, manifest, generated root or README changed in the delta.

No remaining blocking, major or minor finding was established for this fix. No new suspected source erratum or mathematical deviation was found. The previous disclosed mean-value proof-route choice is unaffected. This audit closes F1 and updates the package verdict; it does not establish unconditional HEAD closure or any new frozen seal.

Only this report was created by the auditor in this turn. The scratch probe was deleted after validation; no Lean source or git state was edited. Audit 1 and the existing handoff were preserved.
