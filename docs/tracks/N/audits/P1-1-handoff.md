# P1-1 prover handoff (branch inp-p11, 2e8ce68; offloaded package run by the main orchestrator)

Files KAM/Nekhoroshev/Interfaces/{Norms,Setting,Domains}.lean.
| Node | Declarations |
|---|---|
| bpN:p1:norm-compare | euclid, norm_le_euclid, modeSize_euclid_compare, lattice_ball_inclusions, bilinear_euclid_bound |
| bpN:p1:s-holo#data | Data, Wdom, qcQ, qcB, qcMu, qcEll |
| bpN:p1:realdomain | realActionDomain_eq, isOpen_realActionDomain, ball_subset_realActionDomain, isOpen_Wdom, realInclusion₂_preimage_complexDomain, isOpen_actionNbhd_ball, isOpen_complexDomain, realInclusion_preimage_actionNbhd, tube_subset, tube_real, complexStrip_mono, complexStrip_zero |
Prover: all 20 declarations identical to NPart145Signatures.lean (script). bilinear_euclid_bound splits n = 0. Imports frozen Defs, KAM.Fourier.Derivative, KAM.Strip.Cauchy, KAM.Strip.RealRestriction.
AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md incl. binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p1 nodes): (1) statements = blueprint (norm comparison constants, Data/Wdom structure fields are typing/standing data only, realdomain identities); (2) qc* definitions are the intended objects; (3) hygiene.
