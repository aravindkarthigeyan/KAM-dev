# P1-6 independent package audit

Verdict: **PASS WITH NOTES**. All seven P1-6 helper theorems pass statement and proof review. No material defect, extra mathematical premise, weakened design signature, or unsafe definition was found. No frozen anchor is proved or sealed by this package; N-HEAD-C remains outside this verdict.

Audited snapshot: `fe25f91` in `/root/code/KAM-inp-p16`. Sole audited implementation: `KAM/Nekhoroshev/Interfaces/ConstantsAnalytic.lean` (201 lines). Authority: package audit brief, handoff AUDIT FOCUS, orchestrator's explicit single-module scope clarification, PART145 design row P1-6 and proof plan, both design audits and binding audit-2 notes, current Blueprint-N Part 1, frozen N-HEAD-C and its input definitions, track N statement, AGENTS/PLAN/DECISIONS. The user's exact report destination overrides the generic brief's main-worktree destination.

## Scope and anchor applicability

`git diff inp...HEAD` lists ConstantsAnalytic, Hessian, Period and QuasiConvex. Git warns: `multiple merge bases, using f8a36c7804682425a1e46b852ccff13f8780c46d`. The latter three modules are inherited dependencies, explicitly excluded by the orchestrator. `git diff --stat inp-p13b...HEAD -- KAM/Nekhoroshev/Interfaces/ConstantsAnalytic.lean` reports one file, 201 insertions. The unscoped diff against the current inp-p13b ref also includes unrelated integration history; that does not expand this audit.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty (apart from the merge-base warning). There is no provider declaration in P1-6. Accordingly provider=frozen-type and copied seal-body probes are not applicable. Seven fresh examples copied from the design's exact theorem signatures instead verify the implemented public interface against the reviewed design.

## Declaration inventory

All names below are in `KAM.Nekhoroshev`; line numbers refer to ConstantsAnalytic.

| Node / clause | Declaration | Verdict | Reason |
|---|---|---|---|
| constants (c), co-tubes | `const_tubes` (38) | PASS | Uses the actual maximum-norm `polyNbhd` of the closed central set. Extracts its witness and applies `tube_subset` and `tube_real` with the numerical r0 bounds. Exports the complex inclusion and strict real bound `5R/8`, not merely a Euclidean subtube. |
| constants (d), co-qc | `const_hyp` (52) | PASS | First restricts real tube points to B(0,R), where `qc_convert_tilde` applies; proves the near-orthogonal alternative, not full Hessian positivity. Complex bilinear estimate is `2π B` with `n Mc ≤ B = n Mc + q`. Scalar `2π` is factored out with its positive complex norm. |
| constants (e), co-pert | `const_perturbation` (102) | PASS | Holomorphy, periodicity and sup bound are restricted from the frozen perturbation domain to `Dom(...,3s/4)`. Uses `wbound_of_sup_bound` with geometric widths s/2 and loss s/4; exports summability with bound `coth(πs/4)^n ε`. Arithmetic supplies exactly `F ε` and its threshold. |
| constants (f), co-exc | `const_exceptional` (128) | PASS | On initial B(0,R/2), the frozen maximum-norm frequency lower bound implies the Euclidean one. The tilde frequency scales by `2π`; arithmetic yields the required strict middle inequality excluding the low-frequency branch. |
| constants (g), co-time | `const_time` (148) | PASS | Euclidean displacement implies maximum-norm displacement. `r0/A ≤ R/176` keeps every point in B(0,R), hence in the real analytic domain. `partials` gives the original Euclidean frequency bound `√n M`, scaled by `2π`. The second conjunct proves the time inequality for every positive Ω0 bounded by `2π n M`. |
| norm-convert, nc-decay/nc-sum | `norm_convert` (173) | PASS | Direct application of K's all-dimension theorem with coefficient radius `2π(ρ−δ)` and factor `(cosh(πδ)/sinh(πδ))^n`. Includes explicit summability. No n≥1 premise is added. |
| norm-convert converse | `norm_convert_converse` (186) | PASS | Reconstructs the actual function by `eq_fourierSum_torusCoeff`, then uses `norm_fourierSum_le` at radius `2πρ`. The summability premise guards the real-valued weighted sum; the finite bound A expresses the blueprint's bounded analytic class. Valid also for n=0. |

All seven signatures elaborate verbatim from Appendix A, allowing whitespace changes only. Constants are fixed by `HeadParams` before h, f, ε and initial points; no wider dependence appears. The constants helpers actually work for n≥1, stronger in dimension than the eventual n≥3 headline. The norm conversion helpers work for every n, including zero. No conclusion-shaped hypothesis occurs: HeadHyp is precisely the frozen source-input bundle.

`const_time` deliberately exports pointwise bounds and a universal numerical Ω0 comparison rather than defining a supremum (design D11). The consumer still forms its bounded nonempty frequency supremum, gets its positive lower bound from `const_exceptional` at the center, and uses `√n ≤ n`. Likewise the perturbation clause exports f's weighted estimate and the explicit scaling identity; period conversion supplies tilde-f's coefficients. These are the approved decomposition, not a completed source-theorem or headline assembly.

## Definitions and imports

No new `def`, `abbrev`, `structure`, instance, or fallback is introduced in P1-6. Definition classification is therefore empty for the package.

Inspected imported meanings needed for the audit: `centralSet` is the real inclusion of the closed maximum-norm R/2 ball; `polyNbhd` is the full maximum-norm tube; Dom orders angles before actions; euclid is the square root of the sum of coordinate norm squares; tildeh is genuine multiplication by `2π`; complexHessian is the iterated derivative in coordinate directions. WBound includes summability alongside its tsum estimate. The converse likewise includes SummableWeighted. Thus no proof relies on an unguarded junk tsum, supremum, or derivative fallback. Frozen analytic and Hessian premises guard the derivatives on the actual open domains.

A recursive local KAM import-closure inspection found 55 modules, **no provider imports and no frozen theorem imports**. Only frozen definitions enter this helper module; no DRAFT_SORRY or other provider is consumed.

## Independent validation receipts

All direct build/probe/replay commands below used default Lean resource budgets. No heartbeat, recursion or synthesis override was added.

1. Targeted build:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p16 KAM.Nekhoroshev.Interfaces.ConstantsAnalytic
[inp-gate] slot 2 acquired 04:31:02 for KAM.Nekhoroshev.Interfaces.ConstantsAnalytic
Build completed successfully (3191 jobs).
exit 0
```

Only replayed dependency warnings occurred in Period.lean:351 (hR, hs), 367 (hR), 368 (hs). None came from the audited module.

2. Exact design-signature examples and every public theorem's axioms:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P16Audit.lean
'KAM.Nekhoroshev.const_tubes' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.const_hyp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.const_perturbation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.const_exceptional' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.const_time' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.norm_convert' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.norm_convert_converse' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

Each example retained all binders, hypotheses and conclusions from the design and applied the corresponding implementation theorem. The scratch probe was removed after validation.

3. Kernel replay (only the P1-6 module is supplied; inherited modules are outside scope):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.ConstantsAnalytic
replaying KAM.Nekhoroshev.Interfaces.ConstantsAnalytic
exit 0
```

4. Source lint, rerun serially before the final kernel replay:

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (398 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The sole failure is the expected generated-root staleness allowed by the audit brief. The root was left untouched. Final sequential kernel replay used the command in item 3, printed exactly `replaying KAM.Nekhoroshev.Interfaces.ConstantsAnalytic`, and exited 0. It began only after the serialized lint had exited.

5. `git diff --check inp...HEAD`: exit 0, no whitespace diagnostics (only the multiple-merge-base warning). Forbidden-token/override search of ConstantsAnalytic returned no matches. Module header, public imports, module docstring and public section are present; 201 lines is below 1500. Protected-path diff is empty as recorded above.

## Findings, uncertainty and deviations

No suspected pinned-source erratum or blueprint contradiction was found in this package. The binding audit-2 n=0 synchronization requirement is present in this checkout's Part-1 nc-decay/nc-sum proof. R2-02's flow-coordinate transport and the optional sharp norm issues concern other packages and are not consumed here. No new source theorem is treated as a black box; this is the local constants/norm conversion layer.

Audit workflow deviation: the initial lint was launched without recognizing that its ABI stage invokes Lean; it overlapped subsequent checks and lacked the explicit LEAN_NUM_THREADS environment on that initial lint invocation. The audit noticed the overlap, disclosed it, and reran lint and kernel replay sequentially with LEAN_NUM_THREADS=1 and nice -n 5. This affects the initial scheduling receipt, not theorem soundness. The final rerun receipts below supersede the initial lint/replay scheduling.

Only this report is an authored repository change; no source repair, frozen edit, generated-root edit, git mutation, or dependency change was made. This PASS WITH NOTES approves the helper package; it does not establish or seal N-HEAD-C.
