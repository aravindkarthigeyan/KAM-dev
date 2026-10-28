# P8-6 prover handoff (branch inp-p86, 52446d9; offloaded package run by the main orchestrator)

File KAM/Iso/R3bp/Uniqueness.lean (43 lines; imports KAM.ODE.NewtonReduction, KAM.ODE.Uniqueness). Node bpI:p8:pf-uniq = KAM.Iso.R3bp.restricted_unique (verbatim from IPart58Signatures.lean). Proof: restricted_reduction μ, IsSolutionIn.mono, gen_uniqueness.
AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8 row P8-6 + audits; blueprint-I p8-r3bp.tex pf-uniq): (1) statement = blueprint (uniqueness of restricted three-body solutions on the collision-free domain, no confinement needed); (2) restricted_reduction's equivalence used correctly; (3) hygiene; no frozen theorem/provider imported.
