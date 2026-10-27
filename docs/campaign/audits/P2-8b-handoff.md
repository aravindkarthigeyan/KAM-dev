# P2-8b prover handoff (branch k/p2-8b, f15c15f, merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p2:correction | KAM.Apost.xi, KAM.Apost.correction (defs), KAM.Apost.correction_spec | KAM/Apost/Correction.lean |
| steps cor-data .. cor-reg | helpers in KAM.Apost.Correction (xi0_arith, xiN_arith, gL_arith, xiL_arith, xi_arith, xiN_absorb, dxi_arith, dK_arith, sumVec_correction, diffOn/periodic/isRealOnReals_correction, norm_correction_le, …) | same |

Prover: defs and theorem verbatim from Appendix A. triangular applied with HL = 2n𝔪²ε, HN = 2n𝔪ε, HT = C_T/δ, σ = σT; ξ built with Sum.elim, ΔK = sumVec.symm (P ξ); ∂_ω ξ = (gᴸ, -ηᴺ) via fderiv_sumElim_apply.
AUDIT FOCUS: (1) xi/correction are the blueprint's correction on their whole carrier (no junk value relied on); (2) correction_spec states bp:p2:correction exactly with the constants C_xi0, C_xiN, C_g, C_xi, C_DK; (3) the arithmetic lemmas and the triangular application are sound; (4) hygiene.
