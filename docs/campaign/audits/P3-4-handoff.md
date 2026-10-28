# P3-4 prover handoff (branch k/p3-4, 0c7b9ec; contains k/p3-3 (in audit); merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p3:quadratic | KAM.Uniq.quadratic | KAM/Uniq/Quadratic.lean |
| step:p3:quad-normal-osc / -normal-avg / -normal | KAM.Uniq.QuadAux.osc_bound / norm_avg_le / normal_bound | same |
| step:p3:quad-remainder, quad-tangent, quad-combine, bp:p3:quadratic#absorb | inside quadratic | same |

Prover: signature verbatim. ROUTE DEVIATION: the cohomological steps use the Part 1 a-priori bound with exact cohConst (KAM.cohomological_apriori_pi) instead of the blueprint's uniqueness wording. Constant bookkeeping reuses Uniq/Standing (one_le_absorb, normal_coeff_le, tangent_coeff_le, C_L_mul_eq, combine_coeff_le, inv_mul_rpow_sq).
AUDIT FOCUS: (1) quadratic = blueprint bp:p3:quadratic (p3-uniqueness.tex) with its constants; (2) the a-priori-bound route is valid (it bounds the actual function, which needs zero average, periodicity, holomorphy — check every premise is discharged); (3) the steps inside quadratic are sound; (4) hygiene. Audit only git diff k/p3-3...HEAD.
