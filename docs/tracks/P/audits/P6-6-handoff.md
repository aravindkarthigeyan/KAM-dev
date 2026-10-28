# P6-6 prover handoff (branch inp-p66, fe6e90c; off inp; offloaded package run by the main orchestrator; prover on claude-12)


## Files
- NEW `KAM/Planetary/Newtonian/Reduction.lean` (~395 lines). No other file changed. KAM.lean not touched
  (lint reports "KAM.lean is out of date" — the sub-orchestrator regenerates it).

## Declarations (signatures copied verbatim from KeplerSignaturesP.lean; only line breaks added for the 100-col lint)
- `bpP:p6:nbody`: `nbodyHamiltonian`; `helioMap`, `helioInv` (defs).
- `bpP:p6:reduction` (a): `helioMap_helioInv`, `helioInv_helioMap`, `helioMap_symplectic`, `helioMap_pairing`.
- (b): `nbodyHamiltonian_helio`, `nbodyHamiltonian_helio_zero_momentum`.
- (c): `newton_to_moving`.
- Extra public helpers: planeDot_{add,sub}_{left,right}, planeDot_comm, planeDot_sum_{left,right}, planeSq_smul,
  planeSq_neg, bodyVector_{add,smul}, eq_of_bodyVector_eq, symplecticForm_eq_bodies, sum_pairs_succ,
  helioMap_{pos,mom}_{zero,succ}, helioInv_{pos,mom}_{zero,succ}. Private: helioLin, sum_filter_ne_succ,
  accel_identity, hasDerivAt_ofBodies.

## Approach
- Body-level calculus: `eq_of_bodyVector_eq` + `Fin.cases` give the inverse identities; `helioMap` is packaged as a
  linear map (`helioLin`, `LinearMap.toContinuousLinearMap`) so `fderiv = helioMap` and symplecticity reduces to the
  body form of `symplecticForm` plus bilinearity of `planeDot` (`ring` closes).
- `nbodyHamiltonian_helio`: `sum_pairs_succ` splits k<l pairs into Sun-planet / planet-planet, `planeLength_sub_comm`.
- Zero momentum: reuses `helioMap_helioInv`, `nbodyHamiltonian_helio`, `movingHamiltonian_split` (Models).
- `newton_to_moving`: derivative of `z` assembled by `hasDerivAt_ofBodies`, matched to `hamiltonianVectorField_moving`
  (Models) block by block; the momentum block is `accel_identity`; positions use zero total momentum;
  differentiability from `analyticOnNhd_movingHamiltonian`.
- Quarantine: imports only Models (+ frozen Defs); no frozen theorem or provider.

## Checks
- `inp_lake_build.sh /root/code/KAM-inp-p66 KAM.Planetary.Newtonian.Reduction`: Build completed successfully
  (only pre-existing unused-variable warnings in KAM/Kepler/Energy.lean; none in my file, no sorry).
- `sh scripts/lint_sources.sh`: only failing line is "KAM.lean is out of date" (expected, generated);
  module check PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK, no long lines.
- `#print axioms` of all seven theorems (helioMap_helioInv, helioInv_helioMap, helioMap_symplectic,
  helioMap_pairing, nbodyHamiltonian_helio, nbodyHamiltonian_helio_zero_momentum, newton_to_moving):
  `[propext, Classical.choice, Quot.sound]`.
- No set_option, no heartbeat overrides, file well under 1500 lines.

## Uncertainties / errata / deviations
- None found; all statements were provable as signed. Unused hypotheses `hG`, `hμ`, `hm0` (in the zero-momentum
  theorem) are kept as signed and silenced with `have _ := ...`.
- No design signals (everything elaborates at default heartbeats).

AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §7 row P6-6, §7.1; blueprint-P nbody, reduction): (1) statements = design and blueprint (the n-body Newtonian system and its reduction to the barycentric/heliocentric frame); (2) proofs sound; (3) hygiene. Audit ONLY the P6-6 module(s) (KAM/Planetary/Newtonian/Reduction*).
