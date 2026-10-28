# P4-2 prover handoff (branch k/p4-2, 6730dc6; merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p4:h1 | KAM.Head.h1 | KAM/Head/H1.lean |
| bp:p4:unperturbed (a)–(g) | KAM.Head.unperturbed | KAM/Head/Unperturbed.lean |
| unperturbed (a)–(c), (g) helpers | tangentMat_unperturbedTorus, gramMatrix_unperturbedTorus, normalFrame_unperturbedTorus, ball_unperturbedTorus_subset_domainD | KAM/Head/UnperturbedFrame.lean (extra internal module) |

Prover: signatures verbatim (Part 4 Appendix A). (d) torsion of K⁰ = ∂²_I 𝐡 via fderiv_hamiltonianVectorField and vanishing normal-frame derivative; continuity from torsion_regular_design (c). (e) row-sum ‖∂²_I f‖ ≤ ‖D²f‖ ≤ F₂ε, hessian_inverse, matrix Neumann. (f) fderiv_hbold + frequencyMap_eq_gradC. hε : ε ≤ 1 unused (kept verbatim).
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) h1 and unperturbed = blueprint p4 nodes, every item with its constants; (2) item (d) identifies the frozen torsion of the unperturbed torus correctly; (3) items (e), (f) sound; (4) hygiene.
