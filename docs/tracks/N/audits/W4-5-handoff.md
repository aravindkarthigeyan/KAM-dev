# W4-5 prover handoff (branch inp-w45, ef72725; off inp; offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Weighted/Algebra.lean` (237 lines). KAM.lean not touched (lint reports it out of date, as expected; the sub-orchestrator regenerates).

**Declarations (signatures verbatim from NPart145Signatures.lean, B.5):** `KAM.Weighted.coeff_mul`, `KAM.Weighted.wbound_mul`, `KAM.Weighted.wbound_pow`. Argument order of implicits is D r s … as in the signatures (D, r, s now come from a `variable` line).

**Approach:** `fourierSum_mul` is the Cauchy product of two absolutely convergent Fourier series, via `Equiv (k,l) ↦ (l,k-l)`, `tsum_mul_tsum_of_summable_norm` and `Summable.tsum_prod`. `eq_fourierSum_coeff` shows a scalar class function equals its Fourier series at fixed `I`; it is a scalar re-proof of the private `eq_fourierSumVec_coeff` in Coefficients, because the latter is private and needs only `WSummable` at one `I`, not a global `WBound`. Coefficients of `uv` are then `KAM.torusCoeff_fourierSum` applied to the convolution. The norm bound is `KAM.Fourier.weightedNorm_convolution_le` with `2π s ≥ 0`. The convolution is converted from K's orientation `∑ a_l b_{k-l}` to the statement's `∑ a_{k-l} b_l` by `Equiv.subLeft`. `wbound_mul` is `mul_le_mul` after nonnegativity of `wsum`. `wbound_pow` is induction, with the base `u^0 = 1` handled by `wbound_one` (coefficients of `1` are the indicator of `0`, from `torusAverage_character`). No `n = 0` branching needed (`0 < s` is a hypothesis; K lemmas hold for all `n`).

**Checks:**
- `lake env lean KAM/Weighted/Algebra.lean`: no output (no warnings).
- Gate: `inp_lake_build.sh … KAM.Weighted.Algebra` → "Build completed successfully (3159 jobs)".
- `scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only message `KAM.lean is out of date` (generated file, not edited by me).
- `#print axioms` of coeff_mul, wbound_mul, wbound_pow: `[propext, Classical.choice, Quot.sound]`.
- No `maxHeartbeats` anywhere; file well under 1500 lines; no sorry/axiom.

**Uncertainties / errata / deviations:** none. No heartbeat design signals. Statements were provable as written. Observation only: `Weighted/Coefficients` could expose `eq_fourierSumVec_coeff` (currently private); I did not edit it.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row W4-5 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p4 algebra): (1) statements = blueprint and signature (the weighted norm is an algebra: product bounds, constants, carriers); (2) proofs sound (summability, convolution of coefficient families); (3) hygiene. Audit git diff inp...HEAD.
