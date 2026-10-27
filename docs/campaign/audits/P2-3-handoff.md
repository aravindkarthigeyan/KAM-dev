# P2-3 prover handoff (branch k/p2-3, 56acd99)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:matrix | KAM.Apost.matrix_facts | KAM/Apost/Tools.lean |
| step:p2:matrix-op | KAM.isGreatest_norm_mulVec, KAM.norm_entry_le (Part 1) | KAM/Matrix/Norms.lean |
| step:p2:matrix-transpose | KAM.norm_transpose_le_card_mul, Matrix.linfty_opNorm_mul | KAM/Matrix/Norms.lean |
| step:p2:matrix-blocks | Tools.norm_fromCols_le_add, Tools.norm_fromBlocks_diagonal, Tools.omegaZeroMatrix_transpose_mul_self, Tools.omegaZeroMatrix_inv, Tools.omegaZeroMatrix_mul_fromRows | Tools.lean |
| bp:p2:averages | KAM.Apost.averages | Tools.lean |
| step:p2:avg-bound | Tools.torusAverage_basic, Tools.torusAverage_vector_apply, Tools.im_integral_eq_zero, KAM.torusAverage_matrix_apply | Tools.lean |
| step:p2:avg-deriv | Tools.torusAverage_fderiv_apply_eq_zero | Tools.lean |
| cohR (def) | KAM.Apost.cohR | Tools.lean |

BLOCKED (not in the module, not assumed): bp:p2:cohomological (needs I-STRIP-3).
AUDIT FOCUS: (1) matrix_facts, averages, cohR are verbatim Appendix A (the orchestrator's script agrees); (2) averages (b) for arbitrary Banach W is proved by duality (SeparatingDual) — in the non-integrable case the Bochner integral is 0 by definition. Check the statement is the blueprint's on its intended inputs and that no consumer-relevant case relies on the junk value; (3) cohR is the blueprint's operator (componentwise cohSolution); (4) the graph has route nodes for step:p2:avg-deriv (real-route, bounded-route) — which route does the Lean proof take (or neither)?; (5) hygiene.
