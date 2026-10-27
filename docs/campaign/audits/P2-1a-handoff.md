# P2-1a prover handoff (branch k/p2-1a, 8cfccb9)

| Node or item | Declarations | File |
|---|---|---|
| bp:p2:objects (defs) | KAM.Torus.tangentMat, linMat, lagrangeMat, normalMat, frameMat, normalFieldMat, symDefect, reducer, eta, etaL, etaN, errDerivMat, triangularMat, redDefect | KAM/Torus/Objects.lean |
| bp:p2:objects (claim) | KAM.Torus.eta_eq_sumElim (helper omegaZeroMatrix_mulVec_sumElim) | Torus/Objects |
| carrier / design §1.5 | sumVec, norm_sumVec, colMat, sqMat, norm_colMat, norm_sqMat, colMat_mulVec, sqMat_mulVec, IsPeriodicOn, IsRealVec, IsRealMat, avg, primary_coordinatewise | KAM/Torus/Basic.lean |
| finite-index transpose bridge | KAM.Torus.cauchy_transpose_fintype | Torus/Basic |
| product rule (§7.2) | HasFDerivAt.matrix_mul, fderiv_matrix_mul_apply (+ mulVec, transpose, entry, constant-factor versions) | KAM/Matrix/Calculus.lean |

Orchestrator's mechanical check: all 28 Appendix A declarations of these modules appear verbatim. Kernel replay of the three modules: exit 0.

AUDIT FOCUS:
1. THREE GLOBAL INSTANCES in KAM/Matrix/Calculus.lean (~L145–160): SecondCountableTopology (Matrix l m ℂ), IsNormableSpace ℂ (Matrix l m ℂ), and Norm (E →L[ℂ] Matrix l m ℂ) := operator norm over Matrix.linftyOpSeminormedAddCommGroup. Decide: (a) is each mathematically correct and coherent with the row-sum norm used everywhere (no diamond with Mathlib's instances, e.g. the topology on Matrix vs the normed topology; the Norm instance not backed by a NormedAddCommGroup structure on E →L Matrix — can it make ‖·‖ mean two different things?); (b) should they be scoped (e.g. `scoped instance` in a KAM namespace opened by Part 2 modules) rather than global? Give a concrete recommendation with evidence (#synth / example probes).
2. Every definition of bp:p2:objects equals the blueprint's object (p2-aposteriori.tex, Definition objects) on its whole carrier; sumVec is an isometry for the max norms; avg is the blueprint's average.
3. cauchy_transpose_fintype states ‖(Df)ᵀ‖-type bounds exactly as needed (design §0, consumer steps step:p2:geo-de, step:p2:pt-dl).
4. The prover's matrix probe (needs KAM/Strip/{Taylor,Increments}.lean, now on main): rerun it after `git merge main` in a scratch copy is NOT allowed (no state-changing git); instead check by reading whether KAM.increments / KAM.taylor_iteratedFDeriv apply to Matrix-valued maps with these instances (a probe file in .lake/abi-scratch importing main's modules via the worktree is fine only if they exist here — otherwise say so).
