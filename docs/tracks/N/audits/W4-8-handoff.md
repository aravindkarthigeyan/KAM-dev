# W4-8 prover handoff (branch inp-w48, 11411a1; contains inp-w45 (W4-5, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Weighted/Bracket.lean` (204 lines). No other file touched (KAM.lean not regenerated; lint reports it out of date, as expected).

**Proved:** `bpN:p4:bracket` -> `KAM.Weighted.wbound_bracket`, signature verbatim from NPart145Signatures.lean (B.7). Only addition: `set_option linter.unusedVariables false in` for the signature's unused `hρr` (same treatment as `cauchy_loss`); docstring added.

**Approach (per design plan):** `{u,v}` rewritten as a signed sum over `Fin n ⊕ Fin n` of products `∂θᵢu·∂Iᵢv`, `∂Iᵢu·∂θᵢv`. Private `wsum_sum_le`: coefficients of finite sums are sums of coefficients (`KAM.torusCoeff_finset_sum_mul`, continuity on real slice), so `wsum` is subadditive. Each product: `coeff_mul` (W4-5) gives `wsum(ab) ≤ wsum a · wsum b`. Then `Σ aᵢbᵢ ≤ (Σ aᵢ)·max bᵢ`: θ-factor via `cauchy_theta` (pointwise-in-I sum), I-factor via `cauchy_action` (global) restricted by `WBound.mono`. Sup over I is implicit (WBound is pointwise). `InClass`: `differentiableOn_poissonBracket` + periodicity of the derivative factors via `inClass_fderiv_apply`. Final algebra: `field_simp; ring`.

**Checks:**
- `LEAN_NUM_THREADS=1 inp_lake_build.sh /root/code/KAM-inp-w48 KAM.Weighted.Bracket`: `Build completed successfully`, no warnings, no sorry.
- `sh scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only note "KAM.lean is out of date" (generated; sub-orchestrator regenerates). Line-length check passes after fix.
- `#print axioms KAM.Weighted.wbound_bracket`: `[propext, Classical.choice, Quot.sound]`.

**Imports:** `KAM.Weighted.Algebra`, `KAM.Weighted.Cauchy`, `KAM.Canonical.Setting` (public); `KAM.Strip.FourierDerivative` (private). No frozen theorem or provider imported.

**Uncertainties / design signals:** none; no heartbeat issues (build ~4-8 s). No hypothesis was added; `hρr` is unused by the proof (for r ≤ ρ the region is empty).

**Suspected errata / deviations:** none.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row W4-8 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p4 bracket): (1) statements = blueprint and signature (the weighted Poisson-bracket estimate with its constants and domain losses); (2) proofs sound (Cauchy estimates W4-6 + algebra W4-5); (3) hygiene. Audit ONLY the W4-8 module(s) (git diff inp-w45...HEAD restricted to the new Weighted/Bracket files).
