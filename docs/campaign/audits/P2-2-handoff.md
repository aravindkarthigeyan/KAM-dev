# P2-2 prover handoff (branch k/p2-2, ee2d835)

| Node or item | Declaration (KAM.Torus.*) | File |
|---|---|---|
| bp:p2:frozen-agreement | frozen_agreement (assembly of six items) | KAM/Torus/FrozenAgreement.lean |
| 1: G = LᵀL | gramMatrix_eq_tangentMat_transpose_mul | same |
| 2: normal frame columns | sumVec_normalFrame | same |
| 3: E = X_h∘K − Lω | sumVec_invarianceError | same |
| 4: T = NᵀΩ₀X_N | torsion_eq_mat (pointwise, needs DifferentiableAt ℂ (normalMat K) θ) | same |
| 5: G G⁻¹ = G⁻¹ G = 1 | gramMatrix_mul_inv, inv_gramMatrix_mul | same |
| 6: torsionAverage = avg torsion | torsionAverage_eq_avg | same |

Orchestrator's mechanical check: the Appendix A signature is verbatim; kernel replay exit 0.
AUDIT FOCUS: this is the bridge from the design's carrier objects to the FROZEN definitions (KAM/Frozen/Defs/{InvarianceError,GramMatrix,NormalFrame,Torsion,TorsionAverage,DotC,OmegaZero}.lean). Verify each item states the true identity between the frozen object and the carrier object on the stated domain (no weakening, no extra premise beyond the design's), and that item 4's pointwise form is correctly discharged on the strip. Hygiene per the brief. `hr : 0 < r` is unused (kept for signature fidelity).
