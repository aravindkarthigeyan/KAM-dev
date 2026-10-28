# P5-5 prover handoff (branch inp-p55, 5387f66; offloaded package run by the main orchestrator)

File KAM/Iso/Confinement/EnergyCoordinate.lean (124 lines; imports RealHam). energy_coordinate (statement = IPart58Signatures.lean L557). Steps ec-reduce (H_ℝ(φ, Ψ(e,m)) = e + g e) and ec-lip (MVT with ‖Dg‖ ≤ F₁ε·LΦ < 1/2 from Smallness.lt_Phi).
AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P5-5 + audits; blueprint-I p5-confinement.tex energy-coordinate): (1) statement = blueprint (energy as a coordinate on the patch: equal energies at fixed m force equal points); (2) PatchConst/Smallness fields used as intended; (3) hygiene.
