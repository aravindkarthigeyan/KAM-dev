# KEP-6 prover handoff (branch inp-kep6, 1b22495; offloaded package run by the main orchestrator)

Files KAM/Kepler/DelaunayJacobian.lean (355 lines, new; extra module not in the design table, publicly imported by DelaunaySymplectic) and KAM/Kepler/DelaunaySymplectic.lean (732 lines).
| Node | Declarations |
|---|---|
| explicit columns | orbitMapColumn, fderiv_orbitMapR_basis, fderiv_delaunay_basis (DelaunayJacobian; helpers eccOf_data, fderiv_apply_eq_of_hasDerivAt_line, hasDerivAt_orbitMapR_curve) |
| symplectic | delaunay_symplectic, delaunay_fderiv_equiv, delaunay_hasFDerivAt, delaunay_hamiltonianVectorField |
| Liouville primitive | delaunayGen, delaunay_liouville |
Prover: statements and the orbitMapColumn/delaunayGen bodies match KeplerSignatures.lean (whitespace). Six Lagrange brackets br01..br23 and four identities lv0..lv3 proved by field_simp + explicit certificates (sin²+cos²=1, k²=1−e², D=1−ec). Invertibility from nondegeneracy (ofBijective).
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.2, §7 row KEP-6, §7.1 plan): (1) statements = blueprint (Delaunay map symplectic on its domain, explicit Jacobian columns, Liouville primitive F = 2Les with the stated identity, Hamiltonian field transport); (2) the extra DelaunayJacobian module respects the DAG (no cycle, public facade); (3) bracket certificates genuinely prove the identities (no hidden hypothesis); (4) hygiene.
