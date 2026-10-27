# Package I-P1C: Taylor and increments (Part 1); gates the Part 2/3 design waves 3 and 7

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-p1c`, branch `k/p1c`.
- **Nodes:**
  - `bp:p1:taylor` (L436), the second-order Taylor bound. Keep the factor ½ exactly: Part 3's constants depend on
    it.
  - `bp:p1:increments` (L551), increments on strips.

  Prove each with its steps.
- **Interface.** The Part 2/3 design (`docs/campaign/design/PART23-LEAN-DESIGN.md`) names the Lean form it will
  call; search it for `taylor` and `increments`. Match that signature exactly if it is stated there. Otherwise
  state the blueprint node and report the name you chose.
- **Lemmas you may use:**
  - `KAM.increments_open`, `KAM.periodic_bounded` and the Cauchy lemmas (`KAM.cauchy_strip` is on branch `k/zmap`;
    Zohar's `KAM/Strip/Cauchy.lean` is on main);
  - `KAM/Strip/Regularity.lean`;
  - Mathlib's `Convex.norm_image_sub_le_of_norm_fderiv_le` and Taylor lemmas.
- **Files:** a new module `KAM/Strip/Taylor.lean`, or extend `KAM/Strip/Limits.lean` if it is natural; keep it
  focused.
