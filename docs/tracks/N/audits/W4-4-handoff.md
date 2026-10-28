# W4-4 prover handoff (branch inp-w44, 3f4e680; contains inp-w43 (W4-3, delivered); offloaded package run by the main orchestrator; prover on claude-12)


Files: new `KAM/Weighted/SupWeighted.lean` (~85 lines). KAM.lean not touched (lint reports it out of date: expected, sub-orchestrator regenerates).

Declarations (statements verbatim from NPart145Signatures.lean B.4):
- `KAM.Weighted.sup_le_wbound` (a); `KAM.Weighted.wbound_of_sup_bound` (b).
- `KAM.Weighted.coth` is NOT redefined here: it already lives in `KAM/Weighted/Norm.lean` (design module table: "uses coth from Norm"); same definition as the signature file. Importing SupWeighted gives it via Coefficients -> Norm.

Approach:
- (a) `coefficients_repr` HasSum + `HasSum.norm_le_of_bounded` against the summable weighted series, `KAM.norm_character_le`, wsum <= M. Signature has no `0 < s`: for s <= 0 the strip is empty unless n = 0 (then width is irrelevant: modeWeight = 1, Dom 0 independent of s), handled by private `n_zero_width` reducing to s = 1.
- (b) fixed I: `KAM.summableWeighted_torusCoeffW` with rho = s+sigma, delta = sigma (W-valued, so no scalar-only restriction); `s+sigma-sigma = s`; `coth(pi sigma)^n` matches K's cosh/sinh form definitionally. `hs : 0 < s` is unused (kept per signature).

Checks: gate build `KAM.Weighted.SupWeighted` succeeded, no warnings/sorry. `scripts/lint_sources.sh`: check_lean_modules PASS, frozen guard OK, ABI hashes OK; only complaint is KAM.lean out of date (generated).
`#print axioms` of both theorems: propext, Classical.choice, Quot.sound.

Uncertainties: none. Errata/deviations: none (only the coth placement note above). No heartbeat/design signals.

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row W4-4 and proof plan; binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p4 sup-weighted): (1) sup_le_wbound and wbound_of_sup_bound = blueprint and signature (sup bound from the weighted bound and conversely with the coth(πσ)^n loss), including the degenerate s ≤ 0 case; (2) coth reused from Weighted/Norm is the signature's definition; (3) hygiene. Audit git diff inp-w43...HEAD.
