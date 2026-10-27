# Slice topology review brief (track K dependency graph)

You are an independent, refute-first reviewer of part of the source dependency graph of the KAM formalization (repo
`/root/code/KAM`). You did not extract these records. Your slices are named in your prompt.

## Read
- `docs/graph/K/SPEC.md`: roots, anchors, conventions, node threshold and edge policy. It is binding.
- The raw source of your slices: `blueprint/parts/<part>.tex` at the line ranges in SPEC.md's slice table. Read the
  cited results in other parts whenever an edge points to them.
- Your slices' records: `docs/graph/K/packets/<slice>.nodes.md` and `<slice>.coverage.md`.
- The frozen-anchor manifest `manifest/frozen-anchors.json` (identity fields only) and, for anchors, the frozen
  declaration files `KAM/Frozen/Defs/*.lean` and `KAM/Frozen/Theorems/*.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, provider files, proof bodies or proof
  status.

## Try to refute
1. **Completeness.** Look for statements, displays, definitions or substantive proof steps in the slice that have no
   node and are not excluded with a valid reason. Look for bridges the text uses without proof that are neither an
   external (E1)–(E10) nor a `SOURCE_GAP` node.
2. **Edges.**
   - For every node, re-read its statement and proof. Every DEPS entry must be a direct use, located at the
     consumer by its EDGE line.
   - Look for missing direct uses (including uses without `\ref`), forward pointers kept as edges, reversed
     edges, and merely transitive or unnecessary edges.
   - Look for alternatives modelled as a conjunction. An "alternatively …" proof needs route nodes.
   - Look for circularity between a definition and its consequences.
3. **Source-statement fields.** Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION` and
   `CONSTANT_SCOPE` independently from the raw statement. Fail any record that:
   - adds a proof ingredient as a hypothesis;
   - drops a stated premise;
   - reorders quantifiers;
   - weakens or strengthens the conclusion;
   - lets a constant depend on more or less than stated.
4. **Conditional premises.** Wherever a node applies a conditional result (a lemma with hypotheses, or the
   packages (S1)–(S4), the standing data of Part 2, (SA), H1–H5), check that the applying node or an edge shows where
   each premise is supplied.
5. **Locators.** STATEMENT_SOURCE and PROOF_SOURCE ranges must match the text. EDGE locators must point at the
   use in the consumer.
6. **Coverage.** Every inventory item needs a correct disposition, and every exclusion a valid reason.

Topology status is not proof status. A faithfully exposed `SOURCE_GAP` node passes. Do not supply missing mathematics
yourself.

## Output
Write `docs/graph/K/reviews/<slice>-review.md` for each of your slices with:
- a verdict, PASS or FAIL, for the slice;
- a table with one row per node: node ID, PASS/FAIL, the source spans you re-read, and the reason for any FAIL;
- a table with one row per coverage item that FAILS. Say "all other coverage items PASS" explicitly;
- for every FAIL, a replacement fragment: the corrected node block, EDGE line or coverage item, in the database
  format.

Edit nothing else. Run no state-changing git. Run no Lean.

The repository's Lean hard rules, for awareness:
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
2. No Lean file may exceed 1500 lines of code.

Keep working in the same turn until all your slices are reviewed. Then print `READY <your marker>`.
