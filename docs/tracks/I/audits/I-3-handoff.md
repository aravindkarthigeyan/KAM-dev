# I-3 prover handoff (branch inp-i3, 7c37735; offloaded package run by the main orchestrator)

File KAM/Iso/RestrictedHam.lean (276 lines).
| Node | Declarations |
|---|---|
| ham-eq | restrictedHamTotal, restrictedHamiltonian_eq (rfl), isOpen_collisionFree, analyticOnNhd_restrictedHamTotal, restrictedVectorField_eq_hamiltonian, isRestrictedSolutionOn_iff |
| newton | restricted_newton_iff |
| h0 (second clause) | restrictedHamTotal_zero |
Prover: verbatim from KeplerSignatures.lean L723–749 (whitespace only). Private lemmas: fderiv of restrictedHamTotal in direction (u, w); rotation-derivative identity; restricted field at rotated points. KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.1, §7 row I-3; blueprint-I p6-kepler.tex/p8-r3bp.tex nodes ham-eq, newton, h0): (1) each statement = blueprint (the frozen restrictedVectorField / restrictedHamiltonian definitions used as intended; rotating-frame sign conventions in restricted_newton_iff; collision-free domain); (2) restrictedHamiltonian_eq by rfl means the frozen def is literally this Hamiltonian — confirm that is the intended object; (3) hygiene; no frozen theorem/provider imported.
