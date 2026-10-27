# Package I-ZMAP: map Zohar's existing infrastructure onto the graph

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-zmap`, branch `k/zmap`.
- **Goal.** Zohar's packages (`docs/campaign/PACKAGES.md`) proved several Part 1 results before the graph existed.
  For each node below, find the existing Lean declarations that prove it, compare the statements exactly, and
  produce `docs/campaign/audits/I-ZMAP-map.md` with one row per node:
  - node;
  - the existing declaration(s), fully qualified, with file and line;
  - a verdict: COVERED (exact or stronger), PARTIAL (say exactly what is missing) or NONE.
- **Nodes:**
  - `bp:p1:neumann` (L175);
  - `bp:p1:holomorphic-regularity` (L225);
  - `bp:p1:cauchy-open` (L472);
  - `bp:p1:cauchy-strip` (L566);
  - `bp:p1:cauchy-corollaries` (L615);
  - `bp:p1:averages-real` (L644);
  - `bp:p1:averages` (L663);
  - `bp:p1:averages-matrix` (L684);
  - `bp:p1:decay` (L784; Zohar's newest file `KAM/Strip/Fourier.lean`).

  Also map each node's steps (`step:p1:…`) where a declaration covers them.
- **Where to look:** `KAM/Strip/{Cauchy,Regularity,HigherCauchy,Averages,Fourier}.lean`, `KAM/Matrix/Neumann.lean`,
  and also `KAM/Fourier/` and `KAM/Diophantine/`.
- **Filling gaps.** For PARTIAL or NONE, prove the missing part as an adapter, in new files
  `KAM/Strip/Bridges.lean` or `KAM/Matrix/Bridges.lean` (split as needed). Each adapter states exactly the blueprint
  node and derives it from Zohar's lemmas.
  - **Never edit Zohar's files.** If one is wrong, report it.
  - Each adapter's docstring begins with the blueprint label.
- **Do not take on I-STRIP-2's `summation` or I-STRIP-3 (the cohomological equation).** Zohar is on them.
- **Handoff:** the common handoff, plus the map file.
