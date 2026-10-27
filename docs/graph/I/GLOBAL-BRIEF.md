# Global root-closure review brief (track I dependency graph)

You are the fresh, independent global reviewer (`sol-global-I`) of the source dependency graph of track I of the KAM
formalization (worktree `/root/code/KAM-inp`, branch `inp`). You did not extract, review or repair any slice. Try to
find a global modelling error.

## Read
- `docs/graph/I/SPEC.md`: roots, anchors, packages and bridges, imports, conventions, node threshold, reachability and
  edge policy. It is binding.
- The assembled graph `docs/graph/I/DEPGRAPH.md` and the coverage manifest `docs/graph/I/DEPGRAPH_COVERAGE.md`.
- The full corpus `blueprint-I/parts/p0-conventions.tex` … `p8-r3bp.tex`.
- The statements of the imported nodes, at their locators in `blueprint/parts/` (track K) and `blueprint-N/parts/`
  (track N). The reviewed track-K graph `docs/graph/K/DEPGRAPH.md` is background for the K imports.
- The manifest `manifest/frozen-anchors.json` (identity fields) and the frozen declaration files
  `KAM/Frozen/Iso/Defs/*.lean`, `KAM/Frozen/Iso/Theorems/*.lean` and `KAM/Frozen/Defs/*.lean`.
- **Do not read anything else in Lean.** That means no implementation modules, providers, proof bodies or status. Do not
  use the manifest's state fields.
- The slice reviews in `docs/graph/I/reviews/` are background only. Do not take their verdicts on trust.

## Do
1. **Roots.** For each of the four roots, `bpI:p0:g1`, `bpI:p0:head`, `bpI:p0:kepler` and `bpI:p0:r3bp`:
   - Reconstruct `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION` and `CONSTANT_SCOPE` directly from
     Part 0 and the frozen theorem file. Compare all four fields with the node.
   - Check that the anchor identity fields match the manifest.
   - Trace the root backward through its whole closure.
   - **I-G1:** C₁, C₂, C₃ are chosen after (n, τ, ρ, ρ_∞, M, σ_K, σ_B, σ_T, μ, γ̄, σ_ω, ν, ω*) and before (D, H, K,
     s, γ, e, E₀). Also check (O3) pointwise and the ≤ form of the strict HL19 bounds.
   - **I-HEAD:** ε = 0 allowed; ε₀ depends only on (B, s₀, r₀, h, B′, η); uniqueness among all solutions on every
     (a, b) ∋ 0.
   - **I-KEPLER:** the value 3κΩ²/L⁴ and its sign.
   - **I-R3BP:** 0 < μ₀ ≤ 1/2; μ ∈ [0, μ₀) includes μ = 0; μ₀, d, R depend on a_±, e_± only; collision exclusion
     for all t.
2. **Global consistency**, across slice boundaries:
   - statement strength;
   - quantifier order;
   - carriers;
   - norms and normalizations, i.e. SPEC's convention watch list: max norms versus `rad`, angles-first versus
     position-first, the 2π conversion, 𝕁 = −Ω₀ in Part 7;
   - the isoenergetic ray ω = sω* and the Diophantine condition on ω*;
   - the ν endpoint margin and its decrease to ν/2;
   - the energy row DH(K)N (ω^⊤ only on invariant tori);
   - constant dependence;
   - the external boundary: the track-I externals of SPEC (aliases excluded), the imported nodes, and nothing else;
   - every `SOURCE_GAP` node;
   - every route node.
3. **Conditional premises at every application of:**
   - I-G1 in Part 3 ((I1)–(I13), per ray, constants fixed before f, ε, E, I₀);
   - I-HEAD in Part 8 (`bpI:p8:head-data`, the smallness of μ);
   - I-KEPLER through `bpI:p6:nondeg` and `bpI:p7:nondeg`;
   - the track-K results imported in Parts 1–3: `K:bp:p2:standing`, (A1)–(A6) and `K:bp:p4:data` must be supplied
     through the `#k-bridge` steps;
   - the track-N ODE results in Parts 5 and 8 (C¹ field on an open W, interval J, periodicity);
   - the Part 1/2/3 packages wherever their results are applied.

   Each premise must be supplied by an edge or a step at the consumer. Check that every node using package data
   depends on the package (SPEC table): track K's global review found missing package edges.
4. **Cross-part edges.** Check:
   - Part 2's use of Part 1;
   - Part 3's use of Parts 1, 2 and I-G1;
   - Part 5's use of Part 3;
   - Parts 7–8's use of Part 6;
   - Part 8's use of Part 7 and of I-HEAD;
   - every edge into a frozen definition;
   - every edge into an imported node.

   Look for missing, reversed, merely transitive or pointer-only edges, and for EDGE locators that do not point at the
   consumer's use.
5. **Imports.**
   - Run `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/I/packets`.
   - Every imported node must be referenced. Every K import must name a node of `docs/graph/K/DEPGRAPH.md`.
   - Every N import must be flagged as pending until track N's graph exists.
   - Compare each import's source fields with its statement in the owning blueprint.
6. **Coverage.**
   - Every proof paragraph that contributes a substantive obligation appears in the graph or is excluded with a valid
     reason. This includes the unlabelled prose items and the section-data paragraphs.
   - The results excluded as "outside every root closure of track I" (e.g. `bpI:p7:means`, `bpI:p7:scaling`,
     `bpI:p8:min-distance`) must really be unused by every root's proof.
7. Check that every root is an author-frozen anchor, and that every non-anchor (including every imported node) has
   `FROZEN_*: -`.

## Output
Write `docs/graph/I/reviews/GLOBAL-review.md` with:
- a root-by-root verdict (PASS or FAIL), with the four reconstructed source fields per root;
- the global findings, each with a severity (blocking, major or minor), evidence (file and line), and a complete
  replacement node block or EDGE line in a fenced block where a record must change;
- an unreachable-node or coverage finding list (or "none");
- suspected blueprint defects (location, quoted text, why);
- the final list of unresolved questions (or "none").

Edit nothing else. Run no state-changing git and no Lean. Keep working in the same turn until done. Then print
`READY graph-global-I` on a line of its own.
