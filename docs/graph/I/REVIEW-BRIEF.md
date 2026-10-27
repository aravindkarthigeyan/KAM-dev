# Slice topology review brief (track I dependency graph)

You are an independent, refute-first reviewer of part of the source dependency graph of track I of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract these records. Your slices are named
in your prompt.

## Read
- `docs/graph/I/SPEC.md`: roots, anchors, packages and bridges, imports, conventions, node threshold, reachability and
  edge policy. It is binding.
- The raw source of your slices: `blueprint-I/parts/<part>.tex`, at the line ranges in SPEC.md's slice table.
  - Read the cited results in other parts whenever an edge points to them.
  - For an imported node `K:…` or `N:…`, read its statement at its STATEMENT_SOURCE in `blueprint/` or
    `blueprint-N/`.
- Your slices' records: `docs/graph/I/packets/<slice>.nodes.md` and `<slice>.coverage.md`.
- The imported nodes: `docs/graph/I/packets/I-imports.nodes.md`.
- The frozen-anchor manifest `manifest/frozen-anchors.json` (identity fields only) and, for anchors, the frozen
  declaration files `KAM/Frozen/Iso/Defs/*.lean`, `KAM/Frozen/Iso/Theorems/*.lean` and `KAM/Frozen/Defs/*.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, provider files, proof bodies or proof
  status. Do not use the manifest's state fields.

## Try to refute
1. **Completeness.**
   - Look for statements, displays, definitions or substantive proof steps in the slice that have no node and are not
     excluded with a valid reason.
   - Look for bridges the text uses without proof that are neither a track-I external, nor an imported result, nor a
     `SOURCE_GAP` node.
   - Check every `prose-L…` disposition. A paragraph that fixes data or states a fact later consumed needs a node
     (`#data`, `#k-bridge`) or a mapping to its consumers.
2. **Edges.**
   - For every node, re-read its statement and proof. Every DEPS entry must be a direct use, located at the consumer by
     its EDGE line.
   - Look for:
     - missing direct uses, including uses without `\ref`;
     - forward pointers kept as edges;
     - provenance edges from `\source`;
     - "does not apply"/"without (A5)" mentions kept as edges;
     - reversed, merely transitive or unnecessary edges.
   - **Standing packages, first.** For every node, check that it depends on each package whose data it uses (SPEC
     table). The packages are mostly used without a `\ref`. Fail every node that misses one.
   - Look for alternatives modelled as a conjunction. An "alternatively …" proof needs route nodes.
   - Look for circularity between a definition and its consequences, and between a remark and the result it comments
     on.
3. **Source-statement fields.** Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION` and
   `CONSTANT_SCOPE` independently from the raw statement. Fail any record that:
   - adds a proof ingredient as a hypothesis;
   - drops a stated premise;
   - reorders quantifiers;
   - weakens or strengthens the conclusion;
   - lets a constant depend on more or less than stated.

   Watch SPEC's conventions: the ray ω = sω* and the Diophantine condition on ω*; the ν endpoint margin; the energy
   row DH(K)N; the constants order of I-G1; ε = 0 in I-HEAD; 0 < μ₀ ≤ 1/2 in I-R3BP; max norms versus `rad`; the 2π
   conversion.
4. **Conditional premises.** Wherever a node applies a conditional result, check that the applying node or an edge
   shows where each premise is supplied. The conditional results include:
   - a lemma with hypotheses;
   - a package (`bpI:p1:setting`, `bpI:p2:standing`, (B1)–(B7), `bpI:p3:setting`, …);
   - an imported K result that assumes `K:bp:p2:standing`, (A1)–(A6) or `K:bp:p4:data`, through the `#k-bridge` step;
   - I-G1 applied in Part 3 ((I1)–(I13));
   - I-HEAD applied in Part 8;
   - an N ODE result applied in Part 5 or 8.
5. **Locators.** STATEMENT_SOURCE and PROOF_SOURCE ranges must match the text. EDGE locators must point at the use in
   the consumer.
6. **Coverage.** Every inventory item needs a correct disposition, and every exclusion a valid reason: alias,
   administrative, outside every root closure (name the check), pointer.
7. **`I-imports` (when assigned).** For each imported node, compare the four source fields with the statement at its
   locator in the owning blueprint. Check that the ID names a node of the owning graph: run `inp_depgraph_imports.py`
   in report mode. Check that it is KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -.

Topology status is not proof status. A faithfully exposed `SOURCE_GAP` node passes. Do not supply missing mathematics
yourself.

## Output
Write `docs/graph/I/reviews/<slice>-review.md` for each of your slices with:
- a verdict, PASS or FAIL, for the slice;
- a table with one row per node: node ID, PASS/FAIL, the source spans you re-read, and the reason for any FAIL;
- a table with one row per coverage item that FAILS. Say "all other coverage items PASS" explicitly;
- for every FAIL, a replacement fragment: the corrected node block, EDGE line or coverage item, in the database
  format, inside a fenced block (`inp_depgraph_apply_review.py` reads fenced blocks).

Report suspected blueprint defects (location, quoted text, why) in a separate section.

Edit nothing else. Run no state-changing git. Run no Lean.

The repository's Lean hard rules, for awareness:
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
2. No Lean file may exceed 1500 lines of code.

Keep working in the same turn until all your slices are reviewed. Then print `READY <your marker>` on a line of its
own.
