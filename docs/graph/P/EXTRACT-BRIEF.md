# Extraction brief (one slice of track P's dependency graph)

You are an extraction worker for the source dependency graph of track P of the KAM formalization (worktree
`/root/code/KAM-inp`, branch `inp`). Your slice is given in your prompt.

Read `docs/graph/P/SPEC.md` first. It fixes the roots, anchors, packages, section data, externals, imports,
cross-graph ownership, conventions, node threshold, edge policy, slices and the sub-orchestrator's rulings, and it is
binding.

## Your input and output
- **Input.** Your slice's draft packet, `docs/graph/P/packets/<slice>.nodes.md` and `<slice>.coverage.md`. A
  mechanical script wrote them from the blueprint's labels and its `\ref`, `\Kref`, `\Iref`, `\Nref`, `\Pref` and
  `\frozen` commands; the writer bound the Part-14b anchors and parked P-FIXED.
  - Locators and IDs are right.
  - Every DEPS/EDGE entry is only a *candidate*.
  - Every `SOURCE_*` and `CONSTANT_SCOPE` field is `TODO`.
  - Coverage items `…:prose-Lx-Ly` (unlabelled prose) and `…:sourcegap-L…` have `DISPOSITION: TODO`.
- **Output.** Edit exactly those two files, in place. Edit no other file. Never edit `P-imports.*` (writer-owned).

## What to do, for every node of your slice
1. **Read the statement and the proof** in `blueprint-P/parts/…` at the node's locators (your slice's line range), plus
   any context you need, including a cited statement of another track at the locator of its imported node in
   `P-imports.nodes.md`.
2. **Fill the source-statement fields from the statement only, never from the proof:**
   - `SOURCE_HYPOTHESES`: the premises as stated, semicolon-separated, normalized but complete, including inherited
     packages and section data ("the data of Definition `bpP:p12:data`", "the setting of §…"), which you name.
   - `SOURCE_QUANTIFIERS`: the binders from outside to inside, with the scope of every constant.
   - `SOURCE_CONCLUSION`: the conclusion as stated.
   - `CONSTANT_SCOPE`: what each constant may depend on, exactly as stated; `none` if there are no constants.
   - **Steps:** hypotheses = the context of the enclosing proof the step relies on; conclusion = what the step
     establishes. Short, never empty.
   - **Externals:** copy the item.
   - **Definitions and packages:** `SOURCE_HYPOTHESES: none` (or the typing data); the conclusion is "defines …".
   - **Frozen anchors (`P-p0`, `P-p14b` only):** fill the fields from the blueprint's transcription (Part 0; for
     P-SECULAR-BOX, Part 14b §sb-conv/§sb-frozen). You may read the frozen declaration file named in FROZEN_FILE
     (`KAM/Frozen/Planetary/{Defs,Theorems}/…`, `KAM/Frozen/Defs/…`, and for `IsHamiltonianSolutionOn` the track-I
     frozen file) for its exact statement. Keep Part 0's quantifier and constant order exactly (SPEC, "Conventions to
     watch": P-G's r_*, C, c after all data; P-PLANAR's (μ₀, d, D) after (G, m₀, m, a, η) and before μ; P-EXP-SAFE's
     (μ_*, c, C) after (n, ℬ) and before (μ, z₀); P-AMD's (ℬ, μ, T, δ) then z₀).
3. **Decide the edges.**
   - Keep a candidate only if the node's statement or proof directly *uses* the target (consumes its conclusion or its
     definition).
   - Delete: forward pointers, comparisons, consistency checks and "cf."; provenance (candidates tagged "in \source:
     provenance unless consumed"); "does not apply"/"replaces"/"not used"/"pattern only" mentions; references made
     only to name a hypothesis; references to an interface that this node *supplies* (Part 3's `bpP:p3:avg` is proved
     in Part 2: Part 2 depends on nothing of Part 3's for it).
   - **Add direct uses that the text makes without a `\ref`:** "by (H4)", "(A1)", "(S4)", "Step 2", "the chain rule",
     "Cauchy", a definition, chart, constant or symbol used by name (Ψ, Φ, β̂, Φ₄, 𝒩(ρ), r_K, E = Cμε⁵, …).
   - **Packages and section data (the K, I and N lesson).** Read SPEC §"Standing assumptions and hypothesis
     packages". Every node whose statement assumes a package, or whose proof uses an object, symbol or constant it
     defines, depends on the package node, even without a `\ref`. Create the `#data` (or `#<slug>` claim) nodes the
     section-data table assigns to your slice when their content is consumed, and link every consumer. **Extractors of
     tracks K, I and N under-linked packages and section data, and their reviewers failed every such node. Expect the
     same here.**
   - **Edge format.** Every DEPS (and ROUTES) entry has **exactly one** `EDGE:` line, `target | locator of the use in
     THIS node's text | short rationale`. Fix the line numbers of the locators to the use site in the consumer. **Never
     write a raw `|` inside the rationale** (it is the field separator): use `¦` for absolute values and norms.
   - **Usable node IDs:** your slice's nodes; other slices' nodes (blueprint labels; steps `stepP:…`); the frozen
     anchors (SPEC lists all 76); the track-P externals; the imported nodes of `P-imports.nodes.md` (`K:…`, `I:…`,
     `N:…`). If you need a result of another track that has no imported node yet, use `X:<label>` with the owning
     graph's node ID and list it in your final message (the slice check reports it as PENDING-IMPORT; the writer adds it).
   - **Cross-ownership candidates** (SPEC, ten blocks in `P-imports` with `WARNING`): keep an edge to one of them only
     for a genuine use, and say so in your final message; the writer then makes it a P-owned node.
   - Direction: `consumer -> prerequisite`.
   - **Alternatives** ("alternatively …", "either … or …") become route nodes: `KIND: route`, `ROUTE_FOR` = the owner,
     listed in the owner's `ROUTES`, one EDGE each. Route *decisions* are not alternatives.
4. **Name a missing input.** If a proof uses a fact that is neither proved in the corpus, nor a track-P external, nor an
   imported result, add a step node with `NOTE: SOURCE_GAP: <what is missing>`. Do not supply the proof yourself.
5. **Missing step nodes.** Add a step node, ID `<parent>#<slug>`, for any unmarked substantive obligation (SPEC
   threshold). The parent depends on it.
6. **Remarks and administrative nodes.** Delete a remark node that no proof uses, or that is administrative (SPEC
   §Node threshold lists examples), and set its coverage item to `DISPOSITION: EXCLUDED` with a reason. Results no
   root's proof consumes are excluded with "outside every root closure of track P", or, if only P-FIXED consumes them,
   "outside every root closure of this graph version; consumed by P-FIXED (deferred)". Name the check you made (which
   consumers you searched for, where).
7. **Externals.** Apply SPEC's alias rule and its listed candidates; keep `bpP:p7:e-cov` and `bpP:p11b:e-ca` as SPEC
   says.
8. **Coverage.** Every coverage item gets exactly one disposition: `NODE <id>[, <id>…]` or `EXCLUDED` with a reason.
   In a coverage DISPOSITION or NOTE, write a node as its ID, never as `KIND: label` (write `display` or `node`, not
   `KIND: display`).
   - `prose-L…`: map to the node(s) that rely on it (including a `#data` node you create), or exclude it (motivation,
     outline, pointer, provenance, notation only).
   - `\sourcegap`: map to the node(s) that supply the bridge, or exclude with a reason.
   - `\source{…}`: confirm `EXCLUDED`, unless the blueprint really relies on the cited paper for an unproved fact (then
     a SOURCE_GAP step).
9. **Leave unchanged:** `TOPOLOGY_STATUS: PROPOSED`, `REVIEWER: -`, `LEAN_*`, all `FROZEN_*` fields and anchor
   `CONTRACT_*`. Set `EXTRACTOR: sonnet-extract-<slice>` on every node and coverage item you checked.

## Rules
- **Never read Lean files** except the frozen declaration files under `KAM/Frozen/` for an anchor's exact statement. No
  implementation modules, provider files, proof bodies, `sorry` or Lean status; do not use the manifest's state fields.
- No git commands that change state. Edit only your two packet files.
- Report every suspected defect of the blueprint in your final message (location, quoted text, why it is wrong). Do not
  fix it.
- The repository's Lean hard rules apply to anyone touching Lean here (you are not). Verbatim:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
     a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
     elaborate at default heartbeats, report it as a design signal.
  2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
     preserving public import paths as cheap facades.
- **Check before handing off.** From `/root/code/KAM-inp` run, and get `0 problems` for your slice:

  ```
  python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets <slice>
  ```

  A dependency on a node of another slice is fine if that node exists there. PENDING-IMPORT lines are not problems,
  but list them. Also check that no EDGE line has more than two `|` separators.

## Your final message (short; the packets carry the content)
- source ranges read; node and edge counts before and after;
- nodes added or removed, one line each; package edges added (count per package); `#data` nodes; SOURCE_GAP nodes;
- coverage items excluded, and every reachability exclusion with the check made;
- cross-slice edges added; pending imports; cross-ownership candidates kept (with the use);
- suspected blueprint defects; uncertainties;
- confirmation that no Lean evidence was sought and only your two files changed.
