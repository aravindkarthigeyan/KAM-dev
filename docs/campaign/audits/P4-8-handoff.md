# P4-8 prover handoff (branch k/p4-8, e7eb9b4; merged with main)

| Node | Declaration (KAM/Head/Lagrangian.lean) |
|---|---|
| bp:p4:lagrangian | KAM.Head.lagrangian |
| step:p4:lag-regular | KAM.Head.lagrangeMat_regular (wraps Apost.Exactness.differentiableOn_lagrangeMat, Apost.periodic_lagrangeMat) |
| step:p4:lag-exact | KAM.Head.avg_lagrangeMat_eq_zero (= Apost.Exactness.avg_lagrangeMat, bp:p2:exactness) |
| step:p4:lag-transport | KAM.Head.fderiv_lagrangeMat_omega |
| step:p4:lag-unique | body of lagrangian (coh_unique_zero entrywise on T_ρ) |

Prover: signature verbatim; unused section variable {gc} dropped (type unchanged). hε and hDK unused (kept verbatim). lag-exact reuses the Part 2 proof instead of bp:p1:averages.
AUDIT FOCUS: (1) lagrangian = blueprint bp:p4:lagrangian; (2) ∂_ω Λ = 0 derivation sound (symmetry of D²𝐡); (3) coh_unique_zero applied with all premises discharged on T_ρ; (4) hygiene.
