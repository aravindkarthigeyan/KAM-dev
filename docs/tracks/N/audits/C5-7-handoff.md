# C5-7 prover handoff (branch inp-c57, bb74a5b; contains inp-w48 (W4-8, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Canonical/Adjoint.lean` (~270 lines). No other file touched (KAM.lean not regenerated).

**Proved:** `bpN:p5:adjoint` = `KAM.Canonical.adjoint_bound`, statement copied verbatim from
`NPart145Signatures.lean` (l. 651-660); no extra hypotheses.

**Approach:** `κ=ρ/h`, `λ=σ/h`; `adjoint_induction` shows by induction on `i ≤ h` that `adPow φ i u ∈ O(r-iκ, s-iλ)` with
bound `(∏_{k<i} q_k) U`, `q_k = 2h²Φ/(eρσ(h+1+k))` (`stepConst`). One step = `wbound_bracket` (φ, ad^{i}u; r',s'; r-iκ,s-iλ; κ,λ)
plus `{ad^i u, φ} = -{φ, ad^i u}` (`poissonBracket_antisymm`, `adPow_succ_eq_neg`) and the new helpers `coeff_const_mul`,
`inClass_const_mul`, `wbound_const_mul` (scalar multiples; also give the `1/h!` form). `step_const_le` bounds the bracket constant.
`prod_stepConst`: product via `Nat.factorial_mul_ascFactorial` + `Nat.ascFactorial_eq_prod_range`. `factorial_ge`: `(N/e)^N ≤ N!`
from `Real.pow_div_factorial_le_exp`; `final_estimate` gives the `(eη/4)^h` form. Sign issue: `Φ,U ≥ 0` is derived from a point of
`polyNbhd` when `D` is nonempty; when `D = ∅` all `WBound`s hold vacuously (separate branch).

**Checks:** `inp_lake_build.sh /root/code/KAM-inp-c57 KAM.Canonical.Adjoint` -> `Build completed successfully`;
`scripts/lint_sources.sh` -> only "KAM.lean is out of date" (expected, orchestrator regenerates), check_lean_modules PASS,
frozen-anchor guard OK, ABI hashes OK; no sorry/maxHeartbeats in file.
`#print axioms KAM.Canonical.adjoint_bound` -> `[propext, Classical.choice, Quot.sound]`.

**Uncertainties / errata / deviations / design signals:** none. Statement is true as written (note: it holds for any real
`Φ, U` since negative values force `polyNbhd` empty). No heartbeat issues; file well under 1500 lines. Imports no frozen theorem or provider.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row C5-7 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p5 adjoint): (1) statements = blueprint and signature (the adjoint-action / iterated bracket estimates with constants and domain losses); (2) proofs sound (W4-8 bracket estimate, induction); (3) hygiene. Audit ONLY the C5-7 module(s) (git diff inp-w48...HEAD restricted to KAM/Canonical/).
