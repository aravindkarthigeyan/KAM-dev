# I-1 prover handoff (branch inp-i1, 080ab0d; offloaded package run by the main orchestrator)

File KAM/Iso/KeplerHamiltonian.lean (188 lines).
| Node | Declarations (KAM.Iso) |
|---|---|
| kep-ham | keplerRotH, differentiableOn_keplerRotH, keplerRotH_real |
| kep-border | finThreeEquivSumUnit, frequencyMap_keplerRotH, fderiv_frequencyMap_keplerRotH, borderedHessian_keplerRotH, det_borderedHessian_keplerRotH |
Extra public simp lemmas finThreeEquivSumUnit_symm_inl_zero/_inl_one/_inr. Signatures token-identical to /root/code/KAM-inp-design-kep/.drafts/design/KeplerSignatures.lean (two line breaks). Design import edge Kepler.Basic omitted (unused). KAM.lean not regenerated (expected lint failure "KAM.lean out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.1, §7 row I-1): (1) every declaration verbatim from the signature file and equal to blueprint-I p6-kepler.tex nodes kep-ham / kep-border (domain {J₀ > 0}, constants κ, Ω, sign conventions); (2) keplerRotH is the intended Hamiltonian on its whole carrier; the frequency map and bordered Hessian computations are correct; det formula consistent with I-0's keplerBorder_det; (3) frozen defs used as intended (FrequencyMap, BorderedHessian, KeplerBorder); no frozen theorem/provider imported; (4) hygiene.
