# P2-12 prover handoff (branch k/p2-12, 83b68e2; contains k/p2-9 (in audit); merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p2:step (a)–(f) | KAM.Apost.step | KAM/Apost/Step.lean |
| helpers for (a) | KAM.Apost.Step.newtonMap_differentiableOn, newtonMap_isPrimaryOnStrip, newtonMap_isRealOnReals | same |

Prover: signature verbatim; assembly of frequency, step_small, correction_spec, newton_error (item (c)), perturbation on T_{r-2δ} with loss δ ((d),(e),(f) and the ball margin in (b)); primary property via KAM.periodic_int_shift.
AUDIT FOCUS: (1) step = blueprint bp:p2:step (p2-aposteriori.tex), all six items and constants; (2) the perturbation application's premises are discharged (domain margins, smallness); (3) newtonMap really is primary/real/holomorphic on the stated strip; (4) hygiene. Audit only git diff k/p2-9...HEAD.
