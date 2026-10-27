# Design brief: Lean architecture for blueprint Parts 2 and 3 (G1 and G2)

Goal: a design document that lets Sonnet provers formalize Parts 2 and 3 package by package, with no statement
drift. Write no proofs.

- **Worktree:** `/root/code/KAM-w-design`, branch `k/design`. Elaborate scratch Lean only in untracked files under
  `.lake/abi-scratch/`.
- **Deliverable:** `docs/campaign/design/PART23-LEAN-DESIGN.md`, plus the untracked elaboration file
  `.drafts/design/Part23Signatures.lean`, which must elaborate with only `sorry` warnings.

## Read
- `AGENTS.md`, `docs/graph/K/SPEC.md` (conventions), and `blueprint/parts/p0-conventions.tex`,
  `p2-aposteriori.tex`, `p3-uniqueness.tex`.
- The frozen G1 and G2: `KAM/Frozen/Theorems/AposterioriKam.lean` and `LocalUniquenessFlow.lean`.
- The frozen definitions they use, in `KAM/Frozen/Defs/`: `IsPrimaryOnStrip`, `IsRealOnReals`, `InvarianceError`,
  `DotC`, `GramMatrix`, `NormalFrame`, `Torsion`, `TorsionAverage`, `HamiltonianVectorFieldC`, `OmegaZero`,
  `ComplexStrip`, `IsDiophantine`.
- The graph nodes of Parts 2 and 3 in `docs/graph/K/DEPGRAPH.md` (`bp:p2:*`, `bp:p3:*` and their steps).
- The existing Lean infrastructure:
  - `KAM/Strip/*` (Cauchy, Regularity, Averages, Fourier, Analytic, RealRestriction);
  - `KAM/Matrix/*` (Neumann, Norms, Inverse);
  - `KAM/Fourier/*`, `KAM/Diophantine/*`;
  - `KAM/Measure/*`.

  Use their conventions: max norms; the row-sum operator norm via `Matrix.Norms.Operator`; pointwise sup bounds;
  `DifferentiableOn ℂ`.

## Decide and document
1. **Carriers.** How a torus `K`, its frame `L`, `N`, `P`, the torsion and the matrices are represented, so that
   every Part 2/3 statement composes with the frozen definitions without conversion lemmas at every use. Where the
   frozen definitions fix the carrier (`Fin (2*n)` vs `Fin n ⊕ Fin n`, `Matrix` vs functions), follow them, and
   list the conversion lemmas needed once.
2. **Standing data.** How Part 2's standing data (`bp:p2:standing`), the constants (`bp:p2:constants`), the
   admissibility conditions A1–A6 (`bp:p2:admissible`) and Part 3's (S1)–(S4) are represented. A hypothesis
   `structure` is fine for internal lemmas. Each must be supplied explicitly at its use in the G1/G2 assembly; no
   field may be conclusion-shaped. Justify the choice against `AGENTS.md` rule 6.
3. **Signatures.** For every Part 2 and Part 3 result node (definitions, lemmas, propositions, corollaries;
   not the steps), give the exact Lean signature, its module, and its blueprint label, elaborated with `sorry` in
   the drafts file.
   - Each signature must state the blueprint statement exactly: premises, quantifiers, constants and their
     dependences.
   - List every place where the Lean form departs from the literal blueprint text (carrier, totality), with the
     reason.
4. **Modules.** A module layout (≤ 1500 lines each, realistically ≤ 800), and the import DAG.
5. **Packages.** Group the nodes into prover packages of roughly 300–800 Lean lines each, in dependency order.
   Mark which can run in parallel, and what each needs from Part 1. Part 1 status is in the graph's `LEAN_STATUS`;
   `summation` and `cohomological` are Zohar's open packages.
6. **Assembly.** How the providers `KAM.Provider.aposteriori_kam` and `KAM.Provider.local_uniqueness_flow` will be
   assembled from these results to match the frozen types exactly.
7. **Risks.** Heavy elaboration, missing Mathlib API, and anything that may force a blueprint change. Report
   suspected blueprint errors with file and line.

## Rules
- The owner's Lean hard rules, verbatim:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
     failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
     proof will not elaborate at default heartbeats, report it as a design signal.
  2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
     preserving public import paths as cheap facades.
- No edits outside the deliverables. No frozen files. No state-changing git except committing the design doc on
  your branch.
- **Final message, under 40 lines:** the key decisions, the package list, and the risks.
