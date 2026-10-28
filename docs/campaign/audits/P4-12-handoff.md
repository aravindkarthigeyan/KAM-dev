# P4-12 prover handoff (branch k/p4-12, 265c57c; merged with main)

| Graph node | Lean declaration (KAM/Head/Assembly.lean) |
|---|---|
| bp:p0:head (proof, conditional helper) | KAM.Head.head_of_gValid |
| step:p4:head-empty | KAM.Head.head_empty |
| step:p4:head-constants | KAM.Head.headC, one_le_headC, A0_mul_le_headC, Cmeas_div_le_headC (ε₀ = c_*) |
| step:p4:head-negative | KAM.Head.nonneg_of_bound_nonempty (HeadQ.lean; new import edge Assembly → HeadQ) |
| step:p4:head-positive | KAM.Head.head_positive |
| step:p4:head-zero | KAM.Head.head_zero |

Prover: Appendix A signature verbatim. C = max(1, A₀ c_*^{1/2}, C_meas c_*^{-1/4}), ε₀ = c_*; for ε > 0, γ = ε^{1/4}/c_*^{1/4}; ε = 0 via main_measure for every γ ∈ (0,1] and ENNReal.le_of_forall_pos_le_add. Extra def headC. Scratch check: §P1 provider plumbing elaborates with head_of_gValid.
AUDIT FOCUS (this is the last HEAD package before the provider; design docs/campaign/design/PART4-LEAN-DESIGN.md §2.2, §6): (1) head_of_gValid's conclusion is exactly HeadConclusion and its premises are exactly Data, the layer constant and GValid (design rule 6 checklist); (2) C and ε₀ depend only on the data (and gc) as the frozen HEAD statement's quantifier order requires; (3) head-positive (choice of γ, (SA)) and head-zero sound; (4) headC is a legitimate constant def; the import edge to HeadQ is harmless; (5) hygiene, no frozen theorem/provider imported.
