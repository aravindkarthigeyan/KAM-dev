# P2-4 prover handoff (branch k/p2-4, a43c0b1)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:hamiltonian | KAM.Apost.hamiltonian (items ham_regularity, ham_periodic, ham_real, ham_symplectic, ham_mvt) | KAM/Apost/Hamiltonian.lean |
| bp:p2:periodicity | KAM.Apost.periodicity | KAM/Apost/Periodicity.lean |

Prover's mechanical check: both signatures verbatim (whitespace-normalised) from Appendix A. Kernel replay exit 0.
AUDIT FOCUS: (1) statements = blueprint nodes (already design-audited; confirm verbatim); (2) item (e) uses increments_open and taylor_iteratedFDeriv: correct constants (the factor ½); (3) periodicity: realness and periodicity of every listed object, including ⟨T⟩; the det G hypothesis is used only where needed; (4) helper im_fderiv_eq_zero_of_real_line is correct; (5) hygiene.
