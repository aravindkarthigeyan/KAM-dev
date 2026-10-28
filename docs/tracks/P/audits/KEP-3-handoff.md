# KEP-3 prover handoff (branch inp-kep3, ce0bd6e; offloaded package run by the main orchestrator)

File KAM/Kepler/EquationComplex.lean (480 lines; imports Mathlib only). Helpers in KAM.Kepler.EqC.
| Node | Declaration (KAM.Kepler) |
|---|---|
| operator | keplerOp |
| KeplerData | KeplerData (structure, verbatim) |
| solution | keplerSol |
| unique solution in the strip | keplerSol_spec |
| joint analyticity | keplerSol_analyticOnNhd |
| holomorphy | keplerSol_differentiableOn |
| implicit derivative | keplerSol_fderiv |
| real solution | keplerSol_real |
| 2π shift | keplerSol_shift |
Prover: verbatim from KeplerSignatures.lean L216–270 (whitespace only). Contraction on the closed strip |Im G| ≤ y₀ (ContractingWith); analytic implicit function theorem over ℂ; hex in keplerSol_real redundant (kept). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2, §7 row KEP-3, §7.1 KEP-3 plan): (1) KeplerData's fields are standing/typing data only (no proof step smuggled), and keplerSol is the unique solution (defined from a proved existence/uniqueness, not a junk choice relied on off its domain); (2) statements = the design and blueprint (strip, contraction constant κ, analyticity domain, derivative formula); (3) analytic IFT usage sound; (4) hygiene.
