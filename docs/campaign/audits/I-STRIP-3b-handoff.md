# I-STRIP-3b prover handoff (branch k/strip3b, 01203aa, merged with main)

Built on Zohar's KAM/Strip/Cohomological.lean (I-STRIP-3, on main, untouched).

| Node | Declaration | File |
|---|---|---|
| bp:p1:fourier-basic (a), real C¹ form | KAM.torusCoeff_fderiv_coordinate_real, KAM.torusCoeff_fderiv_real | KAM/Strip/FourierDerivative.lean |
| bp:p1:cohomological-operator (a-priori bound) | KAM.cohomological_apriori, KAM.cohomological_apriori_pi, KAM.cohomological_apriori_operator | KAM/Strip/CohomologicalOperator.lean |
| bp:p1:cohomological-operator (matrix solution) | KAM.cohSolutionMat, KAM.eq_cohSolutionMat, KAM.norm_cohSolutionMat_le, … | same |
| node-level theorems | KAM.cohomological, KAM.cohomological_operator | KAM/Strip/CohomologicalNodes.lean |
| bp:p2:cohomological | KAM.Apost.cohomological (Appendix A signature verbatim) | KAM/Apost/Tools.lean |

AUDIT FOCUS: (1) KAM.cohomological / KAM.cohomological_operator state bp:p1:cohomological and bp:p1:cohomological-operator exactly (exact cohConst; uniqueness without a boundedness premise incl. g = 0; realness; componentwise; matrix operator norm = row-sum under Matrix.Norms.Operator, no dimension factor); (2) KAM.Apost.cohomological verbatim Appendix A and correctly derived (cohConst/(γδ^{τ+n}) ≤ cR γ⁻¹ δ^{-κ} via Tools.cohConst_div_le_cR); (3) no edits to Zohar's files; no name clash; (4) the real C¹ fourier-basic (a); (5) hygiene.
