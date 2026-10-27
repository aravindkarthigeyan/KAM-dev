# P4-10 prover handoff (branch k/p4-10, dfc1dc5; merged with main, which has P4-4 stab and P4-7 lip_error)

| Node | Declaration (KAM.Head.Lip namespace unless noted) |
|---|---|
| bp:p4:lip | KAM.Head.lip |
| step:p4:lip-far | far_case, far_arith |
| step:p4:lip-g1 | g1_step, err_le, g1_small |
| step:p4:lip-g2 | g2_step, close_arith |
| step:p4:lip-phase | norm_phi_le, norm_phaseAverage_sub_le, phaseAverage_shiftedTorus |
| step:p4:lip-close | close_case, final_arith |

Prover: signature verbatim (§12). G1/G2 only through hgc.g1b and hgc.g2. Strip rewrites s/8 − s/32 = 3s/32, s/8 − s/16 = s/16, (s/16)/2 = s/32 (design §P2). Smallness (s3)–(s5).
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) lip = blueprint bp:p4:lip with constants (A₂ etc.); (2) at the g1b and g2 calls every hypothesis of the G1/G2 bodies is discharged (no premise smuggled; strips and constants right); (3) phase step and close/far cases sound; (4) hygiene; no frozen theorem/provider imported.
