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
- **D7 (2026-10-27) Hosting.** GitHub repository `scottnarmstrong/KAM-dev`, created private (*Scott: "commit and push"*)
  and made public the same day (*Scott: "can you make the dev repo public?"*). Source PDFs stay out of git.
- **D9 (2026-10-27) Statement rulings Q1–Q5.** *(Scott: "go with your recommendations on Q1–Q5")*
  - Q1: the headline carries the rate meas(complement) ≤ C·ε^{1/4}; the qualitative (1 − κ) form, with no
    boundary condition, is a corollary.
  - Q2: angle period 1 (Tⁿ = ℝⁿ/ℤⁿ).
  - Q3: each torus is invariant and carries the linear flow with a Diophantine frequency; it is Lagrangian, a
    real-analytic embedding, and close to the unperturbed torus.
  - Q4: gates: the fixed-frequency a-posteriori theorem (HL19 Thm 3.1, d = n), local uniqueness for flows (ours),
    and the measure of the Diophantine set (Pos01 §1d).
  - Q5: n ≥ 2; B bounded, with a regular boundary for the rate form; ∇h bi-Lipschitz on B̄; h + f real-analytic
    on a uniform complex neighbourhood of Tⁿ × B̄.
- **D10 (2026-10-27) Public ledger.** The errata and deviations ledger stays public, CANDIDATE entries included;
  each is labelled unverified until checked against the pinned PDF. *(Scott: "keep the ledger public, it's fine")*
- **D11 (2026-10-27) Statements approved and frozen.** *(Scott: "approve all", on the review page of statement draft
  v0.2, claude.ai/artifact/WP8cHuhjvWTSSMkubhU8f2)* The approval covers the three decisions on that page: the
  inner boundary-layer reading of "regular boundary"; G1's uniform constants with margin μ and bound γ̄
  (ledger D-G1-1); and G1's explicit conclusion margins. Frozen: 5 theorem anchors (`KAM/Frozen/Theorems/`,
  `DRAFT_SORRY`) and 20 definitions (`KAM/Frozen/Defs/`, sealed whole files), byte-identical to the approved text,
  hashed in `manifest/frozen-anchors.json` (file, prefix/suffix and elaborated ABI hashes). Providers:
  `KAM/Provider/<Name>.lean`, quarantined until sealing. Draft and audit evidence, including the Lean refutation of
  draft G1 v0.1, archived at `/mnt/HC_Volume_106379410/kam-evidence/2026-10-27-statements-v0.2/`.
- **D12 (2026-10-27) Working norms** (orchestrator; refines D2). The frozen G1 hypotheses are sup-norm bounds of a
  Hamiltonian on an arbitrary open domain, so G1, G2 and the measure layer are proved in sup norms on complex
  domains, as in HL19 and GJLV05. Products and compositions are then immediate, and Cauchy estimates are
  one-variable. Weighted coefficient norms enter only through the cohomological equation and Fourier-coefficient
  arguments, joined to sup norms by the strip bridge (blueprint Part 1).
  - The cruder small-divisor exponent τ + n replaces Rüssmann's τ. This is harmless: G1's constants may depend
    on ρ, and only the γ-dependence matters downstream.
- **D13 (2026-10-27) Phase 1 and packages.** *(Scott: "start Phase 1, and coordinate Zohar's work as packages.
  Just fix his code if you don't like it")*
  - Phase 1 runs as in `docs/PHASE1.md`: blueprint parts p0–p4, then the dependency graph.
  - Collaborators pick work from `docs/campaign/PACKAGES.md`.
  - The orchestrator may change collaborators' code directly; it reviews and fixes such code as it lands.
- **D14 (2026-10-27) Parallel tracks.** *(Scott: "Let's incorporate all this planetary stuff into the plan. Let's
  formalize all of it! It's ok if it is on parallel tracks.")* Four tracks (`docs/TRACKS.md`):
  - K: positive-measure KAM;
  - I: isoenergetic KAM, two-degree-of-freedom confinement, the restricted three-body problem;
  - N: Nekhoroshev (quasi-convex, then steep);
  - P: planetary (properly degenerate KAM, planar two-planet problem, the fixed-Sun n-planet variant, the spatial
    theorem later).

  Each track runs the full pipeline, with its own owner approval of exact Lean statements before freezing.
- **D15 (2026-10-27) Authors.** The repository's authors are Scott Armstrong and Zohar Komargodski (GitHub
  zkomargo). *(Scott)*
- **D16 (2026-10-27) Author headers of the frozen files.** *(Scott: "yes change the frozen file authors too")*
  - The copyright and `Authors:` lines of the 25 frozen files (and of the provider stubs) now name Scott Armstrong
    and Zohar Komargodski.
  - This is a hash move that does not change meaning. Every byte after the header comment is unchanged (checked
    file by file), and all 25 elaborated ABI hashes are identical before and after.
  - Only `full_file_sha256`, `prefix_sha256` and `definition_closure` hashes in `manifest/frozen-anchors.json`
    changed. Log: `docs/MANIFEST-CHANGES.md`.

