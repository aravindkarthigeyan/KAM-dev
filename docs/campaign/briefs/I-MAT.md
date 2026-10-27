# Package I-MAT: matrix lemmas of Part 1

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-mat`, branch `k/mat`.
- **Nodes** (Part 1, "Matrices" and nearby), each with its steps:
  - `bp:p1:operator-norms` (L117);
  - `bp:p1:matrix-norms` (L146);
  - `bp:p1:real-inverse` (L203);
  - `bp:p1:holomorphic-inverse` (L402). This one depends on `bp:p1:real-inverse`/Cramer (E10) and on
    holomorphy of polynomial maps.
- **Already proved, so reuse it:** `bp:p1:neumann` is Zohar's `KAM/Matrix/Neumann.lean`. Read it and use the same
  matrix and norm conventions: max norm on vectors and the induced row-sum operator norm. Also read the frozen
  definitions `KAM/Frozen/Defs/OmegaZero.lean`, `GramMatrix.lean` and `NormalFrame.lean`, because these lemmas are
  applied to them.
- **Files:** new modules `KAM/Matrix/Norms.lean` and `KAM/Matrix/Inverse.lean` (split further if needed). Do not
  edit `KAM/Matrix/Neumann.lean`. If it needs a change, report it.
