# P6-3 prover handoff (branch inp-p63, fe7908f; contains inp-p61 (P6-1, delivered); offloaded package run by the main orchestrator)

File KAM/Planetary/Newtonian/Reconstruction.lean (328 lines, namespace KAM.Planetary).
| Node | Declarations |
|---|---|
| bpP:p6:reconstruction | reconstruction, reconstruction_all_time |
| bpP:p6:units | isNewtonSolutionOn_of_isMovingSolutionOn |
| bpP:p6:reconstruction-fixed | reconstruction_fixed, reconstruction_fixed_all_time |
| bpP:p6:orbit-transfer | orbit_transfer_moving, orbit_transfer_fixed |
Prover: statements = KeplerSignaturesP.lean (Reconstruction section, whitespace). hG, hm0 unused in several (blueprint hypotheses, kept). KAM.lean not regenerated.
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.3, §7 row P6-3; blueprint-P p6-newtonian-models.tex rc-* steps): (1) statements = blueprint (barycentric reconstruction of a Newtonian solution from a Hamiltonian one, units G = m0 = 1, fixed-Sun variant, orbit transfer from IsPhysicalTorus clause (viii)); (2) uses of P6-1/P6-2 lemmas discharge their premises; unused hG/hm0 hide no meaning change; (3) hygiene. Audit git diff inp-p61...HEAD.
