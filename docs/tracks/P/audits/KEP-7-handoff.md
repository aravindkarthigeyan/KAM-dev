# KEP-7 prover handoff (branch inp-kep7, 615c2fa; offloaded package run by the main orchestrator)

File KAM/Kepler/DelaunayChart.lean (319 lines). Node bpI:p7:chart: delaunay_periodic, delaunay_eq_iff, keplerRegion_subset_image, delaunay_localDiffeo (verbatim from KeplerSignatures.lean). Private rot_eq_self_iff. Surjectivity follows stepI:p7:ch-surj1..3; local diffeo via ContDiffAt.toOpenPartialHomeomorph + restrOpen, analytic inverse via contDiffAt_symm.
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.2, §7 row KEP-7, §7.1): (1) statements = blueprint (Delaunay map 2π-periodic, injective modulo 2π lattice, the Kepler region is in the image, local analytic diffeomorphism); (2) proofs sound (anomaly recovery from Lagrange's identity, e > 0 used where needed); (3) hygiene.
