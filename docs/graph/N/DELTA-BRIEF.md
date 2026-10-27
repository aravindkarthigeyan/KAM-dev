# Delta topology review brief (track N dependency graph)

The slice reviews (`docs/graph/N/reviews/<slice>-review.md`) failed some records and supplied replacement blocks;
the writer merged them into the slice packets (`docs/graph/N/packets/<slice>.{nodes,coverage}.md`). Records the
reviewer wrote, and records the slice review did not explicitly pass, still have `TOPOLOGY_STATUS: PROPOSED`
(nodes) or `COVERAGE_STATUS: PROPOSED` (coverage items). Because a reviewer wrote the replacement text, a
**different** reviewer must check it. That is you: you must not be the slice's own reviewer (its tag is in the
slice review file).

## For each PROPOSED node or coverage item of your assigned slice(s)
- Re-read the raw blueprint source at its locators (and at every EDGE locator) and apply exactly the checks of
  `docs/graph/N/REVIEW-BRIEF.md` (completeness, direct edges, source-statement fields, standing packages,
  conditional premises, locators, coverage dispositions, imports) under `docs/graph/N/SPEC.md` and its rulings.
- Check that the replacement resolves the FAIL recorded for it in the slice review; where the slice reviewer
  over-corrected (e.g. added a premise the statement does not state, or an edge that is a pointer), fail it.
- Writer additions to check: route `EDGE:` lines added mechanically by the writer ("alternative derivation offered
  by the proof (route)") and step `SOURCE_QUANTIFIERS` filled as "inherits the fixed data and quantifiers of the
  enclosing proof; no new binders".
- `EDGE` rationales use `¦` for absolute-value bars (`|` is the field separator).

## Output
Write `docs/graph/N/reviews/<slice>-delta.md` per slice: a table with one row per PROPOSED record (ID, PASS/FAIL,
spans re-read, reason for any FAIL) — use exactly `| <id> | PASS |` / `| <id> | FAIL |` as the first two cells —
and, for every FAIL, a complete replacement block in the database format inside a fenced block. Edit nothing else:
no packets, no SPEC, no state-changing git, no Lean. Keep working in the same turn until all your slices are done,
then print `READY <your marker>` on a line of its own.
Lean hard rules (verbatim): (1) Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A
default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a
larger budget. (2) No Lean file may exceed 1500 lines of code.

## Convergence rule (track N)
FAIL only for a genuine topology error (a missing or non-direct edge, a wrong or over-strong statement field, a wrong
locator, an unsupported premise, a wrong coverage disposition). A FAIL replacement block must change only the failing
fields and keep everything else verbatim. Prefer PASS when the record is accurate even if wording could be improved.
Review coverage items too: give each PROPOSED coverage item its own `| <item id> | PASS |` / `| <item id> | FAIL |` row.
