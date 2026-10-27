# Global root-closure review brief (track K dependency graph)

You are the fresh, independent global reviewer (`sol-global-K`) of the source dependency graph of the KAM
formalization (repo `/root/code/KAM`). You did not extract, review or repair any slice. Try to find a global
modelling error.

## Read
- `docs/graph/K/SPEC.md`: roots, anchors, conventions, node threshold, reachability and edge policy. It is binding.
- The assembled graph `docs/graph/K/DEPGRAPH.md` and the coverage manifest `docs/graph/K/DEPGRAPH_COVERAGE.md`.
- The full corpus `blueprint/parts/p0-conventions.tex` … `p4-measure.tex`.
- The manifest `manifest/frozen-anchors.json` (identity fields) and the frozen declaration files
  `KAM/Frozen/Defs/*.lean` and `KAM/Frozen/Theorems/*.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, providers, proof bodies or status.
- The slice reviews in `docs/graph/K/reviews/` are background only. Do not take their verdicts on trust.

## Do
1. **Roots.** For each of the five roots, `bp:p0:head`, `bp:p0:headq`, `bp:p0:g1`, `bp:p0:g2` and `bp:p0:g3`:
   - Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION` and `CONSTANT_SCOPE` directly from
     Part 0 and the frozen theorem file. Compare all four fields with the node.
   - Check that the anchor identity fields match the manifest.
   - Trace the root backward through its whole closure.
2. **Global consistency**, across slice boundaries:
   - statement strength;
   - quantifier order;
   - carriers;
   - norms and normalizations, i.e. SPEC's convention watch list;
   - constant dependence;
   - the uniformity of G1 in γ ≤ γ̄;
   - the ε^{1/4} rate of HEAD;
   - the external boundary, which is exactly (E1)–(E10);
   - the one `SOURCE_GAP`, the product Lebesgue measure in `bp:p1:lip-image-product`;
   - the two route nodes for `step:p2:avg-deriv`.
3. **Conditional premises at every application of:**
   - G1 and G2 in Part 4 (H1–H5, (SA), the tuples of `bp:p4:parameters`);
   - the Part 2 standing data;
   - (S1)–(S4) in Part 3;
   - the cohomological equation, Cauchy estimates and Neumann series wherever they are applied.

   Each premise must be supplied by an edge or a step at the consumer.
4. **Cross-part edges.** Check:
   - Part 3's use of Part 2 geometry;
   - Part 4's use of Parts 1–3;
   - every edge into a frozen definition.

   Look for missing, reversed, merely transitive or pointer-only edges, and for EDGE locators that do not point at
   the consumer's use.
5. **Coverage.** Every proof paragraph that contributes a substantive obligation appears in the graph or is
   excluded with a valid reason. The excluded lemmas `cauchy-strip-2`, `mixed-difference` (Part 1) and
   `normalized-unique` must really be unused by every root's proof.
6. Check that every root is an author-frozen anchor, and that every non-anchor has `FROZEN_*: -`.

## Output
Write `docs/graph/K/reviews/GLOBAL-review.md` with:
- a root-by-root verdict (PASS or FAIL), with the four reconstructed source fields per root;
- the global findings, each with a severity (blocking, major or minor), evidence (file and line), and a complete
  replacement node block or EDGE line in a fenced block where a record must change;
- an unreachable-node or coverage finding list (or "none");
- the final list of unresolved questions (or "none").

Edit nothing else. Run no state-changing git and no Lean. Keep working in the same turn until done. Then print
`READY graph-global`.
