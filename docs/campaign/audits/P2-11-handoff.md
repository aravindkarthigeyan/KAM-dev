# P2-11 prover handoff (branch k/p2-11, 95063cc)

| Node | Lean declaration | File |
|---|---|---|
| bp:p2:schedule (defs) | KAM.Apost.deltaSeq, rSeq, epsSeq, dSeq | KAM/Apost/Schedule.lean |
| bp:p2:schedule (claims) | KAM.Apost.schedule | same |
| bp:p2:error-decay | KAM.Apost.error_decay | same |
| step:p2:ed-errors | KAM.Apost.epsSeq_le_q_pow (via KAM.quadratic_iteration_linear) | same |
| step:p2:ed-sums | KAM.Apost.error_decay_sum | same |

Orchestrator's mechanical check: Appendix A signatures verbatim; kernel replay exit 0. Public helpers for P2-13: deltaSeq_pos, deltaSeq_le_delta0, deltaSeq_succ, deltaSeq_rpow, rSeq_eq, rSeq_succ, epsSeq_nonneg, epsSeq_succ_eq, q_nonneg, error_decay_eps, error_decay_weighted.
AUDIT FOCUS: definition bodies of the schedule equal the blueprint (bp:p2:schedule, p2-aposteriori.tex) on their whole carrier; the claims and error decay are exactly the blueprint's (the signatures were audited in the design audit); helper lemmas hide no hard step; hygiene. The unused `hρinf` is kept for signature fidelity.
