# P7-5 prover handoff (branch inp-p75, 72a0994; contains inp-p73 (P7-3, delivered); offloaded package run by the main orchestrator; prover on claude-12)


## Files
- NEW `KAM/Planetary/Poincare/Product.lean` (472 lines). No other file touched (KAM.lean not regenerated: lint reports "KAM.lean is out of date", for the sub-orchestrator).

## Nodes / declarations (all in `KAM.Planetary`, signatures verbatim from KeplerSignaturesP.lean)
- product-def: `planetBlock`, `poincareProd`, `poincareProdDom`, `hProd`, `regionProd`.
- product-chart: `isOpen_poincareProdDom`, `regionProd_one_iff`, `poincareProd_symplectic`, `analyticOnNhd_poincareProd`,
  `poincareProd_lattice`, `poincareProd_eq_iff`, `poincareProd_image`, `poincareProd_localDiffeo`,
  `keplerPart_poincareProd`, `hasDerivAt_nu`, `movingHamiltonian_poincareProd`, `fixedHamiltonian_poincareProd`,
  `isOpen_poincareProd_preimage`, `analyticOnNhd_fMov_poincareProd`, `analyticOnNhd_fFix_poincareProd`.
- poincareProdCast: `poincareProdCast`, `poincareProdCastDom`, `poincareProdCast_symplectic`,
  `analyticOnNhd_poincareProdCast`, `isOpen_poincareProdCastDom`, `poincareProdCast_eq_iff`.
- `phaseCast` and its API were already in `KAM/Kepler/Basic.lean` (not touched).
- NOT in this module (belong to P7-6/P7-7 per the design table): `circularPoint_eq_poincareProd`, `tube_in_chart`, polar chart declarations.

## Approach
`poincareProd = ofPlanets ∘ (blockwise poincare) ∘ blocks`, with CLMs `blockCLM i : Phase (n+n) →L Phase 2` and
`ofPlanetsCLM`, an explicit inverse `unblock`. Analyticity/derivative via `analyticAt_pi_iff`/`hasFDerivAt_pi'`;
symplecticity from `symplecticForm_ofPlanets` and `symplecticForm_blocks` (block-sum identities) plus `poincare_symplectic`;
lattice/eq_iff from `poincare_periodic`/`poincare_eq_iff` blockwise (`planetBlock_shift`); image from `poincare_image` and `unblock`;
local diffeo as in `poincare_localDiffeo` (symplectic => injective derivative => bijective by equal finrank);
Kepler part from `poincare_elements` (energy) and `keplerPart_eq_sum`; Hamiltonian splits from `movingHamiltonian_split`/`fixedHamiltonian_split`;
cast results by `IsSymplecticOn.comp` with `phaseCast_symplectic`, preimages by continuity of `phaseCast`.
Extra public helpers (distinct names, no stand-ins): `append_addNat` (simp lemma, `Fin.append` at `i.addNat n`), `ofPlanets`, `unblock`,
`ofPlanetsCLM`, `blockCLM`, `symplecticForm_ofPlanets`, `symplecticForm_blocks`, `eq_zero_of_symplecticForm`, `hasFDerivAt_poincareProd`,
`fderiv_poincareProd_apply`, `poincareProd_fderiv_equiv`, `poincareProd_block`, `planetBlock_shift`, `poincareProd_mem_regionProd`.

## Checks
- `inp_lake_build.sh /root/code/KAM-inp-p75 KAM.Planetary.Poincare.Product`: "Build completed successfully (9108 jobs)", no sorry/error/warning from Product.lean.
- `sh scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only note: "KAM.lean is out of date" (not edited, per rules); no >100-char lines.
- `#print axioms` for every theorem listed above: `[propext, Classical.choice, Quot.sound]` only.
- No maxHeartbeats or other overrides; file 472 lines; imports only frozen Defs (ProgradeElliptic, FastShift), Models, Bijective, Kepler.Basic (no theorem anchors/providers).

## Uncertainties / errata / deviations
- None: all statements proved exactly as signed, no extra hypotheses. No source defects found.
- Note: `Models.olean` was not in the worktree overlay; built it (and Bijective) via the gate before elaborating.

AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §7 row P7-5, §7.1; blueprint-P product-def, product-chart, poincareProdCast): (1) statements = design and blueprint (the product of Poincaré charts over the planets, its chart properties, the cast lemma); (2) definitions are the intended objects; (3) hygiene. Audit ONLY the P7-5 module(s) (git diff inp-p73...HEAD restricted to KAM/Planetary/Poincare/).
