# I-5 prover handoff (branch inp-i5, 3b93587; offloaded package run by the main orchestrator)

File KAM/Iso/ShiftPotential.lean (696 lines; imports KAM.Kepler.Plane + frozen CollisionFree, Radius, Primary1, Primary2, PlaneSq, PlaneLength).
| Node | Declarations |
|---|---|
| shift-def | vtheta, clen, e0, shiftW, shiftPsi, shiftF, shiftXi, ShiftConst, shiftEps, shiftCstar, shiftCsh, shiftO, shiftConst_shiftEps |
| shift | shiftF_eq_integral, shift_domain, shift_holomorphic, shift_mul_eq, shift_bound, shift_value_zero, shift_real |
Prover: verbatim from KeplerSignatures.lean L778–840 (whitespace; order of two theorems; one misplaced docstring re-attached). shift_holomorphic proved by rationalising the difference quotient into an explicit jointly holomorphic formula (route differs from the design's suggestions); shift_bound by maximum modulus on dslope with radius ε₀/2. shift_mul_eq's h, hq, hμ unused (kept). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.2, §7 row I-5, §7.1; blueprint-I p7 node bpI:p7:shift): (1) the defs are the blueprint's shift potential on their whole carrier — in particular shiftF at μ = 0 and the dslope-based quotient: is any junk value relied on, and does shiftF agree with the blueprint's integral form everywhere it is claimed?; (2) statements = blueprint (domain Ξ, constants 6/(ε₀ √c_*), ε₀ < 1/4, holomorphy jointly in (q, μ)); (3) the explicit-formula route for holomorphy is valid (positive real parts of radicands on the domain); (4) hygiene.
