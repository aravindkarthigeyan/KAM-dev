# Decisions

Owner rulings are marked *(Scott)*. Orchestrator decisions are revisable unless the owner has ruled on them.

- **D1 (2026-10-27) Headline.** The positive-measure KAM theorem for nearly-integrable real-analytic Hamiltonians
  H = h(I) + f(θ, I) on Tⁿ × B with general Kolmogorov-nondegenerate h. *(Scott: "Let's go for the positive-measure
  theorem for general Hamiltonians!")*
- **D2 (2026-10-27) Route and framework.** *(Scott: "go with your recommendations")*
  - A-posteriori KAM at fixed frequency in the parameterization-method form (no action-angle changes of
    variables, no generating functions, no inverses of diffeomorphisms): primary source HL19 Thm 3.1 with d = n,
    cross-checked against GJLV05.
  - One invariant torus per Diophantine frequency from the unperturbed torus; measure of the union through
    Lipschitz dependence on the frequency (source being pinned).
  - Internal norms: weighted ℓ¹ Fourier(–Taylor) coefficient norms; real-analytic hypotheses converted once.
  - Flows, not maps. Coordinates: angles in ℝⁿ with ℤⁿ-periodicity, actions in an open subset of ℝⁿ; no manifolds.
  - The mechanical-systems theorem (Chierchia's KAM Lectures, Thm 6) is not a milestone; it stays a reference.
- **D3 (2026-10-27) Independence.** Independent development; `arnold1963-kam` and PlasmaLean are references, not
  dependencies. *(Scott, by accepting the recommendation)*
- **D4 (2026-10-27) Toolchain.** `leanprover/lean4:v4.35.0` with Mathlib `v4.35.0`. Palomar's
  `PalomarSubmission/toolchains.json` requires at least `v4.35.0-rc2`.
- **D5 (2026-10-27) Workflow.** Frozen-anchor workflow (skills `lean-project-architecture`, `lean-orchestrator`):
  statements frozen before proofs, one declaration per frozen file, providers below anchors, sealing by
  `by exact`, independent audits; Lean module system everywhere.
- **D6 (2026-10-27) HQ and errata.** The README is the campaign HQ, regenerated at least every 20 minutes and
  after every commit; an errata and deviations ledger is kept for every source we formalize. *(Scott)*
- **D8 (2026-10-27) Route verdict for the measure layer** (orchestrator; revisable). Rate ε^{1/4}, with
  γ ~ ε^{1/4}. Local uniqueness for flows is proved by us, adapting GJLV05 Thm 2 (§6, §8); no source states it.
  Lipschitz dependence on the frequency comes from re-applying the a-posteriori theorem (CCdlL13, Cor. 29–30); the
  defect is O(ε/γ⁴). The measure step uses a McShane extension and a lipeomorphism (Pos01, Prop. 1–2, App. B;
  BC17, §6.5–6.6). Details in `docs/PLAN.md`, "Route verdict".
- **D7 (2026-10-27) Hosting.** Private GitHub repository `scottnarmstrong/KAM-dev`. *(Scott: "commit and push")*
