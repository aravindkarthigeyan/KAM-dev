# N-p3b second-round delta topology review

Reviewer: sol-delta2-N-c. Marker: delta2-N-c.

Verdict: PASS for all remaining PROPOSED records: 1 nodes, 0 coverage items. This verdict is limited to the pending records; it does not reopen records already marked REVIEWED. The first delta reviewer was sol-delta-N-c, a different reviewer.

Read the current DELTA-BRIEF, REVIEW-BRIEF and SPEC, including the convergence rule. Checked each pending record against its raw statement/proof, every EDGE locator, the enclosing source data, the directly used prerequisite contracts, and the FAIL recorded in the first delta review. Each merged block matches that review’s complete replacement apart from writer EXTRACTOR metadata.

Source spans below refer to `blueprint-N/parts/p3-hamiltonian-ode.tex` unless another file is named.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p3:local-exist | PASS | L502–511; EDGEs L503–504, L504–505, L509, L510; setting L472–477; reduction L416–431; general inputs L205–213, L217–233 | The section-data edge now points to the use of U and H at L503–504 instead of the theorem heading, resolving the first delta FAIL. The source statement retains both time directions and uniqueness on every interval containing the common initial time. The standing data supplies open U inside the smooth ambient domain; le-red supplies predicate equivalence and C1 of the field; le-apply supplies general existence and uniqueness. The local positive time is chosen after the fixed data and initial time/point, and is distinct from the perturbation size. The frozen IsSolutionOn predicate, including differentiability of H and two-sided derivatives, is used at L504–505. |

There are no records with COVERAGE_STATUS: PROPOSED in this slice, so no coverage rows are due. There are no FAILs and no replacement blocks.

The source fields preserve the applicable premises, binder scope, conclusion and constant scope. Every dependency is a direct use at the consumer, with no provenance, forward-pointer, hypothesis-check-only or conjunction-of-alternatives edge. None of the pending nodes contains the mechanical route rationale or generic inherited-quantifier text singled out by the brief. No missing substantive obligation was found within these pending source units.

The frozen interface was compared with Part 0 L165–172 and `KAM/Frozen/Nekhoroshev/Defs/IsSolutionOn.lean`; the manifest identity matches export `KAM.Nekhoroshev.IsSolutionOn`, anchor `nekhoroshev.IsSolutionOn.v1`, contract `nekhoroshev.IsSolutionOn` version 1, and ABI `83307c5a783005dd77d4d859f794ae9722467d6560eb097d27cb95f23b551b59`. The reduction’s track-I clause was checked against its N-imports record and `blueprint-I/parts/p0-conventions.tex` L122–128. It adds no independent hypothesis to this consumer. No new import is needed.

## Suspected blueprint defects

No new suspected blueprint defect or pinned-paper erratum was found in the reviewed units. Previously reported issues outside these pending records are outside this verdict. No mathematical deviation is introduced.

## Validation

Both CORPUS.sha256 and IMPORTS.sha256 match their current files. Part 3 has SHA256 `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d`.

Input snapshot:

- `N-p3b.nodes.md`: `a8565a9789aff062cd445f699b31dad60b2cdf3504049c45d30f4a30c5348b6c`.
- `N-p3b.coverage.md`: `a0e11ee603cde45e120e14d50c2b4b60f0983b34805ba8b6cfbc5e851ed96d39`.

Only the two requested delta2 Markdown reports were written. No Lean command, implementation/provider inspection, manifest-state inspection, packet edit or state-changing git operation was performed.

Validation receipts: the review-application parser `--dry-run` exited 0: 0 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 1 PASS nodes. Independent inventory and packet-hash checks PASS. Scoped `git diff --check` exited 0 with no output.
