# P2-1b prover handoff (branch k/p2-1b, 809d438)

| Node | Declaration | File |
|---|---|---|
| bp:p2:standing | KAM.Apost.Params, KAM.Apost.Standing | KAM/Apost/Standing.lean |
| bp:p2:admissible | KAM.Apost.Admissible | KAM/Apost/Standing.lean |
| bp:p2:constants | defs kappa … delta0, KAM.Apost.constants_spec | KAM/Apost/Constants.lean |
| interface (design §2.4) | KAM.cohConst, KAM.cohSolution, KAM.cohSolution_eq_fourierSum (rfl) | KAM/Strip/CohomologicalDefs.lean |

Orchestrator's mechanical check: all 33 declarations of these modules match the audited design Appendix A verbatim (signatures and definition bodies); the only differences are `constants_spec`'s proof (Appendix A had `sorry`) and an omitted unused `open KAM.Torus`. Helper lemmas added (pure arithmetic): n_le_C_DT, C_G_le_C_DT, C_DN_le_C_DT, gram_coeff_le, perturbation_small, pt_xn_sum_le, mul_rpow_le, div_absorb, absorb_mul_le, step_small, error_decay_hyp, c_sum_small, iteration_step_small, sum_coef_le, iteration_sums, closeness_le, g1_error_small(_aux), g1_closeness_eq, eight_le_aExp, eight_mul_delta0_le, one_le_*.

AUDIT FOCUS (the signatures were already audited in docs/campaign/audits/DESIGN-P23-P2-audit-1.md):
1. Each constant's definition body equals the blueprint's formula (bp:p2:constants, blueprint/parts/p2-aposteriori.tex) and its argument list is exactly its stated dependence.
2. cohConst equals Part 1's c(n,τ) (p1 L900–903) and cohSolution is the blueprint's Fourier solution; cohSolution_eq_fourierSum is rfl.
3. The arithmetic helper lemmas: correct statements of what later steps need (pt-small, st-small, it-sums, it-stepsmall, g1-e, g1-check), with hypotheses that are genuine inequalities (e.g. γ ≤ Θ given as a premise, not assumed proven elsewhere); flag any helper whose hypothesis hides a hard step.
4. Hygiene per the brief (axioms, sorry, file sizes, lint).
