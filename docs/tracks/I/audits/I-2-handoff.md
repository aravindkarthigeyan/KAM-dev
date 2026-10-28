# I-2 prover handoff (branch inp-i2, 76bc8b4; offloaded package run by the main orchestrator)

File KAM/Iso/Conversion.lean (220 lines; imports KAM.Kepler.Basic, KAM.Iso.KeplerHamiltonian).
| Node | Declarations (KAM.Iso) |
|---|---|
| conversion-map | periodOneMap, periodOneMapC |
| conversion (a) | periodOneMap_symplectic, periodOneMap_hamiltonianVectorField, periodOneMap_hasDerivAt_iff |
| conversion (b) | keplerRotH_comp_div |
| conversion (c), (d) | frequencyMap_comp_div, keplerBorder_conversion, borderedHessian_conversion |
| nondeg | nondeg_period_one |
Helpers periodOneCLM, periodOneInvCLM, periodOneMap_eq_clm, periodOneInvCLM_periodOneMap, periodOneMapC_phaseToC. Statements verbatim from KeplerSignatures.lean (line wraps). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.1, §7 row I-2; blueprint-I p6-kepler.tex conversion nodes): (1) statements = blueprint (period-one rescaling, symplecticity with the right factor, transformed Hamiltonian/frequency map/bordered Hessian, nondegeneracy with constant 3/I₀⁴); (2) keplerRotH_comp_div at I₀ = 0 relies on total division — confirm it is stated (or used) only where the blueprint intends; (3) defs are the intended maps on whole carriers; (4) hygiene.
