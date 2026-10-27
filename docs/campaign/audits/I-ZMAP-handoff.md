# I-ZMAP prover handoff (branch k/zmap, a2495c0)

The node-by-node map with file:line and verdicts is docs/campaign/audits/I-ZMAP-map.md (committed on this branch). New adapter files: KAM/Strip/Bridges.lean, KAM/Matrix/Bridges.lean. Zohar's files are untouched.

AUDIT QUESTIONS:
1. For every row marked COVERED, verify the existing declaration states the blueprint node exactly (or stronger).
2. For every adapter, verify it states the blueprint node exactly and derives it only from existing lemmas.
3. BYPASSED steps (neu-series, hreg-integral, ar-one, dec-shift: parent proved by another route) and the two "covered in content, not wording" steps (neu-inverse, hreg-differentiate): is the parent nevertheless faithful?
4. `decay` is proved for scalar functions only; the blueprint proof says "let u take values in W". Check every consumer of bp:p1:decay in the graph (DEPS) and say whether a scalar or entrywise statement suffices.
5. cauchy_corollaries_transpose is for `Fin p → ℂ` targets; Part 2 may use ℂⁿ × ℂⁿ or Fin n ⊕ Fin n. Flag (do not fix) what a Part 2 consumer will need.
