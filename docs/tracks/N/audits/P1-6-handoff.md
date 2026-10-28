# P1-6 prover handoff (branch inp-p16, fe25f91; contains inp-p13b (P1-3b, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Nekhoroshev/Interfaces/ConstantsAnalytic.lean` (~215 lines). No other file touched (KAM.lean not regenerated).

**Nodes / declarations (signatures verbatim from NPart145Signatures.lean):**
- constants (analytic): `const_tubes`, `const_hyp`, `const_perturbation`, `const_exceptional`, `const_time`.
- norm-convert: `norm_convert`, `norm_convert_converse` (K's `summableWeighted_torusCoeff`, `eq_fourierSum_torusCoeff`, `norm_fourierSum_le`, as in signature file).

**Approach:** tubes via `tube_subset`/`tube_real` with the `r0_le_*` helpers of Constants; `const_hyp` = `qc_convert_tilde` on the real tube, plus `hessian_convert` bilinear bound with `n*Mc ≤ B_c = n*Mc + q`; `const_perturbation` = `wbound_of_sup_bound` with (s,σ)=(s/2,s/4), `Dom ⊆ complexDomain` via `const_tubes` + `complexStrip_mono`, periodicity from clause (ii) with k = Pi.single j 1, arithmetic from `const_perturbation_arith`; `const_exceptional` from `const_exceptional_arith`, `norm_le_euclid`, `tilde_hypotheses` (5th conjunct); `const_time` (g1): ‖I‖ < R/2 + R/176 < R, `partials` on ℬ_s(R), `tilde_hypotheses`; (g2) is `const_time_arith`.

**Checks:**
- `inp_lake_build.sh /root/code/KAM-inp-p16 KAM.Nekhoroshev.Interfaces.ConstantsAnalytic`: "Build completed successfully (3191 jobs)", no warnings in my file (only pre-existing unused-variable warnings in Period.lean:351,367,368 from P1-3b).
- `scripts/lint_sources.sh`: check_lean_modules PASS, frozen-anchor guard OK, ABI hashes OK; only message: "KAM.lean is out of date" (expected; generated file, sub-orchestrator regenerates).
- `#print axioms` of all 7 declarations: `[propext, Classical.choice, Quot.sound]`.
- No maxHeartbeats, no sorry/axiom; file well under 1500 lines.

**Uncertainties / errata / deviations:** none. No signature changed; no statement found false or under-hypothesised. No heartbeat design signals.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row P1-6 and proof plans; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p1 constants (analytic), norm-convert): (1) statements = blueprint and signature (the analytic constants and the conversion between sup and weighted norms, with the stated dependence of constants); (2) proofs sound; (3) hygiene. Audit ONLY the P1-6 module(s) (git diff inp-p13b...HEAD).
