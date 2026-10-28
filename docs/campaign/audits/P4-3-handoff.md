# P4-3 prover handoff (branch k/p4-3, 01d438f, merged with main; contains P4-0 which is in audit)

| Node | Declaration | File |
|---|---|---|
| bp:p4:parameters (claims) | KAM.Head.parameters | KAM/Head/Parameters.lean |
| bp:p4:smallness | KAM.Head.smallness | same |

Prover: signatures verbatim from Part 4 Appendix A §7; helpers in KAM.Head.Parameters (positivity pack, cStar_le_1..8, smallness_s1..s7, natCast_le_cT); only gc.Pos used. Checked (s1)–(s7) and δ_*²/(2L₊c̄) = 1/(2L₊F₂) against blueprint p4-measure.tex L406–466.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md; the P4-0 definitions are audited separately): (1) parameters and smallness state the blueprint claims exactly (every (s_i), constants and their dependence); (2) proofs sound with only gc.Pos; (3) hygiene. Audit only KAM/Head/Parameters.lean (git diff k/p4-0...HEAD).
