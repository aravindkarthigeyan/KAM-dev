# P5-4 prover handoff (branch inp-p54, 868e1bb; offloaded package run by the main orchestrator)

File KAM/Iso/Confinement/Invariance.lean (107 lines; imports Setting, RealHam). torus_flow, torus_invariant (statements = IPart58Signatures.lean exactly). Private rhoInf_pos, isOpen_prod_realAct' (duplicates a private lemma of RealHam).
torus_flow: realRestriction_fderiv + T.invariant at real points + realHam_field_eq + isRealOnReals_iff + realInclusion₂_injective. torus_invariant: torus_flow at θ − t₁ • ωt, gen_uniqueness on univ ×ˢ realAct B r₀.
AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P5-4 + audits; blueprint-I p5-confinement.tex torus flow/invariance): (1) statements = blueprint (real torus k is invariant under the real Hamiltonian flow; the flow on the torus is the linear flow with frequency ωt); (2) TorusOutput/ToriExistence fields used as intended — no field encodes the conclusion; (3) gen_uniqueness premises discharged; (4) hygiene.
