# Slice topology review brief (track P dependency graph)

You are an independent, refute-first reviewer of part of the source dependency graph of track P of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract these records. Your slices are named in
your prompt.

## Read
- `docs/graph/P/SPEC.md`: roots, anchors, packages and section data, externals, imports and cross-graph ownership,
  conventions, node threshold, reachability, edge policy and rulings. It is binding.
- The raw source of your slices: `blueprint-P/parts/<part>.tex` at the line ranges of SPEC's slice table. Read the cited
  results in other parts whenever an edge points to them; for an imported node `K:…`, `I:…`, `N:…`, read its statement at
  its STATEMENT_SOURCE in `blueprint/`, `blueprint-I/` or `blueprint-N/`.
- Your slices' records: `docs/graph/P/packets/<slice>.nodes.md` and `<slice>.coverage.md`; the imported nodes
  `docs/graph/P/packets/P-imports.nodes.md`.
- The manifest `manifest/frozen-anchors.json` (identity fields only) and, for anchors, the frozen declaration files
  named in FROZEN_FILE (`KAM/Frozen/Planetary/{Defs,Theorems}/*.lean`, `KAM/Frozen/Defs/*.lean`, the track-I file of
  `IsHamiltonianSolutionOn`).
- **Do not read anything else in Lean**: no implementation modules, provider files, proof bodies or proof status; do not
  use the manifest's state fields.

## Try to refute
1. **Completeness.** Statements, displays, definitions or substantive proof steps of the slice without a node and
   without a valid exclusion; bridges the text uses without proof that are neither a track-P external, nor an imported
   result, nor a `SOURCE_GAP` node; every `prose-L…` disposition (a paragraph that fixes data or states a consumed fact
   needs a node or a mapping to its consumers, SPEC's section-data table).
2. **Edges.** For every node re-read statement and proof. Every DEPS entry must be a direct use, located at the consumer
   by its EDGE line. Look for:
   - missing direct uses, including uses without `\ref` ("(H4)", "(A1)", "(S4)", "Step 2", "chain rule", a chart or
     constant by name);
   - forward pointers, consistency checks, provenance, "pattern only"/"not used" mentions kept as edges;
   - reversed, merely transitive or unnecessary edges; an interface consumer pointing back at its supplier;
   - **packages and section data, first**: every node that uses data of a SPEC package or `#data` node must depend on
     it. Extractors under-link these (tracks K, I, N): fail every node that misses one;
   - alternatives modelled as a conjunction ("alternatively …" needs route nodes);
   - circularity between a definition and its consequences, or a remark and the result it comments on;
   - EDGE format: exactly one EDGE per DEPS/ROUTES entry, no raw `|` in the rationale (`¦` instead).
3. **Source-statement fields.** Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION`,
   `CONSTANT_SCOPE` from the raw statement. Fail a record that adds a proof ingredient as a hypothesis, drops a stated
   premise, reorders quantifiers, weakens or strengthens the conclusion, or lets a constant depend on more or less than
   stated. Watch SPEC's conventions: max norms versus physical lengths ¦·¦; positions first and the fast/slow blocks;
   the chart dictionary (I, φ, p, q) = (Λ, λ, η, ξ); period 1 versus 2π (cylinder fast angles, Parts 7–8, 14b); the
   track-N weighted norm with σ = s_CP/(2π); increasing Lean axis order; G, m₀ general versus G = m₀ = 1 (D25); the
   √(2Λ) halving of Fej04r's coefficients; the order of constants in each root.
4. **Conditional premises.** Wherever a node applies a conditional result, the applying node or an edge shows where
   each premise is supplied. Above all:
   - the frozen P-G applied in Part 12 ((H1)–(H6), every datum, via `bpP:p12:pg-hypotheses`);
   - track N's Parts 3–6 (ODE layer, weighted norms, Lie transforms, Iterative Lemma / Normal Form Lemma) applied in
     Parts 1–3, 5, 11b, 14 (the setting (N1)/(N2), smallness conditions, the norm);
   - N-PARTIAL-CONVEX (`N:bpN:p0:partial`) applied in Part 14a (every hypothesis on G, G′, D, ρ, h, P, the sign σ, the
     exponents), through the chart of Part 7;
   - the two-scale KAM theorem (Part 3) applied in Part 5; the averaging (Part 2) consumed by Part 3's interface;
   - the Kepler/Delaunay results of track I applied in Part 7; the collision exclusion of track I in Part 6;
   - every package (SPEC table).
5. **Locators.** STATEMENT_SOURCE and PROOF_SOURCE match the text; EDGE locators point at the use in the consumer.
6. **Coverage.** Every inventory item has one correct disposition, every exclusion a valid reason (alias,
   administrative, outside every root closure (check named), consumed by P-FIXED only (deferred), owned by another
   graph, pointer, notation). Nodes are named by ID, never as `KIND: label`.
7. **Anchors (P-p0, P-p14b).** The four source fields against the transcription and the frozen file; the statement edges
   to the frozen definitions each anchor uses by name; anchor identity fields untouched.
8. **`P-imports` (when assigned).** For each imported node compare the four source fields with the statement at its
   locator in the owning blueprint; check that the ID names a node of the owning graph
   (`python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P`,
   report mode); KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -.

Topology status is not proof status. A faithfully exposed `SOURCE_GAP` node passes. Do not supply missing mathematics.

## Output
Write `docs/graph/P/reviews/<slice>-review.md` for each of your slices (one file per slice; if a finding concerns a
record of another slice, put it in a separate section "for slice <name>", so that the writer applies it to that slice
only) with:
- a verdict, PASS or FAIL, for the slice;
- a table with one row per node: node ID, PASS/FAIL, the source spans re-read, the reason for any FAIL (first two cells
  exactly `| <id> | PASS |` or `| <id> | FAIL |`);
- a table with one row per coverage item that FAILS, and the sentence "all other coverage items PASS";
- for every FAIL, a replacement fragment (complete node block, EDGE line or coverage item, in the database format) in a
  fenced block; change only the failing fields and keep everything else verbatim;
- suspected blueprint defects (location, quoted text, why), in a separate section.

Edit nothing else. Run no state-changing git. Run no Lean.

The repository's Lean hard rules, for awareness (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
   a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
   elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

Keep working in the same turn until all your slices are reviewed. Then print `READY <your marker>` on a line of its own.
