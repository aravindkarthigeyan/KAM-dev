# P6-1 prover handoff (branch inp-p61, 91833da; offloaded package run by the main orchestrator)

File KAM/Planetary/Newtonian/Models.lean (579 lines, namespace KAM.Planetary).
| Node | Declarations |
|---|---|
| (support) | collisionFreeDomain, ofBodies, bodyVector_ofBodies, ofBodies_bodyVector |
| domain | isOpen_collisionFreeDomain, analyticOnNhd_movingHamiltonian, analyticOnNhd_fixedHamiltonian, differentiableAt_movingHamiltonian, differentiableAt_fixedHamiltonian |
| split | keplerPart, pairPotential, fMov, fFix, keplerPart_eq_sum (rfl), movingHamiltonian_split, fixedHamiltonian_split, moving_sub_fixed, analyticOnNhd_fMov, analyticOnNhd_fFix |
| action-reaction | gKernel, fKernel, sum_mass_smul_fKernel |
| hamilton-eqs | hamiltonianVectorField_moving, hamiltonianVectorField_fixed, hasDerivAt_bodyVector |
Prover: verbatim from KeplerSignaturesP.lean (Models section; line breaks only). Both Hamiltonians via one private modelH. ofBodies placed in Models per the signature file (design node table said Newtonian/Reduction; P6-6 must import it). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.3, §7 row P6-1; blueprint-P p6-newtonian-models.tex): (1) statements = blueprint (moving vs fixed-Sun Hamiltonians from the frozen defs, the split into Kepler part + perturbation with the right mass factors, action–reaction identity, Hamilton equations); (2) defs are intended objects on whole carriers (collision-free domain; division by zero off the domain not relied on); (3) private modelH covers both Hamiltonians faithfully; (4) hygiene; no frozen theorem/provider imported.
