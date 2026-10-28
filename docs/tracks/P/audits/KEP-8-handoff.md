# KEP-8 prover handoff (branch inp-kep8, 16a77ef; offloaded package run by the main orchestrator)

File KAM/Kepler/Means.lean (146 lines; imports KAM.Kepler.Basic, Plane, Equation, Orbit).
| Node | Declarations (KAM.Kepler) |
|---|---|
| means | orbitMapR_mean_inv_radius, orbitMapR_mean_speed_sq, orbitMapR_mean_radius |
| circular means | same theorems (hypotheses 0 ≤ e < 1 cover e = 0) |
Extra public helper integral_comp_eccAnom (change of variables ℓ = u − e sin u). Statements match KeplerSignatures.lean (whitespace). KAM.lean not regenerated (expected lint "out of date"; inp's Orbit.lean line-length lint failure is KEP-5's).
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.2, §7 row KEP-8, §7.1 plan): (1) the three means = blueprint values (1/L², 1/L², L²(1 + e²/2)) with the mean over ℓ ∈ [0, 2π] normalized as in the blueprint; (2) "circular means" node genuinely covered by e = 0 instances; (3) the change of variables is valid (f strictly increasing, eccAnom inverse via keplerLong_unique); (4) hygiene.
