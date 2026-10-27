# Extraction brief (one slice of track K's dependency graph)

You are an extraction worker for the source dependency graph of the KAM formalization (repo `/root/code/KAM`). Your
slice is given in your prompt. Read `docs/graph/K/SPEC.md` first: it fixes the roots, anchors, conventions, node
threshold, edge policy and slices.

## Your input and output
- **Input.** Your slice's draft packet, `docs/graph/K/packets/<slice>.nodes.md` and `<slice>.coverage.md`. A
  mechanical script wrote them from the blueprint's labels and `\ref` commands. Locators and IDs are right. Every
  DEPS/EDGE entry is only a *candidate*. Every `SOURCE_*` and `CONSTANT_SCOPE` field is `TODO`.
- **Output.** Edit exactly those two files, in place. Edit no other file.

## What to do, for every node of your slice
1. **Read the statement and the proof** in the blueprint at the node's locators (your slice's line range of
   `blueprint/parts/…`), plus any context you need.
2. **Fill the source-statement fields from the statement only, never from the proof:**
   - `SOURCE_HYPOTHESES`: the premises as stated, semicolon-separated, normalized but complete. This includes
     inherited packages such as "(S1)–(S3)" or "the standing data of Part 2", which you name.
   - `SOURCE_QUANTIFIERS`: the binders from outside to inside, with the scope of every constant.
   - `SOURCE_CONCLUSION`: the conclusion as stated.
   - `CONSTANT_SCOPE`: what each constant may depend on, exactly as stated; `none` if there are no constants.
   - **Steps:** the hypotheses are the context of the enclosing proof that the step relies on, and the conclusion
     is what the step establishes. Keep these short.
   - **Externals:** copy the item.
   - **Definitions:** `SOURCE_HYPOTHESES: none` (or the typing data), and the conclusion is "defines …".
3. **Decide the edges.**
   - Keep a candidate only if the node's statement or proof directly *uses* the target, i.e. consumes its
     conclusion or its definition.
   - Delete forward pointers, comparisons, provenance mentions, "cf." and references made only to check that a
     hypothesis holds where the referenced result is not used.
   - Add direct uses that the text makes without `\ref`: "by the Cauchy estimate", "by (E3)", "as in Step 2",
     a definition used by name.
   - Every DEPS entry has exactly one `EDGE:` line, `target | locator of the use in THIS node's text | short
     rationale`. Fix the line numbers of the locators.
   - Use only node IDs that exist: your slice's nodes, other slices' nodes (IDs are the blueprint labels, and steps
     are `step:…`), the frozen definition nodes `bp:p0:<label>#<LeanName>`, or the externals `bp:p1:ext-*`.
   - The edge direction is `consumer -> prerequisite`.
   - Alternatives ("either by X or by Y") become route nodes: `KIND: route`, with `ROUTE_FOR` set to the owner, and
     the owner lists them in `ROUTES`. This is rare in this blueprint.
4. **Name a missing input.** If a proof uses a fact that is neither proved in the blueprint nor one of the
   externals (E1)–(E10), add a step node with `NOTE: SOURCE_GAP: <what is missing>`. Do not supply the proof
   yourself.
5. **Missing step nodes.** Add a step node, ID `<parent>#<slug>`, for any unmarked substantive obligation (see the
   threshold in SPEC.md). The parent then depends on it.
6. **Remarks and administrative nodes.** A remark node that no proof uses, or that is administrative (deviations,
   provenance, Lean notes, summaries), is deleted from the nodes file. Its coverage item becomes `DISPOSITION:
   EXCLUDED` with a reason.
7. **Coverage.** Every coverage item gets exactly one disposition.
   - `\sourcegap` items (`DISPOSITION: TODO`) map to the node that carries the gap, or are excluded with a reason.
   - Every `\source{…}` provenance item is confirmed as `EXCLUDED`, unless the blueprint really relies on the cited
     paper for an unproved fact; then it is a SOURCE_GAP step.
8. **Leave these fields unchanged:** `TOPOLOGY_STATUS: PROPOSED`, `REVIEWER: -`, `LEAN_*`, and all `FROZEN_*`
   fields.
   - Set `EXTRACTOR: sonnet-extract-<slice>` on every node and coverage item you checked.
   - On a frozen anchor node (`K-p0` only), fill the source fields from Part 0's transcription of the frozen
     statement.

## Rules
- **Never read Lean files.** That means no implementation modules, proof bodies, `sorry` or Lean status. The only
  exception is a frozen anchor file, which you may read for its exact statement.
- No git commands that change state.
- Edit only your two packet files.
- The repository's Lean hard rules apply to anyone touching Lean here (you are not). Verbatim:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
     failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
  2. No Lean file may exceed 1500 lines of code.
- **Check before handing off.** Run this command. It must print `0 problems` for your slice:

  ```
  python3 -I scripts/depgraph_slice_check.py docs/graph/K/packets <slice>
  ```

  A dependency on a node of another slice is fine, provided that node exists there.

## Your final message (keep it short; the packets carry the content)
- the source ranges read;
- node and edge counts (before and after);
- nodes added or removed, with one line each;
- SOURCE_GAP nodes;
- coverage items excluded;
- cross-slice edges you added;
- uncertainties;
- confirmation that no Lean evidence was sought and only your two files changed.
