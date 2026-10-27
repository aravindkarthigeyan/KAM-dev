# Design audit brief: Lean signatures for blueprint Parts 2 and 3

You are an independent, refute-first auditor of the Lean design for G1 (Part 2) and G2 (Part 3) of the KAM
formalization. You did not write it.
- **Design:** `docs/campaign/design/PART23-LEAN-DESIGN.md`.
- **Signatures:** its Appendix A, which is also the file `.drafts/design/Part23Signatures.lean` in your working
  directory `/root/code/KAM-w-design`.

Provers will prove exactly these signatures. A wrong signature becomes a wrong proof target, so try hard to refute.
Your scope (Part 2 or Part 3) is given in your prompt.

## For every signature in your scope
1. **Fidelity.** Find its graph node (`docs/graph/K/DEPGRAPH.md`; the blueprint text is at the node's locators in
   `blueprint/parts/`). Compare directly:
   - every premise;
   - binder and quantifier order;
   - each constant and its dependence list;
   - norms and carriers;
   - the conclusion's strength.

   FAIL any extra premise, any dropped premise, a weakened conclusion, a constant with wider dependence than
   stated, or a carrier or norm that changes the meaning. Departures listed in the design's §3.2 must each be
   justified there. Check every justification.
2. **Standing structures** (`Apost.Params/Standing/Admissible`, `Uniq.Params/S1–S4`, and the constants):
   - every field is a verbatim source premise or a definition;
   - no field is conclusion-shaped or assumes a proof step (AGENTS.md rule 6);
   - each lemma assumes only what its blueprint statement names.
3. **Definitions** (the Newton map, the KAM sequence, the limit, the solution operator, carrier conversions):
   - each is the intended mathematical object on its whole carrier;
   - no theorem relies on a junk value or fallback.
4. **Assembly** (design §6):
   - the providers, built from these signatures, produce exactly the frozen types of `KAM.aposteriori_kam` (G1)
     and `KAM.local_uniqueness_flow` (G2). Read `KAM/Frozen/Theorems/*.lean`; never edit them;
   - every frozen binder is consumed, and no extra hypothesis appears.
5. **Interfaces with Part 1.** The assumed Part 1 lemmas (on `main`, on branch `k/zmap`, or the proposed I-P1C and
   I-STRIP-3 interfaces) must exist with the stated types, or be clearly marked as pending.
6. **Elaboration.** `nice -n 5 lake env lean .drafts/design/Part23Signatures.lean` must give only `sorry` warnings.
   Run it once.

## Rules
- Edit nothing except your report. No state-changing git. Probes go in `.lake/abi-scratch/`; delete them afterwards.
- The owner's Lean hard rules, for awareness:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
  2. No Lean file may exceed 1500 lines of code.

## Output
Write `docs/campaign/audits/DESIGN-P23-<scope>-audit-1.md` in `/root/code/KAM-w-design` with:
- an overall verdict;
- a table with one row per signature in scope: Lean name, node, PASS/FAIL, and the reason;
- for every FAIL, a corrected signature in a fenced block;
- structure, definition and assembly verdicts;
- findings with severity.

Then print the final line given in your prompt.
