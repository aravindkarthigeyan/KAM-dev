# Delta topology review brief (track K dependency graph)

The first slice reviews (`docs/graph/K/reviews/<slice>-review.md`) failed some records and supplied replacement
blocks. The writer merged those blocks into the slice packets. Because a reviewer wrote the replacement text, a
**different** reviewer must check it. That is you. The records to check are listed per slice in
`docs/graph/K/packets/delta-assignments.json` under your reviewer ID (`r1`…`r4`): node IDs under `nodes`, coverage
item IDs under `items`.

## For each listed node or item
- Re-read the raw blueprint source at its locators (and at every EDGE locator), then apply exactly the checks of
  `docs/graph/K/REVIEW-BRIEF.md` (completeness, edges, source-statement fields, conditional premises, locators,
  coverage).
- Also check that the replacement resolves the FAIL recorded for it in the first review. Where the first review
  over-corrected (for example a premise added that the statement does not state), fail it.
- **Writer adjudications, also to check:**
  - `bp:p1:mixed-difference`, `bp:p1:cauchy-strip-2` and `bp:p4:normalized-unique`, with their steps, are
    excluded under SPEC's reachability rule, now stated explicitly in SPEC.md. Their coverage items are in your
    lists where relevant. Fail an exclusion only if you find a genuine consumer in a root's proof (name it, with its
    line).
  - `step:p2:avg-deriv#real-route` and `#bounded-route` are `KIND: route` alternatives.
  - The V1–V9 coverage items of Part 2 now have `KIND: definition`.
- The edge rationale in `EDGE:` lines uses `¦` for absolute-value bars, because `|` is the field separator.

## Output
Write `docs/graph/K/reviews/<slice>-delta.md` for each slice in your assignment with:
- a table with one row per listed record: ID, PASS/FAIL, the spans you re-read, and the reason for any FAIL;
- for every FAIL, a complete replacement block in the database format, inside a fenced block.

Edit nothing else: no packets, no SPEC, no state-changing git, no Lean. Keep working in the same turn until all
your slices are done. Then print `READY <your marker>`.
