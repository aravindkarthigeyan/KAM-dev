# W4-2 prover handoff (branch inp-w42, bedc751; offloaded package run by the main orchestrator)

File KAM/Weighted/Parametric.lean (180 lines; imports Mathlib ParametricIntegral, KAM.Strip.Cauchy, KAM.Strip.Limits).
| Node | Declaration |
|---|---|
| bpN:p4:ext-param | KAM.Weighted.holomorphic_parametric_integral |
| bpN:p4:general-cauchy | KAM.Weighted.general_cauchy |
| bpN:p4:ext-weier | KAM.Weighted.uniform_limit_holomorphic |
Prover: statements verbatim (whitespace). holomorphic_parametric_integral's [CompleteSpace W] [FiniteDimensional ℂ W] (audit F6) are unused; the prover kept them and silenced the linter with `set_option linter.unusedSectionVars false in` (a linter switch, not a resource override) — the alternative `omit … in` would make the theorem strictly more general.
AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md incl. binding audit-2 notes; audits PART145-design-audit-{1,2}.md; blueprint-N p4 ext-* nodes): (1) statements = blueprint/design (dominated differentiation of parametric integrals, general Cauchy estimate, Weierstrass uniform-limit holomorphy incl. derivative convergence); (2) is the linter set_option acceptable under AGENTS.md rule 4 / repository lint (or should it be `omit`)? recommend; (3) hygiene.
