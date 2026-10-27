# P4-4 prover handoff (branch k/p4-4, f63e250; merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p4:stab | KAM.Head.stab | KAM/Head/Stab.lean |
| step:p4:stab-small | KAM.Head.Stab.eta_small | KAM/Head/StabFrame.lean |
| step:p4:stab-cauchy | Stab.tangent_close, norm_fderiv_fderiv_le, norm_dL_le | StabFrame |
| step:p4:stab-gram | Stab.norm_gram_sub_one_le, gram_inv | StabFrame |
| step:p4:stab-frame | Stab.norm_normal_sub_le, norm_dN_le, frame_basic, frame_deriv | StabFrame |
| step:p4:stab-ball / -xn / -torsion / -twist | Stab.ball_subset_domainD / norm_fderivX_sub_le, normalField_close / torsion_close / twist_close | Stab |
| step:p4:stab-h2h4 | inside stab | Stab |

Prover: signature verbatim (§9). Non-public imports of KAM.Apost.PerturbationTorsion, KAM.Apost.Identities, KAM.Strip.HigherCauchy (not in the design DAG; no cycle). Sharper ∂_ω L bound (4nWηδ⁻² vs 4n²Wηδ⁻²); final constant c_T = 304n³(M+W_∞+1) unchanged.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) stab = blueprint bp:p4:stab with constants; (2) steps sound, the sharper estimates genuinely valid; (3) imports outside the design DAG harmless (no frozen theorem/provider, no cycle); (4) hygiene.
