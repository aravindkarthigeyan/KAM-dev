# Global root-closure review brief (track N dependency graph)

You are the fresh, independent global reviewer (`sol-global-N`) of the source dependency graph of track N of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract, review or repair any slice. Try to
find a global modelling error.

## Read
- `docs/graph/N/SPEC.md`: roots, anchors, packages and section data, imports, conventions, node threshold,
  reachability, edge policy and rulings. It is binding.
- The assembled graph `docs/graph/N/DEPGRAPH.md` and the coverage manifest `docs/graph/N/DEPGRAPH_COVERAGE.md`.
- The full corpus `blueprint-N/parts/p0-conventions.tex` … `p11c-partial-stability.tex` (fourteen files).
- The statements of the imported nodes, at their locators in `blueprint/parts/` (track K), `blueprint-I/parts/` and
  `blueprint-P/parts/`. The reviewed track-K graph `docs/graph/K/DEPGRAPH.md` is background for the K imports.
- The manifest `manifest/frozen-anchors.json` (identity fields) and the frozen declaration files
  `KAM/Frozen/Nekhoroshev/Defs/*.lean`, `KAM/Frozen/Nekhoroshev/Theorems/*.lean`, `KAM/Frozen/Defs/*.lean` and
  `KAM/Frozen/Planetary/Defs/{Phase,Fast,Slow,FastShift,DegenerateHamiltonian}.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, providers, proof bodies or status. Do not
  use the manifest's state fields.
- The slice reviews in `docs/graph/N/reviews/` are background only. Do not take their verdicts on trust.

## Do
1. **Roots.** For each of the four roots, `bpN:p0:head`, `bpN:p0:zero`, `bpN:p0:qcthm` and `bpN:p0:partial`:
   - Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION` and `CONSTANT_SCOPE` directly from
     Part 0 and the frozen theorem file. Compare all four fields with the node.
   - Check that the anchor identity fields match the manifest.
   - Trace the root backward through its whole closure.
   - **N-HEAD-C:** n ≥ 3; C, T, c, ε₀ depend only on (n, R, s, M, m, M_ℂ, ω_min) and precede (h, f, ε, θ₀, I₀);
     Cε₀^{1/(2n)} ≤ R/4; 0 < ε ≤ ε₀; (H3) on B(0,R) and (H4)–(H5) on B_s(R); τ = T exp(cε^{−1/(2n)}); uniqueness (d)
     for every L ∈ [0, τ] and every y without confinement; no dependence on the bound A of `IsAnalyticIntegrable`(iii);
     the exceptional branch of Pöschel's theorem excluded through ω_min.
   - **N-ZERO, N-QC:** every n (n = 0 included); ε = 0; the solution on all of ℝ; bijectivity of DΨ(I, λ) for λ > 0
     with the stated formula, no uniform radius.
   - **N-PARTIAL-CONVEX:** n ≥ 2, k ≥ 1; the closed max-norm collar; μ₀ after (n, k; G, G′, D, ρ, g, m, M_ℂ, h) and
     before (μ, P, C, z), then t; |P| ≤ 1 and H_μ = Re h(fast 𝖨) + μ Re P(cx z) (the frozen `degenerateHamiltonian`);
     slow confinement tested on [0, t] only; initial erosion used only as fast(z(0)₂) ∈ G; drift ≤ ½μ^{b_n} up to
     min(C, μ^{−1}exp(μ^{−a_n})); the 2π-periodic fast angles converted once (Θ); the sign σ and the empty-G branch.
2. **Global consistency**, across slice boundaries:
   - statement strength;
   - quantifier order;
   - carriers;
   - norms and normalizations, i.e. SPEC's convention watch list: period 1 versus 2π and every conversion (Part 1,
     Remarks `bpN:p4:dictionary`, `bpN:p9:dictionary`, Part 11a's Θ); max norms versus Euclidean norms (Part 8
     Euclidean, Parts 7 and 9–11 where stated); the complex Hessian norm; the weight e^{2π|k|₁s}; K_a versus K_g;
     angles-first versus positions-first;
   - constant dependence (the Part 1 dictionary, Part 9's (A, ε₀, R₀, K), Part 10's choice, Part 11's constants and μ₀);
   - the external boundary: the track-N externals of SPEC (aliases excluded), the imported nodes, and nothing else;
   - every `SOURCE_GAP` node;
   - every route node.
3. **Conditional premises at every application of:**
   - Pöschel's Theorem 1 (`bpN:p9:thm1`) in Part 10 ((S1)–(S4) via `bpN:p10:hypotheses-check`, constants fixed before
     h, f, ε);
   - the Normal Form Lemma and the Iterative Lemma (Part 6) in Parts 7, 9 and (extended) 11b–c ((N1), (N2), KLr ≤ α/p,
     the smallness conditions);
   - the stability results of Part 7 in Part 9 and, extended, in Part 11c ((RS), convexity, the transfer hypotheses
     (T1)–(T3));
   - the covering of Part 8 in Parts 9 and 11c (b = 1/8 versus b_c = 1/32);
   - the ODE layer of Part 3 in Parts 7, 10 and 11 (C¹ field on an open W, interval J, periodicity, reduction through
     `bpN:p3:ham-reduction`);
   - the imported K results (strip functions, holomorphy, reality on reals);
   - every package (SPEC table): track K's and track I's global reviews found missing package edges.

   Each premise must be supplied by an edge or a step at the consumer.
4. **Cross-part edges.** Check Part 1's use by Parts 2, 7, 9, 10; Part 3's use by Parts 5, 7, 10, 11; Parts 4–6's use
   by Parts 7, 9, 11; Part 8's use by Parts 9 and 11c; Part 9's use by Part 10; every edge into a frozen definition;
   every edge into an imported node. Look for missing, reversed, merely transitive or pointer-only edges, and for EDGE
   locators that do not point at the consumer's use.
5. **Imports.**
   - Run `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/N/packets --slice N-imports --self-track N`.
   - Every imported node must be referenced. Every K import must name a node of `docs/graph/K/DEPGRAPH.md`.
   - Every I or P import must be flagged as pending until that track's graph exists, and must name its future anchor
     node.
   - Compare each import's source fields with its statement in the owning blueprint.
6. **Coverage and reachability.**
   - Every proof paragraph that contributes a substantive obligation appears in the graph or is excluded with a valid
     reason. This includes the unlabelled prose items and the section-data paragraphs.
   - The results excluded as "outside every root closure" (SPEC §Reachability and the rulings: `bpN:p3:gen-barrier`,
     `gen-invariant`, `newton-reduction`, …) must really be unused by every root's proof.
7. Check that every root is an author-frozen anchor, and that every non-anchor (including every imported node) has
   `FROZEN_*: -`.

## Output
Write `docs/graph/N/reviews/GLOBAL-review.md` with:
- a root-by-root verdict (PASS or FAIL), with the four reconstructed source fields per root;
- the global findings, each with a severity (blocking, major or minor), evidence (file and line), and a complete
  replacement node block or EDGE line in a fenced block where a record must change;
- an unreachable-node or coverage finding list (or "none");
- suspected blueprint defects (location, quoted text, why);
- the final list of unresolved questions (or "none").

Edit nothing else. Run no state-changing git and no Lean. Keep working in the same turn until done. Then print
`READY graph-global-N` on a line of its own.

The repository's Lean hard rules, for awareness (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
   a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
   elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.
