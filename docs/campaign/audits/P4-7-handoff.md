# P4-7 prover handoff (branch k/p4-7, 4578ce7; merged with main)

| Node | Declaration (KAM.Head.) |
|---|---|
| bp:p4:lip-error | lip_error |
| step:p4:le-basic, le-sum | invarianceError_shift_le, lipError_const_le |
| step:p4:le-split | invarianceError_shift_eq, hamiltonianVectorField_hbold, lipError_split |
| step:p4:le-h | gradC_mixed_difference, norm_iteratedFDeriv_two_gradC_le |
| step:p4:le-f | norm_hamiltonianVectorField_f_shift_le |
| step:p4:le-transport | norm_fderiv_sub_unperturbed_le |

Prover: signature verbatim; shiftedTorus is the landed Head/Defs def. E' = (P_h,0) + P_f − DW Δω; P_h by mixed_difference_design + norm_iteratedFDeriv_le_Hconst; P_f by increments_open on B_{δ*}(K⁰_I(θ)); transport by increments_cauchy. lipError_const_le uses γ ≤ 1, 0 ≤ ε from SA.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) lip_error = blueprint bp:p4:lip-error with constants; (2) each le-* step sound (ball inclusion for increments_open; the mixed-difference adapter's premises discharged); (3) no frozen theorem/provider imported; (4) hygiene.
