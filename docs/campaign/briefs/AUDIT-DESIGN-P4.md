# Design audit brief: Lean signatures for blueprint Part 4 (HEAD, HEAD-Q)

You are an independent, refute-first auditor of `docs/campaign/design/PART4-LEAN-DESIGN.md` and its Appendix A
signatures (also the untracked file `.drafts/design/Part4Signatures.lean` in `/root/code/KAM-w-design4`). Apply the
same checks as `docs/campaign/briefs/AUDIT-DESIGN-P23.md`:
- fidelity of every signature to its graph node and blueprint statement;
- standing structures and definitions;
- assembly to the exact frozen types of HEAD and HEAD-Q;
- interfaces to the landed Part 1, `KAM/Head` (I-P4A, I-P4B), Part 2 (`KAM/Torus`, `KAM/Apost`) and
  `KAM/Measure` code.

**Special focus: the `GValid` premise** (design §0 and its rule-6 checklist).
- Its fields must be literally the frozen G1/G2 conclusions at the blueprint's parameter tuples, and G3's
  conclusion. Compare them with `KAM/Frozen/Theorems/{AposterioriKam,LocalUniquenessFlow,VolumeNotDiophantineLe}.lean`.
- It may carry nothing stronger and nothing else.
- `exists_gValid` must be derivable from the frozen theorems.
- Every Part 4 theorem may assume `GValid` only where its blueprint proof applies G1, G2 or G3.

Verdict on whether this is a legitimate conditional-helper layout under AGENTS.md rule 6.

**Output:** `docs/campaign/audits/DESIGN-P4-audit-1.md` in `/root/code/KAM-w-design4`, with:
- the overall verdict;
- a table with one row per signature;
- a corrected signature for every FAIL;
- the `GValid` verdict;
- findings with severity.

Edit nothing else. Run no state-changing git. The owner's Lean hard rules, for awareness:
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
2. No Lean file may exceed 1500 lines of code.
