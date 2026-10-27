# Package audit brief (track K proof campaign)

You are an independent, refute-first auditor of one Lean proof package of the KAM formalization. You did not write
it. The package's brief is `docs/campaign/briefs/<PKG>.md`. The prover's code is on the branch checked out in your
working directory; compare it with `main` using `git diff main...HEAD`. The prover's handoff (a node → declaration
table) is pasted in your prompt.

## Try to refute
1. **Statement fidelity.** For every graph node of the package (`docs/graph/K/DEPGRAPH.md`; the blueprint text is
   at its locators in `blueprint/parts/`), find the Lean declaration the handoff names and compare them directly:
   - every premise, binder and quantifier order;
   - every constant and its dependence (an existential before or after which variables);
   - norms and carriers;
   - the conclusion's strength.

   Fail any extra premise not in the blueprint statement, any weakened conclusion, any constant whose dependence is
   wider than stated, and any carrier or norm that changes the meaning. Two exceptions are allowed:
   - a standing convention of Part 0 (e.g. `n ≥ 2`) that the blueprint applies globally, if the Lean docstring says
     so;
   - a strictly stronger statement.

   Record these.
2. **Definitions.** Classify every new `def`/`abbrev`/`structure`: is its body the intended mathematical object on
   its whole carrier? Are there junk values or fallbacks that a theorem then relies on?
3. **Hypotheses.** No conclusion-shaped hypotheses. No hard proof step is assumed as a premise, an instance or a
   bundled structure field.
4. **Provider packages only.** The provider's theorem must have exactly the frozen theorem's type. Elaborate an
   untracked probe in `.lake/abi-scratch/`:

   ```lean
   import <frozen theorem module>
   example : type_of% @<frozen export> := @<provider export>
   ```

   Check that the provider uses the graph predecessors of the root rather than a shortcut through another frozen
   theorem, and that it imports no frozen theorem.
5. **Hygiene:**
   - `#print axioms` of every package result: only `propext`, `Classical.choice` and `Quot.sound`. Use a probe file.
   - no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `set_option maxHeartbeats` or other overrides;
   - no file over 1500 lines; every file a module;
   - `sh scripts/lint_sources.sh` passes;
   - frozen files and `manifest/` are untouched (`git diff main...HEAD -- KAM/Frozen manifest` is empty).
6. **Blueprint fidelity of proofs.** You need not certify that the proof mirrors the blueprint. Do flag any place
   where the Lean proof relies on a fact that contradicts the blueprint, or reveals that a blueprint statement is
   false or mis-stated (cite file and line).

## Rules
- Edit nothing in the repository except your report. Probe files go in `.lake/abi-scratch/`; delete them afterwards.
- No state-changing git.
- At most one `lake build` or `lake env lean` at a time, with `nice -n 5`.
- The owner's Lean hard rules, for awareness:
  1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override).
  2. No Lean file may exceed 1500 lines of code.

## Output
Write `docs/campaign/audits/<PKG>-audit-1.md` in your working directory (create the folder) with:
- an overall verdict: PASS, PASS WITH NOTES, or FAIL;
- a table with one row per node: node, Lean declaration, verdict, and the reason or note;
- the definition classification;
- the hygiene results, with the exact commands and their output;
- for the provider, the exact-type probe result;
- findings with severity (blocking, major or minor), evidence, and a proposed fix.
