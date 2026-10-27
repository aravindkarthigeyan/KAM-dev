# P2-6 prover handoff (branch k/p2-6, 8b7b475; sits on P2-4, now on main)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:frame-identities | KAM.Apost.frame_identities (items (a)–(f)) | KAM/Apost/Identities.lean |
| step:p2:fi-products | Identities.alg_LtON, alg_NtOL, alg_NtON; fi_LtON, fi_NtOL, fi_NtON | same |
| step:p2:fi-sym | alg_PtOP, alg_symDefect; fi_PtOP, fi_symDefect | same |
| step:p2:fi-dl | fderiv_tangentMat_apply, fderiv_tangent_column_omega, fi_dL | same |
| step:p2:fi-domegak | alg_dLagrange, fi_dLagrange | same |
| step:p2:fi-blocks | alg_reduced, fi_reduced | same |
| step:p2:fi-22 | fi_dLtON, alg_LtOXN, fi_LtOXN | same |
| step:p2:fi-q | fi_QP, fi_QE | same |

Prover: signature verbatim (exact text diff). Kernel replay exit 0.
AUDIT FOCUS: frame_identities states the blueprint node exactly (design-audited; confirm verbatim); the algebraic identities and derivative steps are correct and use only the stated hypotheses (items (a),(b),(f) need only hG; (c),(d),(e) use hS and hK𝔅); hygiene.
