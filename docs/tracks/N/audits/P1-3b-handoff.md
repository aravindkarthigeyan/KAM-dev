# P1-3b prover handoff (branch inp-p13b, bc13d64; off inp; offloaded package run by the main orchestrator; prover on claude-12)


Branch inp-p13b, worktree /root/code/KAM-inp-p13b.

## Files
- NEW `KAM/Nekhoroshev/Interfaces/Hessian.lean` (286 lines): `partials`, `hessian_convert`
  (+ public helper `iteratedFDeriv_perm_of_contDiffAt_three`, private helpers).
- NEW `KAM/Nekhoroshev/Interfaces/QuasiConvex.lean` (92 lines): `qc_convert`.
- CHANGED `KAM/Nekhoroshev/Interfaces/Period.lean` (403 lines): added `public import ...QuasiConvex`,
  `qc_convert_tilde` (placed before the (c)-(e) section), docstring line.
- `KAM.lean` not touched (lint reports it out of date: the sub-orchestrator regenerates it).

## Nodes
- `partials` -> `KAM.Nekhoroshev.partials`; `hessian-convert` -> `KAM.Nekhoroshev.hessian_convert`;
  `qc-convert` -> `KAM.Nekhoroshev.qc_convert`; scaling sentence -> `KAM.Nekhoroshev.qc_convert_tilde`.
  All signatures verbatim from NPart145Signatures.lean (only line-wrapped for the 100-char lint).

## Approach
- `partials`: k=1,2 from the frozen `B(M)` clause at `![i]`, `![i,j]` (`iteratedFDeriv_one_apply`,
  `iteratedFDeriv_two_apply`); `euclid ≤ √n‖·‖` from `norm_le_euclid`. Permutations: `k=1` trivial,
  `k=2` by `ContDiffAt.isSymmSndFDerivAt`, `k=3`: swap of args (0,1) is `isSymmSndFDerivAt` of `Df`
  (`iteratedFDeriv_succ_apply_right`); swap of (1,2) is Schwarz for `D²f` at nearby points, differentiated
  (`iteratedFDeriv_succ_apply_left`, `fderiv_continuousMultilinear_apply_const_apply`,
  `EventuallyEq.fderiv_eq`); all permutations from adjacent transpositions
  (`Equiv.Perm.mclosure_swap_castSucc_succ`, `Submonoid.closure_induction`).
- `hessian_convert`: `complexHessian = D²h(e_i,e_j)` (`fderiv_clm_apply`), `le_opNorm₂`;
  bilinear bound = `bilinear_euclid_bound`; operator bound by testing against `z̄`;
  real Hessian: `holo_real_c` for `Data n R s 0 h 0` (f = 0 is an `IsAnalyticPerturbation`)
  plus basis expansion of the bilinear form.
- `qc_convert`: `hessian_convert` real part for the bound (`B_c = n M_ℂ + q ≥ n M_ℂ`), `q = m/n` from
  `euclid² ≤ n‖·‖²`, `conic_coercive` with `ℓ' = qcEll`, `5q/8 ≥ q/2`.
- `qc_convert_tilde`: `frequencyMap_tildeh`, `fderiv_fderiv_realPart_tildeh`, scale by 2π, apply `qc_convert` (b).

## Checks
- Gate: `inp_lake_build.sh /root/code/KAM-inp-p13b KAM.Nekhoroshev.Interfaces.Hessian ...QuasiConvex ...Period`
  -> "Build completed successfully (2906 jobs)"; no sorry/error in my modules (Period has only the
  pre-existing unused-variable warnings in `tildef_domain`/`tildef_periodic`).
- `sh scripts/lint_sources.sh`: no forbidden patterns, no >100-char lines, module/frozen/ABI checks PASS;
  only message: "KAM.lean is out of date; run scripts/gen_root_imports.py" (expected, not mine to edit).
- `#print axioms` for partials, hessian_convert, qc_convert, qc_convert_tilde:
  `[propext, Classical.choice, Quot.sound]` each.

## Uncertainties / errata / deviations
- None: no statement needed an extra hypothesis; no suspected source errata; no deviations; no heartbeat issues.
- Note: `Interfaces/Hessian` imports `Interfaces/HoloReal` (for `complexHessian`, `holo_real_c`), as the design DAG says.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row P1-3b and proof plans; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p1 partials, hessian-convert, qc-convert, qc_convert_tilde): (1) statements = blueprint and signature (partial derivatives, Hessian conversion, quasi-convexity conversion constants, the tilde variant added to Period); (2) the addition to the existing Period module does not change P1-4's declarations; (3) proofs sound; (4) hygiene. Audit git diff inp...HEAD.
