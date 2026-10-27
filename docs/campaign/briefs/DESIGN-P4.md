# Design brief: Lean architecture for blueprint Part 4 (HEAD, HEAD-Q)

Goal: a design document that lets Sonnet provers formalize the rest of Part 4 package by package, with no statement
drift, exactly like `docs/campaign/design/PART23-LEAN-DESIGN.md` does for Parts 2/3. Read that design first and
follow its structure and conventions: carriers, standing structures, exact signatures in an appendix, packages,
assembly. Write no proofs.

- **Worktree:** `/root/code/KAM-w-design4`, branch `k/design4`. Elaborate scratch Lean only in untracked files.
- **Deliverables:** `docs/campaign/design/PART4-LEAN-DESIGN.md`, and the untracked
  `.drafts/design/Part4Signatures.lean`, which must elaborate with only `sorry` warnings.
- **Scope:** every Part 4 result node not yet PROVED in `docs/graph/K/DEPGRAPH.md` (`LEAN_STATUS`), and the
  assembly of the providers of `KAM.kam_positive_measure` (HEAD) and `KAM.kam_positive_measure_qualitative`
  (HEAD-Q) to their exact frozen types. G3 is already SEALED. Already proved:
  - `KAM/Head/*` (I-P4A);
  - package I-P4B, running now: derivative-bounds, torsion-regular, shift, mixed-difference;
  - `KAM/Measure/*`.
- **G1 and G2 are frozen DRAFT_SORRY anchors.** Part 4 lemmas that apply them can be proved only after they are
  sealed: the quarantine forbids importing a DRAFT_SORRY anchor. Design the packages so that everything not needing
  G1/G2 runs first, and mark the G1/G2-dependent ones explicitly.
- Use the Part 2 carriers and objects (`KAM/Torus/*`, `KAM/Apost/*`) wherever Part 4 talks about frames, torsions,
  STAB or APPLY data. Do not build a parallel representation.
- **Owner's hard rules,** verbatim:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure
     is a design signal to refactor or split the proof, not something to mask with a larger budget.
  2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
     preserving public import paths as cheap facades.
- Commit only the design doc on your branch.
- **Final message, under 40 lines:** the key decisions, the packages (which need G1/G2), and the risks.
