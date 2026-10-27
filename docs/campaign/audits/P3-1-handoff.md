# P3-1 prover handoff (branch k/p3-1, 8032e1a, merged with main)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p3:matrix-norms | KAM.Uniq.matrix_norms | KAM/Uniq/Frame.lean |
| bp:p3:lagrangian | KAM.Uniq.lagrangian | same |
| bp:p3:frequency-bound | KAM.Uniq.frequency_bound | same |
| bp:p3:reducibility | KAM.Uniq.reducibility | same |
| bp:p3:torsion-bound | KAM.Uniq.torsion_bound | same |

Prover: all five signatures verbatim (Appendix A §P3.2). Helpers in KAM.Uniq.FrameAux.
AUDIT FOCUS: statements verbatim/= blueprint p3-uniqueness.tex; ROUTE DEVIATION in `lagrangian`: uses item (b) of KAM.Apost.cohomological with H = 0 (operator-norm a-priori bound) instead of the blueprint's "uniqueness with g = 0" (step:p3:lagrangian-unique) — is the derivation valid (Ω_K = 0 on T_{ρ-δ} for every δ, hence on T_ρ) and does it need no boundedness of Ω_K beyond what is proved?; reduction to Part 2 via standing_of and μ > 0; reducibility's P⁻¹ via Matrix.inv_eq_left_inv; torsion_bound with δ = ρ/4; hygiene.
