# Global root-closure review brief (track P dependency graph)

You are the fresh, independent global reviewer (`sol-global-P`) of the source dependency graph of track P of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract, review or repair any slice. Try to find
a global modelling error.

## Read
- `docs/graph/P/SPEC.md` (binding), the assembled graph `docs/graph/P/DEPGRAPH.md` and the coverage manifest
  `docs/graph/P/DEPGRAPH_COVERAGE.md`.
- The full corpus: the sixteen files of `blueprint-P/parts/` listed in SPEC §Corpus (Parts 11, 11a-*, 13 are out of
  scope in this graph version; P-FIXED is deferred).
- The statements of the imported nodes at their locators in `blueprint/parts/` (K), `blueprint-I/parts/` and
  `blueprint-N/parts/`; the graphs `docs/graph/{K,I,N}/DEPGRAPH.md` are background for the imports.
- The manifest `manifest/frozen-anchors.json` (identity fields) and the frozen declaration files named in the anchors'
  FROZEN_FILE fields. **Nothing else in Lean**: no implementation modules, providers, proof bodies or status; no
  manifest state fields.
- The slice reviews in `docs/graph/P/reviews/` are background only. Do not take their verdicts on trust.

## Do
1. **Roots.** For each of the six roots, `bpP:p0:pg`, `bpP:p0:planar`, `bpP:p0:amd`, `bpP:p0:expsafe`,
   `bpP:p14:sb-safety`, `bpP:p14:sb-cited`:
   - reconstruct the four source fields from the transcription (Part 0; Part 14b for P-SECULAR-BOX) and the frozen file,
     and compare them with the node; check the anchor identity against the manifest; trace the closure backward.
   - **P-G:** a, b ≥ 1; all data and (H1)–(H6) first; r_*, C, c depend on all data, not on r, μ; the three conditions
     on (r, μ); C both frequency bound and measure constant; the strict upper measure bound (CP11 states it without
     proof: Part 5's strictness step); the uniform O(ε⁵) remainder (CP10 (60), Part 5).
   - **P-PLANAR:** (G, m₀, m, a, η), then (μ₀, d, D), then μ, then S; 0 < a₀ < a₁ with no separation; 0 < meas S < ∞;
     applied through the frozen P-G (every hypothesis and datum checked in Part 12), Part 11b's torsion and Part 7's chart.
   - **P-AMD-CONFINEMENT / P-EXP-SAFE:** n ≥ 2; the margins of the box; the stopped bound as the only dynamical premise;
     the order (n, ℬ) → (μ_*, c, C) → (μ, z₀); T = exp(cμ^{−α_n}); the drift bound; every premise of
     N-PARTIAL-CONVEX at its application in Part 14a.
   - **P-SECULAR-BOX:** σ-range, μ > 0 without smallness, Box_σ(w₀); global existence on ℝ, uniqueness among regular
     solutions, the rational bounds of (c) for all t and F; the cited-masses specialisation.
2. **Global consistency** across slices: statement strength; quantifier order; carriers; SPEC's convention list (max
   norms vs physical lengths; positions first and fast/slow blocks; the chart dictionary; period 1 vs 2π and every
   conversion; the track-N weighted norm and widths; increasing axis order; G, m₀ general vs G = m₀ = 1; the √(2Λ)
   halving); constant dependence (Parts 3, 5, 12, 14a order-of-constants); the external boundary (track-P externals with
   aliases excluded, the imports, the P-owned I/N nodes, nothing else); every `SOURCE_GAP` node; every route node.
3. **Conditional premises at every application of:** the frozen P-G in Part 12; track N's Parts 3–6 in Parts 1–3, 5,
   11b, 14; N-PARTIAL-CONVEX in Part 14a; the two-scale KAM theorem (Part 3) in Part 5; Part 2's averaging through
   Part 3's interface; track I's Kepler results in Part 7 and collision exclusion in Part 6; the Part 6 reconstruction
   in Parts 12 and 14; every package and `#data` node (tracks K, I and N's global reviews found missing package edges).
4. **Cross-part edges.** Parts 1–4 into Part 5; Parts 6–11b into Part 12; Parts 6–7 into Part 14; Part 7–8 into 14b
   (only where a proof really uses them: 14b's consistency checks are not edges); every edge into a frozen anchor and
   into an import. Look for missing, reversed, merely transitive or pointer-only edges, and for EDGE locators that do not
   point at the consumer's use.
5. **Imports.** Run `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P`.
   Every import is referenced and names a node of its owning graph; I and N imports are marked pending until those
   graphs are published; a cited I/N result that the owning graph excludes is a P-owned node (slice `P-xown`), not an
   import. Compare each import's source fields with its statement in the owning blueprint.
6. **Coverage and reachability.** Every proof paragraph that contributes a substantive obligation appears in the graph
   or is excluded with a valid reason (including the prose and section-data items). Results excluded as outside every
   root closure, or as consumed only by the deferred P-FIXED, must really be unused by every root's proof.
7. Every root is an author-frozen anchor; every non-anchor (including every imported node) has `FROZEN_*: -`.

## Output
Write `docs/graph/P/reviews/GLOBAL-review.md` with: a root-by-root verdict (PASS or FAIL) with the four reconstructed
source fields per root; the global findings, each with a severity (blocking, major, minor), evidence (file and line) and
a complete replacement block or EDGE line in a fenced block where a record must change (one section per owning slice);
an unreachable-node or coverage finding list (or "none"); suspected blueprint defects (location, quoted text, why); the
final list of unresolved questions (or "none").

Edit nothing else. Run no state-changing git and no Lean. Keep working in the same turn until done. Then print
`READY graph-global-P` on a line of its own.

The repository's Lean hard rules, for awareness (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
   a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
   elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.
