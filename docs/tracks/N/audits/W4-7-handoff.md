# W4-7 prover handoff (branch inp-w47, e3586a9; off inp; offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Weighted/Projections.lean` (~175 lines). KAM.lean not regenerated (lint reports it out of date: expected; sub-orchestrator regenerates).

**Nodes:** `bpN:p4:projections` -> `KAM.Weighted.projMode`, `truncate`, `modeAverage`, `projections`, `truncation_tail`. Declarations copied verbatim from the signature file. Extra helpers: `projMode_eq_fourierSeries`, `modeAverage_eq_projMode` (public), `coeff_congr` (private).

**Approach:** `projMode S u = fourierSeries (1_S û_k)` (funext + indicator case split); `coefficients_series` with `a_k = 1_S û_k` (holomorphy from `coeff_differentiableOn`; summability by comparison with `hb`) gives class, coefficients and bound. `modeAverage = projMode {0}` (`tsum_eq_single`, `character_zero`). Tail: `coefficients_repr` HasSum, `Summable.tsum_add` with `Set.indicator_self_add_compl` for the split over `T, Tᶜ`; coefficients of `u - T_K u` equal those of `P_T u` (coeff only sees real points); termwise `modeWeight (s-σ) k <= e^{-2πKσ} modeWeight s k` for `K < |k|₁`.

**Checks:** `inp_lake_build.sh /root/code/KAM-inp-w47 KAM.Weighted.Projections`: Build completed successfully, no warnings. `scripts/lint_sources.sh`: only "KAM.lean is out of date" (expected); check_lean_modules PASS, frozen guard OK, ABI hashes OK.
`#print axioms` for `projections` and `truncation_tail`: [propext, Classical.choice, Quot.sound].

**Uncertainties / design signals:** none; no heartbeat issues. `hK : 0 ≤ K` in `truncation_tail` is unused by the proof (kept as in the signature; referenced via `have _ := hK` to silence the linter).
**Suspected errata / deviations:** none.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row W4-7 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p4 projections): (1) statements = blueprint and signature (Fourier projections/truncations in the weighted norms and their bounds); (2) proofs sound; (3) hygiene. Audit ONLY the W4-7 module(s).
