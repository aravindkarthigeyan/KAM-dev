# P4-5 prover handoff (branch k/p4-5, af971ec; contains k/p4-2 (in audit); merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p4:apply | KAM.Head.apply | KAM/Head/Apply.lean |
| bp:p4:normalize | KAM.Head.normalize (helpers isApplyTorus_phaseShift*) | KAM/Head/Normalize.lean |

Prover: signatures verbatim. apply = one call of hgc.g1a (G1 body) at unperturbedTorus (invFreq h B ω) with e = F1 ε; H1 from h1, H2–H5 from unperturbed (a),(b),(e),(f),(g); row-sum forms via norm_le_iff_forall_rowSum; smallness (s1),(s2); inverse_freq. normalize: Classical.epsilon_spec (apply …) + isApplyTorus_phaseShift through shift_design.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) apply/normalize = blueprint bp:p4:apply, bp:p4:normalize; (2) G1 enters only through GValid.g1a, every G1 hypothesis is discharged at the call (no premise smuggled); (3) the epsilon choice in normalize is legitimate (from a proved existence, as the blueprint's "fixed by choice"); (4) hygiene. Audit only git diff k/p4-2...HEAD.
