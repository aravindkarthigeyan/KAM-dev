# Package P4-Q: the HEAD-Q helper (Part 4 design wave 1)

Read `docs/campaign/briefs/P23-COMMON.md`. Its rules apply with `docs/campaign/design/PART4-LEAN-DESIGN.md` as the
binding design.

- **Worktree:** `/root/code/KAM-w-p4-q`, branch `k/p4-q`. It is branched from `k/p4-0` (Part 4 definitions), which
  is in audit and lands first.
- **Module:** `KAM/Head/HeadQ.lean`.
- **Node:** the proof of `bp:p0:headq` as `headq_of_head`, with the Part 4 Appendix A signature, stated against
  `HeadConclusion` / `HeadQConclusion` (`KAM/Head/Standing.lean`).
- **Do not** import the frozen HEAD or HEAD-Q theorems or any provider. This is a conditional helper from the HEAD
  conclusion to the HEAD-Q conclusion, exactly as Appendix A states it.
