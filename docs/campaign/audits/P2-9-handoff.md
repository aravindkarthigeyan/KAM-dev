# P2-9 prover handoff (branch k/p2-9, 7374286; contains k/p2-8b (in audit); merged with main)

| Node | Declaration (KAM.Apost.) |
|---|---|
| bp:p2:newton-error | newton_error; defs newtonMap, sMat, linError, quadRemainder |
| step:p2:ne-invert | NewtonError.sMat_spec (Neumann with A = I) |
| step:p2:ne-domain | NewtonError.newtonMap_mem |
| step:p2:ne-expand | NewtonError.sumVec_invarianceError_newtonMap |
| step:p2:ne-reduce | NewtonError.alg_core, NewtonError.xi_equation |
| step:p2:ne-lin | NewtonError.norm_linError_le, lin_arith |
| step:p2:ne-quad | NewtonError.norm_quadRemainder_le |
| step:p2:ne-total | NewtonError.total_arith |

Prover: defs and theorem verbatim from Appendix A (scripted diff). xi_equation re-derives Λξ − ∂_ωξ = η by repeating correction_spec's data preamble (correction_spec does not export it).
AUDIT FOCUS: (1) the four defs are the blueprint's objects (p2-aposteriori.tex L723–785) on their carriers, no junk value relied on (sMat's inverse, newtonMap's domain); (2) newton_error states the node exactly with its constants; (3) the steps are sound, in particular ne-lin's use of ‖Ω₀‖ ≤ 1 and the Neumann inversion; (4) hygiene. Audit only git diff k/p2-8b...HEAD (P2-8b is audited separately).
