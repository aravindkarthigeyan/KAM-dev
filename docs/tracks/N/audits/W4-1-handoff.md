# W4-1 prover handoff (branch inp-w41, 4022c0d; offloaded package run by the main orchestrator)

Files KAM/Weighted/Domains.lean (97 lines), KAM/Weighted/Norm.lean (171 lines).
| Node | Declarations |
|---|---|
| domains (a),(b) | polyNbhd, Dom, polydisc, isOpen_polyNbhd, isOpen_Dom, polyNbhd_mono, Dom_mono, polydisc_subset_Dom, actionNbhd_eq_polyNbhd |
| norm, norm#monotone | InClass, coeff, modeWeight, wsum, WSummable, WBound, HasFiniteWNorm, wnorm, coth; wbound_iff, WBound.mono, wbound_pi_apply, wbound_pi_of_components (+ helpers modeWeight_mono, coeff_apply_pi) |
Prover: statements identical to NPart145Signatures.lean except: `omit [IsScalarTower ℝ ℂ W] [CompleteSpace W] [FiniteDimensional ℂ W] in` on wbound_iff and WBound.mono (unused section instances; theorems strictly more general); polydisc_subset_Dom's hr', hrr, hs', hss unused (kept). coth in Norm (F5 audit fix).
AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md incl. binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N weighted-norm nodes): (1) defs are the blueprint's weighted Fourier norm objects on whole carriers (coeff integral, mode weight, wnorm when not finite — junk value relied on?); (2) the omitted instance arguments give strictly stronger theorems and break no consumer in the design; (3) statements = blueprint; (4) hygiene.
