# P4-Q prover handoff (branch k/p4-q, 427a298, merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p0:headq (proof) | KAM.Head.headq_of_head | KAM/Head/HeadQ.lean |

Prover: Appendix A signature (rfl-checked); helpers volume_pi_Ico_zero_one, volume_fundamentalDomain, actionNbhd_subset_of_subset, fundamentalDomain_diff_subset, nonneg_of_bound_nonempty, headq_epsilon_bounds. Route: blueprint p4-measure.tex L1270–1305 (dyadic_approx with η = κ·meas(B)/2; hHEAD on B'; ε₀ = min ε₀' (min (κ/C')² (κ·meas B/(2C'))⁴); kamCover_mono + subadditivity). Scratch probe: headq_of_head + KAM.kam_positive_measure elaborates against type_of% @KAM.kam_positive_measure_qualitative.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md §P1 and Appendix A): (1) the signature is Appendix A verbatim and HeadConclusion → HeadQConclusion is exactly the blueprint's derivation of HEAD-Q from HEAD (no extra premise; hτ unused is acceptable?); (2) the ε₀ choice and measure estimates are sound (empty B case; ε ≥ 0); (3) re-run the provider-assembly probe against the frozen HEAD-Q type; (4) imports no frozen theorem/provider; hygiene.
