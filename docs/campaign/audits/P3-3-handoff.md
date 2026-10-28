# P3-3 prover handoff (branch k/p3-3, 80bf7a6, contains k/p3-2 (in audit), merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p3:difference-equation | KAM.Uniq.difference_equation; defs KAM.Uniq.remainder, diffXi, diffQ (diffMap is P3-2's, in Uniq/Phase) | KAM/Uniq/Difference.lean |
| step:p3:diff-regularity / -linearized / -triangular / -bounds | KAM.Uniq.DiffAux.step_regularity / step_linearized / step_triangular (core fderiv_diffXi_eq) / step_bounds | same |

Prover: signature and three defs verbatim (substring match). Local helper DiffAux.differentiableOn_inv_of_isUnit_det (any finite index type; KAM.holomorphic_inverse is Fin p only). Stronger than blueprint (design departure L8): step_regularity needs no ‖Δ‖ < μ; step_bounds takes arbitrary Δ with ‖Δ θ‖ < μ.
AUDIT FOCUS: (1) difference_equation and the three defs = blueprint p3-uniqueness.tex L350–406 and Appendix A; defs are the intended objects on their carriers; (2) the step lemmas are sound; the L8 strengthening is genuinely stronger; (3) Taylor remainder with the ½ factor; (4) hygiene. Audit only git diff k/p3-2...HEAD (P3-2 is audited separately).
