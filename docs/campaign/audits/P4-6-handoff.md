# P4-6 prover handoff (branch k/p4-6, b60e7cb; merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p4:preimage-measure (step step:p4:pm-proof) | KAM.Head.preimage_measure | KAM/Head/PreimageMeasure.lean |

Prover: Appendix A §15 verbatim; G3 conclusion enters as premise hC3 (design P16). Bad actions ⊆ invFreq h B '' (bad frequencies) by inverse_freq (e); L₊-Lipschitz by inverse_freq (d); KAM.lip_image with d = n; C3 α ≤ max C3 0 · α.
AUDIT FOCUS: (1) statement = blueprint p4-measure.tex L1087–1100 under design P16 (hC3 is exactly the frozen G3 conclusion shape, not a stronger assumption); (2) proof sound; (3) hygiene.
