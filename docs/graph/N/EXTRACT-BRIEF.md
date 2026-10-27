# Extraction brief (one slice of track N's dependency graph)

You are an extraction worker for the source dependency graph of track N of the KAM formalization (worktree
`/root/code/KAM-inp`, branch `inp`). Your slice is given in your prompt.

Read `docs/graph/N/SPEC.md` first. It fixes the roots, anchors, packages, imports, conventions, node threshold, edge
policy, slices and the sub-orchestrator's rulings, and it is binding.

## Your input and output
- **Input.** Your slice's draft packet, `docs/graph/N/packets/<slice>.nodes.md` and `<slice>.coverage.md`. A
  mechanical script wrote them from the blueprint's labels and its `\ref`, `\Kref`, `\Nref`, `\Pref` and `\frozen`
  commands.
  - Locators and IDs are right.
  - Every DEPS/EDGE entry is only a *candidate*.
  - Every `SOURCE_*` and `CONSTANT_SCOPE` field is `TODO`.
  - Coverage items `…:prose-Lx-Ly` (unlabelled prose, with or without references) and `…:sourcegap-L…` have
    `DISPOSITION: TODO`.
- **Output.** Edit exactly those two files, in place. Edit no other file. In particular, never edit
  `N-imports.*`, which the writer owns.

## What to do, for every node of your slice
1. **Read the statement and the proof** in the blueprint at the node's locators (`blueprint-N/parts/…`, your slice's
   line range), plus any context you need. That includes the cited track-K statement at the locator of its imported
   node in `N-imports.nodes.md`.
2. **Fill the source-statement fields from the statement only, never from the proof:**
   - `SOURCE_HYPOTHESES`: the premises as stated, semicolon-separated, normalized but complete. This includes
     inherited packages such as "a Theorem-1 setting (`bpN:p9:setting`)", "the data of §s-N" or "Definition
     `bpN:p11:block-setting`", which you name.
   - `SOURCE_QUANTIFIERS`: the binders from outside to inside, with the scope of every constant.
   - `SOURCE_CONCLUSION`: the conclusion as stated.
   - `CONSTANT_SCOPE`: what each constant may depend on, exactly as stated; `none` if there are no constants.
   - **Steps:** the hypotheses are the context of the enclosing proof that the step relies on, and the conclusion is
     what the step establishes. Keep these short, but never leave a field empty.
   - **Externals:** copy the item.
   - **Definitions and packages:** `SOURCE_HYPOTHESES: none` (or the typing data), and the conclusion is "defines …".
   - **Frozen anchors (`N-p02` only):** fill the fields from Part 0's transcription of the frozen statement. You may
     read the frozen declaration file (`KAM/Frozen/Nekhoroshev/…`, `KAM/Frozen/Defs/…`, and for the five track-P
     definitions `KAM/Frozen/Planetary/Defs/{Phase,Fast,Slow,FastShift,DegenerateHamiltonian}.lean`) for its exact
     statement. Keep the quantifier and constant order of Part 0 exactly: for N-HEAD-C, (C, T, c, ε₀) come after
     (n; R, s, M, m, M_ℂ, ω_min) and before (h, f, ε), then (θ₀, I₀); for N-PARTIAL-CONVEX, μ₀ comes after
     (n, k; G, G′, D, ρ, g, m, M_ℂ, h with their hypotheses) and before (μ, P, C, z), then t.
3. **Decide the edges.**
   - Keep a candidate only if the node's statement or proof directly *uses* the target, i.e. consumes its conclusion
     or its definition.
   - Delete:
     - forward pointers, comparisons and "cf.";
     - provenance (candidates tagged "in \source: provenance unless consumed");
     - "does not apply"/"replaces"/"is not cited" mentions;
     - "for orientation" repetitions of an argument that the node takes from a cited result;
     - references made only to check that a hypothesis holds where the referenced result is not used.
   - **Add direct uses that the text makes without a `\ref`:** "by the Cauchy estimate", "B.1(b)", "(N1)", "(S3)",
     "as in Step 2", "the mean value inequality", a definition or constant used by its symbol.
   - **Standing packages (the K and I lesson).** Read SPEC.md §"Standing assumptions and hypothesis packages" before you
     start. Every node whose statement assumes a package, or whose proof uses an object, symbol or constant defined by
     a package, depends on that package node, even when no `\ref` names it: above all `bpN:p4:norm` and
     `bpN:p4:domains` (𝒪(r,s), |·|_{r,s}, V_rD, 𝒟_{r,s}) in Parts 4–7, 9 and 11; `bpN:p5:setting` (X_u, {u,v}, ν);
     `bpN:p6:setting` ((N1), (N2), |g|_*); `bpN:p7:setting`, `bpN:p7:resonance-data`; the Part 8 lattice
     definitions; `bpN:p9:setting`; `bpN:p1:constants` and `bpN:p10:choice`; `bpN:p11:wfield`, `constants`,
     `ext-class`, `scaled`, `block-setting`. Tracks K and I under-linked such packages, and their reviewers failed every
     such node. Expect the same here.
   - **Section data.** Create the `#data` (or `#<slug>` claim) nodes that SPEC.md's section-data table assigns to your
     slice when their facts are consumed, and link their consumers.
   - **Edge format.** Every DEPS entry has exactly one `EDGE:` line, `target | locator of the use in THIS node's text |
     short rationale`. Fix the line numbers of the locators. Use `¦` for absolute-value bars in the rationale.
   - **Usable node IDs:**
     - your slice's nodes;
     - other slices' nodes (the blueprint labels; steps are `stepN:…`);
     - the frozen definition nodes `bpN:p0:<label>#<LeanName>` (SPEC.md lists all 28);
     - the track-N externals (`bpN:p*:ext-*`);
     - the imported nodes of `N-imports.nodes.md` (`K:<node>`, `I:<node>`, `P:<node>`).

     If you need a track-K result that has no imported node yet, use the ID `K:<label>` with K's graph node label
     anyway, and list it in your final message. The slice check reports it as PENDING-IMPORT, and the writer adds it.
   - The edge direction is `consumer -> prerequisite`.
   - **Alternatives** ("either by X or by Y") become route nodes: `KIND: route`, with `ROUTE_FOR` set to the owner, and
     the owner lists them in `ROUTES`. This is rare; route *decisions* (Remarks `bpN:p11:route`, `bpN:p5:route`) are not
     alternatives.
4. **Name a missing input.** If a proof uses a fact that is neither proved in the blueprint, nor a track-N external,
   nor an imported result, add a step node with `NOTE: SOURCE_GAP: <what is missing>`. Do not supply the proof
   yourself.
5. **Missing step nodes.** Add a step node, ID `<parent>#<slug>`, for any unmarked substantive obligation (see the
   threshold in SPEC.md). The parent then depends on it.
6. **Remarks and administrative nodes.**
   - A remark node that no proof uses, or that is administrative, is deleted from the nodes file. Administrative means:
     deviations, errata, doubts, provenance, Lean notes, "use"/"consumers"/"interfaces" summaries, status lists, label
     indexes, route decisions.
   - Its coverage item becomes `DISPOSITION: EXCLUDED` with a reason.
   - Results that no root's proof consumes are excluded with the reason "outside every root closure of track N" (SPEC
     §Reachability), or with the ownership reason of SPEC's rulings ("outside every root closure; owned by the
     importing graph (track I/P)"). Name the check you made (which consumers you searched for, where).
7. **Externals.** Apply SPEC's alias rule and its decisions on `bpN:p3:ext-mvt`, `bpN:p4:ext-weier`,
   `bpN:p4:ext-series`, `bpN:p3:ext-lip-local`, `bpN:p3:ext-pl-c1` and `bpN:p11:ext-chain`.
8. **Coverage.** Every coverage item gets exactly one disposition.
   - **`prose-L…` items:** map each to the node(s) that rely on it (including a `#data` node you create), or exclude it
     with a reason: motivation, outline, pointer, provenance, or notation only.
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
     a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
     elaborate at default heartbeats, report it as a design signal.
  2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
     preserving public import paths as cheap facades.
- **Check before handing off.** Run this command. It must print `0 problems` for your slice:

  ```
  python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/N/packets <slice>
  ```

  - Run it from `/root/code/KAM-inp`.
  - A dependency on a node of another slice is fine, provided that node exists there.
  - PENDING-IMPORT lines are not problems, but list them.

## Your final message (keep it short; the packets carry the content)
- the source ranges read;
- node and edge counts (before and after);
- nodes added or removed, with one line each;
- package edges added (count per package);
- `#data` nodes;
- SOURCE_GAP nodes;
- coverage items excluded, and every exclusion "outside every root closure" with the check made;
- cross-slice edges you added;
- pending imports;
- suspected blueprint defects;
- uncertainties;
- confirmation that no Lean evidence was sought and only your two files changed.
