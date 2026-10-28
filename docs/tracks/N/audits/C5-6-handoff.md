# C5-6 prover handoff (branch inp-c56, c4c945f; contains inp-c53 (C5-3, delivered); offloaded package run by the main orchestrator; prover on claude-12)


Branch inp-c56 (worktree /root/code/KAM-inp-c56).

## Files
- NEW `KAM/Canonical/Lie.lean` (289 lines). Imports `KAM.Canonical.Setting`, `KAM.Canonical.Flow` and three Mathlib modules
  (`IteratedDeriv.Defs`, `ContDiff.Deriv`, `IntervalIntegral.IntegrationByParts`). No frozen theorem or provider is imported.
- NEW `.drafts/handoff-C5-6.md`. `KAM.lean` NOT touched (the lint reports it out of date; the orchestrator regenerates it
  with `scripts/gen_root_imports.py`).

## Nodes
- `bpN:p5:lie-derivative` -> `KAM.Canonical.lie_derivative` (signature verbatim).
- `bpN:p5:taylor` -> `KAM.Canonical.taylor_lie` and `KAM.Canonical.taylor_poschel` (signatures verbatim).
- Only whitespace was changed relative to the signature file: four lines were wrapped to fit the 100-character lint.

Helpers (new names, no premise beyond the source):
`hasDerivAt_taylorWeight`, `taylor_integral_aux` (integral Taylor remainder for a family `G j` with `(G j)' = G (j+1)` on `[0,1]`),
`hasDerivAt_comp_flow`, `hasDerivAt_adPow_flow`, `poissonBracket_const_mul_add`.

## Approach
- Only `flow_a` is needed from the flow (two-sided `HasDerivAt` on `[-1,1]`). `flow_b` is not needed.
- `d/dt v(X^t z) = {v,φ}(X^t z)` by `HasFDerivAt.restrictScalars` + `comp_hasDerivAt` and `poissonBracket_eq_fderiv_field`.
- `lie_derivative`: `differentiableOn_adPow` for holomorphy. `ContDiffOn ℝ k` by induction on `k` (for all `j` at once) via
  `contDiffOn_succ_iff_derivWithin`; `ContDiffOn ℝ ∞` via `contDiffOn_infty`. `iteratedDerivWithin j` by induction on `j`
  using `iteratedDerivWithin_succ`, `derivWithin_congr`, `HasDerivWithinAt.derivWithin`.
- `taylor_integral_aux` by induction with `intervalIntegral.integral_mul_deriv_eq_deriv_mul`. `taylor_lie` takes `N = M+1`; the remainder
  bound uses `norm_integral_le_of_norm_le` and `∫₀¹ (1-t)^M/M! = 1/(M+1)!` (FTC with `hasDerivAt_taylorWeight`).
- `taylor_poschel`: `taylor_lie` with `N=2` for `h` and `N=1` for `f₀`; bracket linearity at the trajectory points
  (they lie in the open `Ω₁`); `integral_add` with integrability from continuity of `t ↦ adPow φ j v (X^t z)`.

## Checks
- `lake env lean KAM/Canonical/Lie.lean`: no output (no warnings).
- Gate: `inp_lake_build.sh /root/code/KAM-inp-c56 KAM.Canonical.Lie` -> `Built KAM.Canonical.Lie`, build completed successfully.
- `scripts/lint_sources.sh`: only message `KAM.lean is out of date; run scripts/gen_root_imports.py` (generated file, deliberately not
  edited); check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK.
- `#print axioms` of `lie_derivative`, `taylor_lie`, `taylor_poschel`: `[propext, Classical.choice, Quot.sound]` for each.
- No `sorry`, `set_option`, `maxHeartbeats`; no heartbeat/design signals; file is far below the 1500-line cap.

## Uncertainties, errata, deviations
- None: no statement was false or under-hypothesised. No suspected source errata. No deviations from the signatures.
- R2-02 (flow_e wording) concerns other packages; not applicable to this module.
- Reminder: `KAM.lean` needs regeneration (new module `KAM.Canonical.Lie`).

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row C5-6 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p5 lie-derivative, taylor): (1) lie_derivative, taylor_lie, taylor_poschel = blueprint and signature (iterated Lie derivatives along the flow, the integral Taylor remainder with 1/(M+1)!, Pöschel's second-order expansion); (2) the integral Taylor lemma and the bracket linearity at trajectory points are sound (domain Ω₁, integrability); (3) hygiene. Audit git diff inp-c53...HEAD.
