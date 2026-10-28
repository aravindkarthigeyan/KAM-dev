# P5-1 prover handoff (branch inp-p51, 2ef244c; offloaded package run by the main orchestrator)

File KAM/Iso/Confinement/PatchConst.lean (147 lines; imports only KAM.Iso.Confinement.Setting).
Declarations (KAM.Iso.Confinement): EnergyPatch.K_eq_image, EnergyPatch.isCompact_K, EnergyPatch.isOpen_Omega, EnergyPatch.Omega_subset_K, patchConst_exists, exists_eps0 (statements = IPart58Signatures.lean L354–372 exactly). Private helper exists_pos_le_finite.
Constants: r = min δ 1 (δ from IsCompact.exists_cthickening_subset_open); Lm, LΦ = max 1 (derivative bounds on compact sets); κ = min (δm/4) (min (δm − mPlus) (δm + mMinus)). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P5-1 + audits PART58-design-audit-{1,2}.md; blueprint-I p5-confinement.tex): (1) statements = blueprint/design (patch geometry; the PatchConst fields' quantitative content; ε₀ over the finite family of patches); (2) the constants produced satisfy every PatchConst field genuinely (no field vacuous, no premise smuggled); (3) hygiene; no frozen theorem/provider imported.
