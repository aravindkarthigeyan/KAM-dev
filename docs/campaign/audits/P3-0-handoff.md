# P3-0 prover handoff (branch k/p3-0, fa1ff33)

| Node | Lean declaration (KAM.Uniq.*) | File |
|---|---|---|
| bp:p3:standing | Params, S1, S2, S3, S4 | KAM/Uniq/Standing.lean |
| bp:p3:standing#constants (eq:p3:constants, eq:p3:Cquad) | C_P, C_Gamma, C_tor, C_coh, C_N, C_L, C_quad | same |
| eq:p3:c | threshold (threshold_pos) | same |
| claim after the assumption | standing_of | same |

Orchestrator: Appendix A §P3.1 signatures verbatim (script); kernel replay exit 0. Many arithmetic helper lemmas (positivity; frame/frequency; torsion; quadratic-estimate bookkeeping normal_coeff_le, tangent_coeff_le, C_L_mul_eq, combine_coeff_le; threshold smallness phase_small, delta_small, iteration_small, g2_smallness, iteration_Q_small, iteration_Q_two_pow_small).
AUDIT FOCUS: constants' bodies = blueprint eq:p3:constants / eq:p3:Cquad / eq:p3:c exactly (C_coh uses KAM.cohConst); S1–S4 fields verbatim source premises (rule 6); standing_of states the claim exactly; helpers hide no hard step; hygiene.
