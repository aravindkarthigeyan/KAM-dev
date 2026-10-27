# P2-5 prover handoff (branch k/p2-5, d08032a; sits on P2-4, which is now on main)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:frequency | KAM.Apost.frequency | KAM/Apost/Frame.lean |
| step:p2:freq-solve | FrameAux.ofReal_eq_inv_mul_transpose_mulVec | same |
| step:p2:freq-upper | FrameAux.norm_le_of_pointwise, FrameAux.two_mul_le_Theta | same |
| step:p2:freq-lower | FrameAux.le_norm_of_dio | same |
| bp:p2:frame-basic | KAM.Apost.frame_basic | same |
| step:p2:fb-holo | FrameAux.differentiableOn_{invarianceError,linMat,frameMat,normalFieldMat,torsion,symDefect,reducer,eta}, transpose_inv_gramMatrix, continuous_torsion_real | same |
| step:p2:fb-bounds | FrameAux.norm_{tangentMat,transpose_tangentMat,inv_gramMatrix,normalMat,transpose_normalMat,frameMat,linMat}_le | same |
| step:p2:fb-eta | FrameAux.norm_etaL_le, norm_etaN_le | same |
| step:p2:fb-torsion | FrameAux.arith_normalField, norm_normalFieldMat_le, norm_torsion_le | same |

Prover: elaborated types of frequency and frame_basic are identical to Appendix A (#check). Kernel replay exit 0.
AUDIT FOCUS: statements = design (verbatim); the frequency bound's derivation of 0 ≤ ε from ‖E 0‖ ≤ ε with 0 ∈ T_r; the constants in fb-bounds/fb-eta/fb-torsion match the blueprint; Frame imports Apost.Tools (not in the design's DAG; no cycle) — acceptable?; hygiene.
