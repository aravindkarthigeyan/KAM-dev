# Prover brief: common part (track K proof campaign)

You are a Lean 4 prover in the KAM formalization (owner: Scott Armstrong; co-author Zohar Komargodski). Your package
brief, `docs/campaign/briefs/<PKG>.md`, names your blueprint nodes, files and worktree. This file holds the rules
every package shares.

## Hard rules (verbatim from the owner; they override everything else)
1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
   proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

## Repository rules
`AGENTS.md` is binding. Read it first. In short:
- Every `.lean` file is a module, with this shape:
  - the copyright header naming both authors (copy it from an existing file);
  - `module`;
  - `public import` for what the interface needs, plain `import` for the rest;
  - a module docstring;
  - `@[expose] public section` (or `public section`).
- No `sorry`, `admit`, `axiom`, `unsafe` or `opaque`. No recursion-depth or synthesis overrides.
- No `EuclideanSpace`. Use `Fin n → ℝ`, `Fin n → ℂ`, and `Fin n → ℤ` for Fourier indices.
- **Never edit:**
  - anything under `KAM/Frozen/` or `manifest/`;
  - `README.md`;
  - `KAM.lean` by hand. Run `python3 -I scripts/gen_root_imports.py` instead.
- Never import a frozen theorem (`KAM.Frozen.Theorems.*`) or a provider (`KAM.Provider.*`), except in your package's
  own provider file if your package has one. Frozen definitions (`KAM.Frozen.Defs.*`) may and should be imported
  when your statements use them.
- **No conclusion-shaped hypotheses.** Each Lean theorem states exactly the blueprint statement: its premises, its
  quantifiers and its constants. If a blueprint statement is false, or needs an extra hypothesis, STOP on that node
  and report it with evidence; never add the hypothesis silently. Conditional helper lemmas are fine under distinct
  names.

## Where you work
- Only in your worktree (given in your package brief), on its branch.
  - Commit there often, with clear messages ending with the line
    `Co-Authored-By: Claude Sonnet 5.5 <noreply@anthropic.com>`.
  - Do not push, merge, rebase or touch any other checkout. The orchestrator lands your branch after an independent
    audit.
- **Builds:**
  - one targeted `nice -n 5 lake build KAM.<Your.Module>` at a time;
  - never `lake clean`, `lake update` or `lake exe cache get`;
  - never touch `.lake/packages`, which is shared.

  Your worktree's build was seeded from `main`, so only your files compile.
- **Before your handoff,** run:
  - `python3 -I scripts/gen_root_imports.py`;
  - `sh scripts/lint_sources.sh`, which must pass;
  - `nice -n 5 lake build KAM`, which must pass.

## What to prove
- **Statements.** Your nodes are in `docs/graph/K/DEPGRAPH.md`; search `NODE: <id>`. Each node's statement and proof
  are at its `STATEMENT_SOURCE` and `PROOF_SOURCE` in `blueprint/parts/*.tex`. The node's DEPS list exactly what its
  proof may use.
- **What you may use:**
  - Mathlib;
  - the external inputs (E1)–(E11) of Part 1, which are Mathlib facts and are named at each item;
  - graph predecessors that already have Lean proofs (see your package brief);
  - your own helper lemmas.
- **Search before proving.** Search Mathlib and the existing `KAM/` code before writing a lemma. Load the skills
  `lean-search-discovery`, `lean-proof-patterns` and `lean-learnings` if you can.
- **One declaration per node.** Prove each graph node (result or substantive step) as one Lean declaration, or point
  to the declaration that covers it. Each result's docstring begins with its blueprint label, e.g.
  `/-- Blueprint \`bp:p1:mcshane\`. … -/`.
- **Conventions** are fixed by the blueprint's Part 0 and by `docs/graph/K/SPEC.md` ("Conventions to watch"):
  - the max norm on `Fin m → ℂ`, with the induced operator norm;
  - sup bounds stated pointwise (`∀ θ ∈ complexStrip n ρ, ‖u θ‖ ≤ A`), not through `sSup`;
  - holomorphy as `DifferentiableOn ℂ` on open sets;
  - period 1, and averages over `[0,1]^n`.

  Match the existing infrastructure in `KAM/Strip`, `KAM/Matrix`, `KAM/Fourier` and `KAM/Diophantine`.

## Stop conditions
- **Stop on a node when:**
  - its blueprint statement looks false or under-hypothesised;
  - a needed predecessor has no Lean proof yet;
  - a proof will not elaborate at default heartbeats after one serious refactor.

  Report it and move on to the next node.
- Stop the package when every node is done or blocked.

## Handoff (your final message; keep it under 40 lines)
- the branch and its last commit;
- a table of graph node → Lean declaration (fully qualified) → file;
- blocked nodes, each with the reason;
- the exact checks run and their results: lint, `lake build KAM`, and `#print axioms` of each result. The only
  axioms allowed are `propext`, `Classical.choice` and `Quot.sound`;
- suspected blueprint errors, citing file and line;
- uncertainties.
