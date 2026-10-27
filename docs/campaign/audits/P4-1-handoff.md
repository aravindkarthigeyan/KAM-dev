# P4-1 prover handoff (branch k/p4-1, 7cceeb4, merged with main; contains P4-0 which is in audit)

| Node | Declaration | File |
|---|---|---|
| bp:p4:freq-map | KAM.Head.freq_map | KAM/Head/Frequency.lean |
| bp:p4:hessian-inverse | KAM.Head.hessian_inverse (wrapper over hessian_inverse_at) | KAM/Head/InverseFrequency.lean |
| bp:p4:inverse-freq | KAM.Head.inverse_freq | same |

Prover: signatures verbatim from Part 4 Appendix A; invFreq is the P4-0b definition (unchanged); uses derivative_bounds_design with f = 0, ε = 0 for (iv) and the Lipschitz step.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md; P4-0 is audited separately): (1) the three statements = blueprint p4 nodes (constants, domains, norms: row-sum matrix norm under Matrix.Norms.Operator); (2) the use of derivative_bounds_design with f = 0, ε = 0 is legitimate (premises satisfiable/discharged, not vacuous); (3) inverse_freq's inverse is the genuine inverse on the stated domain; (4) hygiene. Audit only git diff k/p4-0...HEAD.
