# Extraction brief (one slice of track I's dependency graph)

You are an extraction worker for the source dependency graph of track I of the KAM formalization (worktree
`/root/code/KAM-inp`, branch `inp`). Your slice is given in your prompt.

Read `docs/graph/I/SPEC.md` first. It fixes the roots, anchors, packages, imports, conventions, node threshold, edge
policy and slices, and it is binding.

## Your input and output
- **Input.** Your slice's draft packet, `docs/graph/I/packets/<slice>.nodes.md` and `<slice>.coverage.md`. A
  mechanical script wrote them from the blueprint's labels and its `\ref`, `\Kref`, `\Nref` and `\Iref` commands.
  - Locators and IDs are right.
  - Every DEPS/EDGE entry is only a *candidate*.
  - Every `SOURCE_*` and `CONSTANT_SCOPE` field is `TODO`.
  - Coverage items `…:prose-Lx-Ly` (unlabelled prose with references) and `…:sourcegap-L…` have `DISPOSITION: TODO`.
- **Output.** Edit exactly those two files, in place. Edit no other file. In particular, never edit
  `I-imports.*`, which the writer owns.

## What to do, for every node of your slice
1. **Read the statement and the proof** in the blueprint at the node's locators (`blueprint-I/parts/…`, your slice's
   line range), plus any context you need. That includes the cited track-K or track-N statement at the locator of
   its imported node in `I-imports.nodes.md`.
2. **Fill the source-statement fields from the statement only, never from the proof:**
   - `SOURCE_HYPOTHESES`: the premises as stated, semicolon-separated, normalized but complete. This includes
     inherited packages such as "Assumption `bpI:p1:setting`" or "the data of Part 3", which you name.
   - `SOURCE_QUANTIFIERS`: the binders from outside to inside, with the scope of every constant.
   - `SOURCE_CONCLUSION`: the conclusion as stated.
   - `CONSTANT_SCOPE`: what each constant may depend on, exactly as stated; `none` if there are no constants.
   - **Steps:** the hypotheses are the context of the enclosing proof that the step relies on, and the conclusion is
     what the step establishes. Keep these short.
   - **Externals:** copy the item.
   - **Definitions and packages:** `SOURCE_HYPOTHESES: none` (or the typing data), and the conclusion is "defines …".
   - **Frozen anchors (`I-p0` only):** fill the fields from Part 0's transcription of the frozen statement. You may
     read the frozen declaration file (`KAM/Frozen/Iso/…`, `KAM/Frozen/Defs/…`) for its exact statement. Keep the
     quantifier order and the constant order of Part 0 exactly: for I-G1, C₁, C₂, C₃ come after the data list and
     before (D, H, K, s, γ, e, E₀).
3. **Decide the edges.**
   - Keep a candidate only if the node's statement or proof directly *uses* the target, i.e. consumes its conclusion
     or its definition.
   - Delete:
     - forward pointers, comparisons and "cf.";
     - provenance (candidates tagged "in \source: provenance unless consumed");
     - "does not apply"/"replaces"/"without (A5)" mentions;
     - references made only to check that a hypothesis holds where the referenced result is not used.
   - **Add direct uses that the text makes without a `\ref`:** "by the Cauchy estimate", "by (X1)", "as in Step 2",
     "(I4)", a definition or constant used by its symbol.
   - **Standing packages (the K lesson).** Read SPEC.md §"Standing assumptions and hypothesis packages" before you
     start. Every node whose statement assumes a package, or whose proof uses an object, symbol or constant defined by
     a package, depends on that package node. This holds even when no `\ref` names it: `bpI:p2:standing`,
     `bpI:p2:admissible`, `bpI:p2:constants`, `bpI:p3:setting`, `bpI:p3:constants`, `bpI:p5:patch-const`,
     `bpI:p6:kep-ham`, `bpI:p7:shift-def`, `bpI:p8:safe`, …. Track K's extractors under-linked these, and its
     reviewers failed every such node. Expect the same here.
   - **Applications of K results.** When a node applies a track-K result that assumes K's package, it depends on the
     `<package>#k-bridge` step that supplies the premises (SPEC.md §"Bridges"). In `I-p1`, `I-p2` and `I-p3`, create
     that bridge step if your slice owns the bridge paragraph.
   - **Edge format.** Every DEPS entry has exactly one `EDGE:` line, `target | locator of the use in THIS node's text |
     short rationale`. Fix the line numbers of the locators. Use `¦` for absolute-value bars in the rationale.
   - **Usable node IDs:**
     - your slice's nodes;
     - other slices' nodes (the blueprint labels; steps are `stepI:…`);
     - the frozen definition nodes `bpI:p0:<label>#<LeanName>`;
     - the track-I externals (`bpI:p1:ext-*`, `bpI:p3:ext-*`, `bpI:p5:ext-*`, `bpI:p7:x-*`, `bpI:p8:x-*`);
     - the imported nodes of `I-imports.nodes.md` (`K:<node>`, `N:<node>`).

     If you need a track-K or track-N result that has no imported node yet, use the ID `K:<label>` / `N:<label>` with
     the owning graph's node label anyway, and list it in your final message. The slice check reports it as
     PENDING-IMPORT, and the writer adds it.
   - The edge direction is `consumer -> prerequisite`.
   - **Alternatives** ("either by X or by Y") become route nodes: `KIND: route`, with `ROUTE_FOR` set to the owner, and
     the owner lists them in `ROUTES`. This is rare; see SPEC.md about `bpI:p7:ke-ift`.
4. **Name a missing input.** If a proof uses a fact that is neither proved in the blueprint, nor a track-I external,
   nor an imported result, add a step node with `NOTE: SOURCE_GAP: <what is missing>`. Do not supply the proof
   yourself.
5. **Missing step nodes.** Add a step node, ID `<parent>#<slug>`, for any unmarked substantive obligation (see the
   threshold in SPEC.md). The parent then depends on it.
6. **Remarks and administrative nodes.**
   - A remark node that no proof uses, or that is administrative, is deleted from the nodes file. Administrative means:
     deviations, errata, doubts, provenance, Lean notes, "use"/"outputs" summaries.
   - Its coverage item becomes `DISPOSITION: EXCLUDED` with a reason.
   - Results that no root's proof consumes are excluded with the reason "outside every root closure of track I" (SPEC
     §Reachability). Name the check you made.
7. **Externals.**
   - Apply SPEC's alias rule. `bpI:p5:ext-banach`, `bpI:p7:x-banach` and `bpI:p5:ext-ift` are aliases: delete their
     nodes, exclude their coverage items with "alias of …", and point every consumer at the cited node.
   - Decide `bpI:p1:ext-real-direction` as SPEC says.
8. **Coverage.** Every coverage item gets exactly one disposition.
   - **`prose-L…` items:** map each to the node(s) that rely on it (including a `#k-bridge` or `#data` node you
     create), or exclude it with a reason: motivation, outline, pointer, provenance, or notation only.
   - **`\sourcegap` items:** map each to the node(s) that supply the bridge, or exclude it with a reason.
   - **`\source{…}` items:** confirm each as `EXCLUDED`, unless the blueprint really relies on the cited paper for an
     unproved fact; then it is a SOURCE_GAP step.
9. **Leave these fields unchanged:** `TOPOLOGY_STATUS: PROPOSED`, `REVIEWER: -`, `LEAN_*`, all `FROZEN_*` fields, and
   anchor `CONTRACT_*`. Set `EXTRACTOR: sonnet-extract-<slice>` on every node and coverage item you checked.

## Rules
- **Never read Lean files.** That means no implementation modules, provider files, proof bodies, `sorry` or Lean
  status. The only exception is a frozen anchor file under `KAM/Frozen/`, which you may read for its exact statement.
  Do not use the manifest's state fields.
- No git commands that change state.
- Edit only your two packet files.
- Report every suspected defect of the blueprint in your final message, with its location, the quoted text and why it
  is wrong. Do not fix it.
- The repository's Lean hard rules apply to anyone touching Lean here (you are not). Verbatim:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
     a design signal to refactor or split the proof, not something to mask with a larger budget.
  2. No Lean file may exceed 1500 lines of code.
- **Check before handing off.** Run this command. It must print `0 problems` for your slice:

  ```
  python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/I/packets <slice>
  ```

  - Run it from `/root/code/KAM-inp`.
  - A dependency on a node of another slice is fine, provided that node exists there.
  - PENDING-IMPORT lines are not problems, but list them.

## Your final message (keep it short; the packets carry the content)
- the source ranges read;
- node and edge counts (before and after);
- nodes added or removed, with one line each;
- package edges added (count per package);
- `#k-bridge` and `#data` nodes;
- SOURCE_GAP nodes;
- coverage items excluded;
- cross-slice edges you added;
- pending imports;
- suspected blueprint defects;
- uncertainties;
- confirmation that no Lean evidence was sought and only your two files changed.
