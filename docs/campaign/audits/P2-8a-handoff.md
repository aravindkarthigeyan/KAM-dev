# P2-8a prover handoff (branch k/p2-8a, cae74b0, merged with main)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:triangular (defs) | KAM.Apost.triU, triXi0, triXiN, triGL, triXiL | KAM/Apost/Triangular.lean |
| bp:p2:triangular (a)–(d) | KAM.Apost.triangular | same |

Prover: defs and theorem verbatim from Appendix A (scripted diff). Uses KAM.Apost.cohomological twice (on T_r with loss δ, then on T_{r-δ} with loss δ).
AUDIT FOCUS: definitions are the blueprint's triangular solution (p2-aposteriori.tex L616–668) on their whole carrier, no junk value relied on; the theorem's items (a)–(d) with the stated constants; nonnegativity of HL, HN, HT, σ derived, not assumed; hygiene.
