# Slice topology review brief (track N dependency graph)

You are an independent, refute-first reviewer of part of the source dependency graph of track N of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract these records. Your slices are named
in your prompt.

## Read
- `docs/graph/N/SPEC.md`: roots, anchors, packages and section data, imports, conventions, node threshold,
  reachability, edge policy and rulings. It is binding.
- The raw source of your slices: `blueprint-N/parts/<part>.tex`, at the line ranges in SPEC.md's slice table.
  - Read the cited results in other parts whenever an edge points to them.
  - For an imported node `K:…`, `I:…` or `P:…`, read its statement at its STATEMENT_SOURCE in `blueprint/`,
    `blueprint-I/` or `blueprint-P/`.
- Your slices' records: `docs/graph/N/packets/<slice>.nodes.md` and `<slice>.coverage.md`.
- The imported nodes: `docs/graph/N/packets/N-imports.nodes.md`.
- The frozen-anchor manifest `manifest/frozen-anchors.json` (identity fields only) and, for anchors, the frozen
  declaration files `KAM/Frozen/Nekhoroshev/Defs/*.lean`, `KAM/Frozen/Nekhoroshev/Theorems/*.lean`,
  `KAM/Frozen/Defs/*.lean` and `KAM/Frozen/Planetary/Defs/{Phase,Fast,Slow,FastShift,DegenerateHamiltonian}.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, provider files, proof bodies or proof
  status. Do not use the manifest's state fields.

## Try to refute
1. **Completeness.**
   - Look for statements, displays, definitions or substantive proof steps in the slice that have no node and are not
     excluded with a valid reason.
   - Look for bridges the text uses without proof that are neither a track-N external, nor an imported result, nor a
     `SOURCE_GAP` node.
   - Check every `prose-L…` disposition. A paragraph that fixes data or states a fact later consumed needs a node
     (`#data`, `#<slug>`) or a mapping to its consumers (SPEC's section-data table).
2. **Edges.**
   - For every node, re-read its statement and proof. Every DEPS entry must be a direct use, located at the consumer by
     its EDGE line.
   - Look for:
     - missing direct uses, including uses without `\ref` ("B.1(b)", "(N1)", "(S3)", "Cauchy", "mean value");
     - forward pointers kept as edges;
     - provenance edges from `\source`;
     - "does not apply"/"is not cited" mentions kept as edges;
     - reversed, merely transitive or unnecessary edges.
   - **Standing packages, first.** For every node, check that it depends on each package whose data it uses (SPEC
     table): `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p5:setting`, `bpN:p6:setting`, `bpN:p7:setting`,
     `bpN:p7:resonance-data`, the Part 8 lattice definitions, `bpN:p9:setting`, `bpN:p1:constants`, `bpN:p10:choice`,
     the Part 11 packages, the `#data` nodes. They are mostly used without a `\ref`. Fail every node that misses one.
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

   Watch SPEC's conventions: period 1 versus 2π and every conversion; max norms versus Euclidean norms (Part 8 is
   Euclidean throughout); the complex Hessian norm (max-norm operator norm, Euclidean ≤ nM_ℂ, Part 11 ≤ M_ℂ); the weight
   e^{2π|k|₁s}; K_a versus K_g; angles-first versus positions-first; the constants and quantifier order of N-HEAD-C
   and N-PARTIAL-CONVEX; ε > 0 in N-HEAD-C; the stopped slow confinement on [0, t]; q, p, b of Part 9 versus b_c = 1/32
   of Part 11.
4. **Conditional premises.** Wherever a node applies a conditional result, check that the applying node or an edge
   shows where each premise is supplied. The conditional results include:
   - a lemma with hypotheses;
   - a package (a Theorem-1 setting, (N1)–(N2), (RS), the Part 11 block setting, (SL), …);
   - Pöschel's Theorem 1 (`bpN:p9:thm1`) applied in Part 10 (hypotheses checked by `bpN:p10:hypotheses-check`);
   - the general ODE layer applied through `bpN:p3:ham-reduction` (C¹ field on an open W, interval J, periodicity);
   - the Part 4–6 results applied to the extended class in Part 11 (`bpN:p11:ext-part4` and its siblings);
   - an imported K result (strip functions, holomorphy, reality on reals).
5. **Locators.** STATEMENT_SOURCE and PROOF_SOURCE ranges must match the text. EDGE locators must point at the use in
   the consumer.
6. **Coverage.** Every inventory item needs a correct disposition, and every exclusion a valid reason: alias,
   administrative, outside every root closure (name the check), owned by the importing graph (SPEC rulings), pointer,
   notation.
7. **`N-imports` (when assigned).** For each imported node, compare the four source fields with the statement at its
   locator in the owning blueprint. Check that the ID names a node of the owning graph: run
   `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/N/packets --slice N-imports --self-track N`
   in report mode. Check that it is KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -.

Topology status is not proof status. A faithfully exposed `SOURCE_GAP` node passes. Do not supply missing mathematics
yourself.

## Output
Write `docs/graph/N/reviews/<slice>-review.md` for each of your slices with:
- a verdict, PASS or FAIL, for the slice;
- a table with one row per node: node ID, PASS/FAIL, the source spans you re-read, and the reason for any FAIL;
- a table with one row per coverage item that FAILS. Say "all other coverage items PASS" explicitly;
- for every FAIL, a replacement fragment: the corrected node block, EDGE line or coverage item, in the database
  format, inside a fenced block (`inp_depgraph_apply_review.py` reads fenced blocks).

Report suspected blueprint defects (location, quoted text, why) in a separate section.

Edit nothing else. Run no state-changing git. Run no Lean.

The repository's Lean hard rules, for awareness (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
   a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
   elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

Keep working in the same turn until all your slices are reviewed. Then print `READY <your marker>` on a line of its
own.
