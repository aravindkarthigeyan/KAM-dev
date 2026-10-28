# Design audit brief: Lean design for blueprint-I Parts 1–3 (I-G1)

You are an independent, refute-first auditor of `docs/tracks/I/design/PART123-LEAN-DESIGN.md` and its signatures, which
are in the untracked file `.drafts/design/IPart123Signatures.lean` (1494 lines) in `/root/code/KAM-inp-design-i123`.

Model your checks on track K's design audits:
- `/root/code/KAM/docs/campaign/briefs/AUDIT-DESIGN-P23.md`;
- `/root/code/KAM/docs/campaign/audits/DESIGN-P4-audit-1.md`.

## What to check
- **Signature fidelity.** Each signature against its graph node in `docs/graph/I/DEPGRAPH.md` and the blueprint-I
  statement in `blueprint-I/parts/p1-iso-linear.tex`, `p2-iso-iteration.tex` and `p3-iso-local-charts.tex`. Check
  premises, binder and quantifier order, constants and their dependence, norms and carriers, and conclusion strength.
- **Standing structures and definitions.** `Linear.Setting`, `IsoStanding` and `IsoAdmissible`, and the total
  definitions: bordered solve, correction, `isoNewtonMap`, the sequence and the limits. Are they the intended objects
  on their whole carriers? Does any field carry a proof step?
- **I-G1 provider.** The assembly must reach the exact frozen type of `KAM.Iso.isoenergetic_kam`
  (`KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`). Elaborate a probe.
- **Reuse of track K.** Check the reuse map against track K's landed code (`KAM/Apost/*`, `KAM/Torus/*`, `KAM/Head/*`
  on `main`/`inp`).
  - Every claimed reuse must really apply.
  - The isoenergetic differences must be handled: the moving frequency, the bordered `Fin n ⊕ Unit` matrices, and the
    missing Kolmogorov hypothesis.

## Special focus: the Part 3 premises
Part 3 takes I-G1 and G3 as premises that are verbatim copies of the frozen types, following track K's `GValid`
precedent.
- Are they literally the frozen conclusions?
- Do they carry nothing stronger?
- Is the in-tree discharge (I-HEAD provider, `part3_tori`) derivable from the sealed anchors?

Give a verdict on rule 6 (AGENTS.md).

## Output and rules
- Output `docs/tracks/I/design/PART123-design-audit-1.md` in that worktree, containing:
  - the overall verdict;
  - a table with one row per signature;
  - a corrected signature for every FAIL;
  - the premise verdict;
  - findings with severity.
- Edit nothing else. Run no state-changing git.
- Memory is tight: one lean process at a time, with `LEAN_NUM_THREADS=1`. If the worktree lacks a build of the K
  modules, elaborate from `/root/code/KAM` (main) as the designer did, with probes in that checkout's
  `.lake/abi-scratch/`, and delete them afterwards.
- Hard rules, for awareness:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
  2. No Lean file may exceed 1500 lines of code.
