# K-p1a: delta3 topology review

Reviewer: `sol-review-d3` (`d3`). Assigned-record verdict: **FAIL**.

I wrote none of the records reviewed here. Scope is the d3 assignment in `packets/delta3-assignments.json`, checked against the current blueprint (including commit `2f355ea`), SPEC change log, the available slice delta2 history and GLOBAL-review findings. This is a source-topology review, with FAIL reserved for material contract, direct-use, locator or coverage errors. It does not certify Lean proofs or the rest of the slice.

Source and conditional-input context re-read: Part 1 L1-L47 and L98-L107; Part 4 L84-L101 and the unrestricted-dimensional frozen G3 declaration.

| Record ID | Verdict | Source spans re-read | Reason / repair check |
|---|---|---|---|
| `bp:p1:ext-measure` | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:ext-measure@L98-L107` | SOURCE_HYPOTHESES adds d1,d2>=1, absent from E11. This restricts the external product/Tonelli input, in particular excluding the zero-dimensional factor in the n=1 slab application (Part 4 L85-L101). Preserve arbitrary finite dimensions. |

Complete proposed replacement for `bp:p1:ext-measure` (report proposal only):

```text
ITEM: bp:p1:ext-measure
KIND: external
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-measure@L98-L107
DISPOSITION: NODE bp:p1:ext-measure
REASON: external input (E11)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-main-orchestrator
REVIEWER: sol-review-d3
```

Source concern for handoff (no silent source repair): Part 1 L102-L103 says a closed box and its open counterpart both have measure `prod_i(b_i-a_i)` without explicitly ordering the corners. If arbitrary corners are intended, a reversed interval can make the product negative while volume is zero. This needs an ordering convention or a source clarification; it is not a new graph premise. No pinned-paper erratum is claimed.

Accounting: 1 distinct assigned records; 0 PASS; 1 FAIL. All other assigned coverage items PASS.

Checks: `sha256sum -c docs/graph/K/CORPUS.sha256` returned `OK` for Parts 0-4. Report row accounting, replacement completeness, DEPS/EDGE equality and locator bounds were checked mechanically; `git diff --check` for the report paths returned exit 0. Only this review report was written for this slice. No packets, SPEC, blueprint, frozen files or manifest were edited; no state-changing git or Lean command was run. Source lint, targeted Lean builds and `#print axioms` are inapplicable to this report-only task under the review brief. No Lean result was created. No implementation/provider modules were read.

Uncertainties / deviations: verdicts are limited to the assigned records. No mathematical or frozen-statement change is proposed. Existing descriptive wording is not treated as a failure.
