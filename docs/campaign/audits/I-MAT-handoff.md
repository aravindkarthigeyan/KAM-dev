# I-MAT prover handoff (branch k/mat, e10f946); all declarations in namespace KAM

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p1:operator-norms | operator_norms | KAM/Matrix/Norms.lean |
| step:p1:opn-rowsum | matrix_operator_norm_rowSum | Norms |
| step:p1:opn-blocks | matrix_operator_norm_blocks | Norms |
| step:p1:opn-omega | matrix_operator_norm_omegaZero (about omegaZeroMatrix) | Norms |
| bp:p1:matrix-norms | matrix_norms | Norms |
| step:p1:mn-products | matrix_norm_products | Norms |
| step:p1:mn-transpose | matrix_norm_transpose | Norms |
| step:p1:mn-signed | matrix_norm_signed | Norms |
| bp:p1:real-inverse | real_inverse | KAM/Matrix/Inverse.lean |
| step:p1:ri-adjugate | real_inverse_adjugate | Inverse |
| bp:p1:holomorphic-inverse | holomorphic_inverse | Inverse |
| step:p1:hi-holomorphic | holomorphic_inverse_differentiableOn | Inverse |
| step:p1:hi-derivative | fderiv_matrix_inv_apply | Inverse |

Prover notes: row-sum operator norm via `open scoped Matrix.Norms.Operator` as in Neumann.lean; vectors use the Pi max norm; 2n indices are Fin n ⊕ Fin n with omegaZeroMatrix n = fromBlocks 0 (-1) 1 0 and omegaZeroMatrix_mulVec relating it to the frozen omegaZero; ‖Ω₀‖ = 1 assumes 0 < n (Part 0 convention n ≥ 2); real_inverse keeps IsUnit A; hi-holomorphic does not assume V open (only the derivative formula does); "real matrix" means B.map Complex.ofReal for real B; fderiv_matrix_inv_apply closes by rfl across a topology-instance mismatch.
