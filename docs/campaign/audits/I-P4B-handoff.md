# I-P4B prover handoff (branch k/p4b, f8053b3); namespace KAM.Head; files KAM/Head/

| Node | Declaration | File |
|---|---|---|
| bp:p4:derivative-bounds (a)–(d) | derivative_bounds; constants derivConstH, derivConstF, derivConstM | DerivativeBounds.lean |
| step:p4:db-polydisc | closedBall_subset_domainD', closedBall_subset_actionNbhd_three_quarters | DerivativeBounds.lean |
| step:p4:db-cauchy | norm_iteratedFDeriv_le_cbar, norm_iteratedFDeriv_h_le, norm_iteratedFDeriv_f_le, norm_iteratedFDeriv_hbold_le | DerivativeBounds.lean |
| step:p4:db-vectorfield | hamJ, hamiltonianVectorFieldℂ_eq_hamJ, hamiltonianVectorField_bounds | HamiltonianField.lean |
| bp:p4:torsion-regular (a)–(d) | torsion_regular | TorsionRegular.lean |
| step:p4:tr-inverse | gramMatrix_inverse_regular | TorsionRegularGeneral.lean |
| step:p4:tr-torsion | normalFrame_regular, differentiableOn_linMat, torsion_regular_of_isOpen | TorsionRegularGeneral.lean |
| step:p4:tr-periodic | periodic_regular, hbold_periodic | TorsionRegularGeneral.lean, TorsionRegular.lean |
| bp:p4:shift (a)–(e) | phase_shift | Shift.lean |
| step:p4:shift-translation | differentiableOn_phaseShift, isPrimaryOnStrip_phaseShift, isRealOnReals_phaseShift, fderiv_phaseShift, invarianceError_phaseShift, phaseShift_transfer | Shift.lean |
| step:p4:shift-phase | phaseAverage_phaseShift, isNormalized_phaseShift_iff, norm_phaseAverage_le, norm_phaseShift_sub_le | Shift.lean |
| bp:p4:mixed-difference | mixed_difference | MixedDifference.lean |
| step:p4:mixed-proof | mixed_difference_of_finiteDimensional | MixedDifference.lean |

AUDIT QUESTIONS:
1. phase_shift assumes 0 < ρ (Part 0's strip convention; prover: (d), (e) false otherwise) — within convention?
2. Omitted unneeded hypotheses (derivative_bounds: periodicity, reality, openness of B; torsion_regular_of_isOpen/periodic_regular: θ-invariance of 𝔅) — confirm strictly stronger statements.
3. phase_shift and torsion_regular_of_isOpen are stated for arbitrary H and open 𝔅; torsion_regular specializes to hbold h f on 𝔇 — does torsion_regular state the blueprint node exactly?
4. bp:p4:shift (c) "bounds transfer" formalized as general phaseShift_transfer + two concrete instances — faithful?
5. torsion_regular (d) uses new predicate IsZPeriodicOn (ℤⁿ periodicity) with a conversion to KAM.Torus.IsPeriodicOn — consistent?
6. mixed_difference applies the mean value inequality in the opposite order to the blueprint (on parallelogram segments only) — statement exact?
7. The derivative-bounds constants derivConstH/F/M equal the blueprint's.
