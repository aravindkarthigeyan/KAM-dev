# P3-2 prover handoff (branch k/p3-2, 2067a81, merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p3:phase | KAM.Uniq.phase | KAM/Uniq/Phase.lean |
| eq:p3:Delta (Appendix A def) | KAM.Uniq.diffMap | same (design listed it under Uniq/Difference; moved here because phase is stated with it; P3-3 will import it) |
| step:p3:phase-real, -fixed-point, -derivatives, -contraction, -conclusion | KAM.Uniq.PhaseAux.im_integrand, redMat_mulVec_diffMap, norm_sub_le_real, norm_taylor_defect_le, norm_phaseMap_sub_le, exists_fixedPoint | same |

Prover: Φ(ψ) = -Re⟨B Lᵀ(W(·+ψ) + K₁(·+ψ) − K₁ − Lψ)⟩ is a ½-contraction of the closed ball of radius 2 C_P η (ContractingWith.exists_fixedPoint'); B real by KAM.real_inverse; increments with δ = ρ/2; K₁ remainder by the mean value inequality on a convex complex ball (design §7.2(5)) instead of the blueprint integral formula; R = 2 C_P η < ρ/2 from the smallness and n ≥ 2.
AUDIT FOCUS (design docs/campaign/design/PART23-LEAN-DESIGN.md): (1) phase and diffMap verbatim Appendix A and = blueprint bp:p3:phase / eq:p3:Delta; (2) contraction and ball-invariance estimates sound, constants as stated; (3) the MVT route substitution is valid; (4) h1, h2 unused but kept (signature verbatim) — acceptable; (5) hygiene.
