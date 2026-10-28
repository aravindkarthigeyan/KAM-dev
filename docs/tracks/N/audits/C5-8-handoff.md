# C5-8 prover handoff (branch inp-c58, bcc9dca; contains inp-c57 (C5-7, delivered); offloaded package run by the main orchestrator; prover on claude-12)


Branch `inp-c58`, worktree `/root/code/KAM-inp-c58`.

## Files (all new, 1067 lines total, each file < 250 lines)
- `KAM/Canonical/CompositionDomain.lean`: `ComposeData`, `.omega`, `.gauge`, `composition_domain` (i), helpers
  `mem_Dom_of_scaledNorm_le`, `ComposeData.{smallField,gaugeInterior_half,flow_mem_hat}`.
- `KAM/Canonical/CompositionCoeff.lean`: `coeff_congr`, `wbound_congr`, `inClass_congr`, `wbound_of_finset_le`,
  `hasSum_coeff`, `wbound_tsum` (series of class members with summable bounds).
- `KAM/Canonical/CompositionSeries.lean`: `q_facts`, `lieTerm_bound`, `lieSeries_{class,bound,tail}`, `series_eq`.
- `KAM/Canonical/Composition.lean` (facade of the node): `composition_series` (ii), `ComposeData.smul`, `flow_smul`,
  `composition_t` (iii), `composition_real` (iv).
- `KAM/Canonical/CompositionIntegralClass.lean`: `clampT`, `paramHyp_integrand`, `field_periodic`, `integral_inClass`.
- `KAM/Canonical/CompositionIntegral.lean`: `coeff_integral` (Fubini), `continuousOn_integrand`, `composition_integral`.

## Nodes proved (statements copied verbatim from `NPart145Signatures.lean`; checked by whitespace-normalised diff)
- `bpN:p5:composition` (i) `composition_domain`, (ii) `composition_series`, (iii) `composition_t`, (iv) `composition_real`
  (and `ComposeData`, `ComposeData.omega`, `ComposeData.gauge`).
- `bpN:p5:composition-integral`: `composition_integral`.

## Approach
(i) `vf_bound` + `polydisc_subset_Dom` (via `mem_Dom_of_scaledNorm_le`); flow stays in the loss `ρ/4, σ/4` (`flow_a` displacement).
(ii) terms `ad^j u/j!` by `adjoint_bound`; class of the sum by `uniform_limit_holomorphic` (M-test, no coefficient series
needed); bound and tails by `wbound_tsum` (coefficients commute with the dominated series; finite partial sums over `k`,
so no Tonelli); identification with `u∘X¹` by `taylor_lie` with hatted loss `ρ̂ = 3ρ/4` (`η̂ = 16η/9 ≤ 8/9`, remainder
`≤ q̂^N U → 0`). `(1-q)⁻¹ ≤ (1-η)⁻¹` because `q ≤ η`; a negative `U` is vacuous (`wbound_of_neg`).
(iii) `X^t_φ = X¹_{tφ}` by `flow_a` uniqueness (`flow_smul`), `ComposeData.smul` with `Φ ↦ |t|Φ`; then (ii) for `tφ`.
(iv) `flow_e` (C5-5) + `KAM.hamiltonian_real`.
Integral: time clamped to `[0,1]` to get a `ParamHyp` family on `[-1,1]` (`paramHyp_integrand`), holomorphy by
`ParamHyp.intervalIntegral`, periodicity by `flow_d` + periodicity of `X_φ`; coefficients by Fubini
(`integral_integral_swap`), weighted bound by `‖∫‖ ≤ ∫‖‖` on finite partial sums and `composition_t` slice bounds.

## Checks
- Gate build `inp_lake_build.sh /root/code/KAM-inp-c58 KAM.Canonical.CompositionIntegral KAM.Canonical.Composition`:
  `Build completed successfully (3208 jobs)`, no warnings, no `sorry`.
- `sh scripts/lint_sources.sh`: `check_lean_modules: PASS (404 Lean files)`, `FROZEN-ANCHOR GUARD OK`,
  `ABI HASHES OK (144 frozen declarations)`; the ONLY complaint is `KAM.lean is out of date` (generated; for the
  sub-orchestrator to regenerate; not edited by me).
- `#print axioms` of `composition_domain`, `composition_series`, `composition_t`, `composition_real`,
  `composition_integral`: each `[propext, Classical.choice, Quot.sound]`.
- No `set_option maxHeartbeats`/other overrides; no heartbeat problems encountered (design signal: none).

## Deviations / things to know
- **Merge of `inp-c55`.** `composition_real` needs `flow_e` (C5-5, `Canonical/FlowInverse`), which is not in the brief's input list
  and was not in my base. I ran `git merge inp-c55` into `inp-c58` (clean, merge commit `541c97e`). C5-5 must therefore land before
  (or together with) C5-8. Nothing of C5-5 was edited.
- Extra helper modules beyond the design's two (`CompositionDomain`, `CompositionCoeff`, `CompositionSeries`,
  `CompositionIntegralClass`) keep each file small; `Composition` and `CompositionIntegral` keep the design's public paths.
  `ComposeData` etc. live in `CompositionDomain` (re-exported by `Composition`) rather than literally in `Composition.lean`.
- Imports are only frozen Defs (`HamiltonianVectorFieldC`); no frozen theorem/provider imported.

## Uncertainties / suspected errata
None found; statements are true as given (the `Φ ≥ 0` correction B3 is already in `ComposeData`).

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row C5-8 and proof plans; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p5 composition, composition-integral): (1) statements = blueprint and signature (composition with the time-one map of a Hamiltonian flow in weighted norms, the integral form, constants and domain losses); (2) proofs sound (Lie series / adjoint bounds C5-6, C5-7, vf-bound C5-4, sup-weighted W4-4); (3) hygiene. Audit ONLY the six C5-8 modules KAM/Canonical/Composition{,Coeff,Domain,Integral,IntegralClass,Series}.lean. FlowInverse, Symplectic, SymplecticForm (C5-5) and VectorField (C5-4) came in by merges and were audited separately (their replay here exited 1 only because they are not built in this worktree; they replay 0 in their own worktrees).
