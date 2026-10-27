# P2-10 prover handoff (branch k/p2-10, 0c7d0e8, merged with main)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p2:perturbation (a)–(f) | KAM.Apost.perturbation | KAM/Apost/PerturbationTorsion.lean |
| steps pt-domain, pt-dl, pt-gram, pt-binv, pt-n | PerturbationAux.{ball_subset_of_close, norm_fderiv_sub_le, norm_transpose_tangentMat_sub_le, norm_gram_sub_le, gram_inverse_perturb, norm_normalMat_sub_le, norm_normalMat_le_two, frame_items} | KAM/Apost/Perturbation.lean |
| steps pt-xn, pt-torsion, pt-twist | PerturbationAux.{normalFieldMat_sub, norm_normalField_sub_le(_strip), norm_torsion_combo_le, norm_torsion_sub_le, differentiableOn_torsion_of, norm_torsionAverage_sub_le, twist_neumann} | KAM/Apost/PerturbationTorsion.lean |
| step pt-small (arithmetic) | perturbation_small, pt_xn_sum_le | KAM/Apost/Constants.lean (landed) |

Prover: signature verbatim (diffed). Kernel replay: see orchestrator note.
AUDIT FOCUS: statement verbatim and = blueprint bp:p2:perturbation (design-audited); constants of each item match p2-aposteriori.tex L822–879 (incl. C_ΔT); (f) follows the REVISED step pt-twist (norm-of-integral bound, no periodicity); transpose bound 2n d/δ via cauchy_transpose_fintype; hygiene.
