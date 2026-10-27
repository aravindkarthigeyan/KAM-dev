# Track I dependency graph: extraction specification

Fixed before extraction (skill `build-proof-dependency-graph`, Phase 1). It follows track K's specification
(`docs/graph/K/SPEC.md`); this file states only what track I needs, and is binding for extractors and reviewers.
Changes are recorded at the end with a date and reason.

## Roots and anchors
- **Roots:** the four frozen theorem anchors of track I (D20), as node IDs:

  | Node | Lean export | Manifest anchor | Proved in |
  |---|---|---|---|
  | `bpI:p0:g1` | `KAM.Iso.isoenergetic_kam` | `iso.isoenergetic_kam.v1` | Part 2, `bpI:p2:g1` (carries the `\frozen` tag) |
  | `bpI:p0:head` | `KAM.Iso.all_time_confinement` | `iso.all_time_confinement.v1` | Part 5, proof at L180–185 |
  | `bpI:p0:kepler` | `KAM.Iso.kepler_bordered_det` | `iso.kepler_bordered_det.v1` | Part 6, `bpI:p6:kepler` |
  | `bpI:p0:r3bp` | `KAM.Iso.restricted_near_circular` | `iso.restricted_near_circular.v1` | Part 8, proof at L214–232 |

- **Frozen definitions (30 anchors, `KIND: definition`).** One node per declaration, ID `<Part 0 label>#<Lean name>` in
  ASCII (`ℂ` → `C`, subscript digits → digits):
  - the 15 track-I definitions of `KAM/Frozen/Iso/Defs/` (manifest IDs `iso.*`): `bpI:p0:extended#energyAverage`,
    `#extendedTorsion`, `#extendedTorsionAverage`; `bpI:p0:bordered#borderedHessian`;
    `bpI:p0:hamsol#IsHamiltonianSolutionOn`; `bpI:p0:primaries#radiusSq`, `#radius`, `#primary1`, `#primary2`,
    `#CollisionFree`; `bpI:p0:restricted#restrictedHamiltonian`, `#restrictedVectorField`, `#IsRestrictedSolutionOn`;
    `bpI:p0:nearcircular#NearCircular`; `bpI:p0:keplerborder#keplerBorder`;
  - the 15 track-K definitions that Part 0 transcribes (manifest IDs `kam.*`): `bpI:p0:domains#complexStrip`,
    `#actionNbhd`; `bpI:p0:diophantine#IsDiophantine`; `bpI:p0:hamiltonian#hamiltonianVectorField`,
    `#hamiltonianVectorFieldC`; `bpI:p0:realham#realHamiltonian`, `#frequencyMap`; `bpI:p0:stripdata#IsPrimaryOnStrip`,
    `#IsRealOnReals`, `#dotC`, `#omegaZero`, `#invarianceError`, `#gramMatrix`, `#normalFrame`, `#torsion`.

  These are anchors of *this* graph, bound to the same manifest entries as track K's anchor nodes. A `\Kref` to one of
  K's Part 0 definition labels resolves to the track-I anchor, never to an imported node. The track-K frozen definitions
  that Part 0 does not transcribe (`fundamentalDomain`, `symplecticForm`, `IsInvariantLagrangianTorus`, `kamCover`,
  `torsionAverage`) are not nodes of this graph.
- **Manifest.** Anchor identity (file, export, anchor ID, contract ID/version, ABI hash) is copied from
  `manifest/frozen-anchors.json` and bound by the linter. It is never edited in the graph. All 34 anchors (30
  definitions, 4 theorems) belong to slice `I-p0`.

## Corpus
- The eight files `blueprint-I/parts/p{0,1,2,3,5,6,7,8}-*.tex` (there is no Part 4), pinned in
  `docs/graph/I/CORPUS.sha256`. The pin is the blueprint after the round-3 confirmation `fe7e4a5`
  (`blueprint-I/reviews/round3-confirm.md`: no blocking or major defect).
- Imported nodes (below) point into `blueprint/parts/{p0,p1,p2,p4}-*.tex` (track K, unchanged since K's graph pin)
  and `blueprint-N/parts/{p2-qc-zero,p3-hamiltonian-ode}.tex` (track N). These files are pinned in
  `docs/graph/I/IMPORTS.sha256`. They are not part of the corpus: nothing in them is extracted here.
- Any later change to a pinned file is recorded below with the new hashes. Locators are then remapped mechanically
  (`inp_depgraph_remap_locators.py`), and the affected slices are re-checked.
- Pinned papers (HL19, Chi05, CC03, Pos01, …) are provenance only. The blueprint proves everything it uses except the
  external inputs and the imported results below.

## Standing assumptions and hypothesis packages
**STANDING_ASSUMPTIONS: none.** Track I has no global standing assumption. Its part-level packages are local hypothesis
packages, as in track K. Each is a `definition` node: the pre-extraction already turned `assumption` environments into
`KIND: definition`.

**Warning to extractors: link these packages.** Track K's extractors under-linked such packages. Track I's packages are
mostly used *without* a `\ref` (`bpI:p2:standing` is `\ref`'d once; `bpI:p2:admissible`, `bpI:p3:patch`,
`bpI:p5:patch-const`, `bpI:p6:kep-ham`, `bpI:p7:shift-def` and `bpI:p2:schedule` never by their own label). So the
mechanical candidates miss most of these edges.

The rule: a node depends on a package node when its statement assumes the package or its proof uses an object, symbol
or constant that the package defines. This holds even when the text names the package only implicitly ("standing
data", "the constants", a symbol such as `F_j`, `ĉ_*`, `W_B`, `Θ`, `𝔪`). Reviewers fail a node that uses package
data without the edge.

| Package node | Scope | What it fixes |
|---|---|---|
| `bpI:p1:setting` | every result of Part 1 | n, τ ≥ 0, M; D, H with (I1)–(I4); γ, ω ∈ Dio; r, K on T_r with K(T_r) ⊂ D; det G_K ≠ 0 where the frame is used |
| `bpI:p2:standing` | every result of Part 2 | n, τ ≥ n−1, M, σ_K, σ_B, σ_T, σ_ω, ν, ω*; D, H with (I1)–(I4); E₀, γ, ω* ∈ Dio |
| `bpI:p2:constants` | every Part 2 estimate | the ĉ/Ĉ constants, ĉ_*, δ₀, in order, on top of K's `bp:p2:constants` |
| `bpI:p2:admissible` | Part 2 results about (r,β,ε,s)-admissible K | (B1)–(B7) and the frequency bound (`bpI:p2:freq`) |
| `bpI:p2:schedule` | the induction and limit | the step schedule |
| `bpI:p3:setting` | every result of Parts 3 and 5 (Part 5 L29: "Standing data: Assumption `bpI:p3:setting`") | the I-HEAD data with n = 2, τ = 2, B′ ≠ ∅; f, ε; H = h + f; U |
| `bpI:p3:constants` | Parts 3 and 5 | s, δ_*, μ, ρ, ρ_∞, 𝔇, 𝔇′, M_h, c̄, F_j, M, … |
| `bpI:p3:coordinates`, `bpI:p3:patch` ((P1)–(P3)), `bpI:p3:patch-rays`, `bpI:p3:uniform` | Parts 3 and 5 | charts, patches, rays, uniform constants |
| `bpI:p5:patch-const`, `bpI:p5:eps0` | Part 5 | patch constants and ε₀ |
| `bpI:p6:kep-ham`, `bpI:p6:conversion-map` | Parts 6–8 | h_{κ,Ω} and the 2π conversion |
| `bpI:p7:elements`, `bpI:p7:orbit-maps`, `bpI:p7:shift-def` | Parts 7–8 | Kepler elements, orbit maps, the shift potential |
| `bpI:p8:A`, `bpI:p8:safe`, `bpI:p8:constants` | Part 8 | action region, safe region, μ₀, d, R |

**Imported track-K packages.** Track I applies track-K results that assume K's own packages:
- `K:bp:p2:standing`, the standing data of K's Part 2;
- `K:bp:p2:admissible`, (A1)–(A6), cited as `\Kref{bp:p2:A2}` … `A6`;
- `K:bp:p4:data`, the setting of K's Part 4.

**Bridges.** The blueprint identifies each K package with a track-I package in unlabelled prose:
- Part 1 L39–46: `bpI:p1:setting` "is exactly Assumption `bp:p2:standing` with h := H, 𝔅 := D";
- Part 2 L44–48: `bpI:p2:standing` contains K's standing data;
- Part 3 L48–50: K's Part 4 data is `bpI:p3:setting` without the Kolmogorov and boundary-layer hypotheses.

(Part 5 L29–31 is not a K bridge. It declares Part 3's packages standing for Part 5; map its prose item to the Part 5
consumers of those packages.)

Model each bridge as a step node with ID `<package>#k-bridge`:
- `bpI:p1:setting#k-bridge`, `bpI:p2:standing#k-bridge`, `bpI:p3:setting#k-bridge`;
- STATEMENT_SOURCE and PROOF_SOURCE are the prose locator;
- DEPS: the I package and the K package (and `K:bp:p2:objects` / `K:bp:p2:frozen-agreement` where the paragraph identifies
  K's objects with the frozen ones);
- each I node that applies a K result assuming K's package depends on the bridge step, with the EDGE at the application.

This is the "conditional premise discharged at the consumer" rule: the I package supplies K's premises *through* the
bridge. If a bridge paragraph adds no premise check (pure notation), map its prose coverage item to the consumers
instead, and give a reason.

**Section data.** Several subsections open with unlabelled prose that fixes data and states facts later proofs use:
- Part 5: L64–66 (Φ, V, Q, Ω open, 𝒦 compact), L90 (the fixed f, ε, I₀, E and the tori k_±, u_±, v_±), L131–135
  (μ_±, G, 𝒱);
- Part 7: L48–49 (W_μ open), L325–335 (𝒦, e_±, m_L, m_G, r_min, ρ_max, 𝒰(δ));
- Part 8: L132 (ρ_*).

If such a paragraph states a fact (openness, compactness, positivity) that a proof consumes, make it a `definition`
node `<section label>#data`, e.g. `bpI:p5:sec-sep#data` or `bpI:p7:sec-complex#data`, and link its consumers. Pure
notation is mapped to the consumers in the coverage. Every such paragraph is already a `prose-L…` coverage item with
DISPOSITION TODO.

## External inputs and imported results (EXTERNAL_POLICY)
- **Track-I externals.** The labelled items of the parts' "External facts" lists, `KIND: external`, `LEAN_STATUS:
  EXTERNAL`: `bpI:p1:ext-chain`, `-real-direction`; `bpI:p3:ext-ift`, `-compact`, `-lebesgue`; `bpI:p5:ext-banach`,
  `-top`, `-ift`; `bpI:p7:x-hol`, `-weier`, `-param`, `-schwarz`, `-ift`, `-forms`, `-change`, `-banach`;
  `bpI:p8:x-topo`, `-norm`, `-cont` (19 items).
  - **Alias rule.** An item that only restates another node (another external, or a result proved elsewhere) is
    `EXCLUDED` in the coverage with the reason "alias of …". Its consumers depend on the cited node directly. It has no
    node of its own. The cases are:
    - `bpI:p5:ext-banach` and `bpI:p7:x-banach` (= `K:bp:p1:ext-banach` and `K:bp:p1:ext-mvt`);
    - `bpI:p5:ext-ift` (= `bpI:p3:ext-ift`);
    - `bpI:p1:ext-real-direction`, which points to its proof in K (`K:step:p1:hr-derivative` of `K:bp:p1:hamiltonian-real`).
      The extractor decides whether the item is exactly that step's conclusion. If yes, it is an alias of
      `K:step:p1:hr-derivative`. If not, it stays an external, with a NOTE naming the K step.
- **Imported nodes.** Every result of another track's blueprint that the text cites (`\Kref{…}`, `\Nref{…}`) is an
  IMPORTED node. They are not proved in track I's corpus.
  - **ID:** `K:<node>` or `N:<node>`.
  - **Fields:** `KIND: external`, `LEAN_STATUS: EXTERNAL`, `PROOF_SOURCE: -`, `DEPS: -`.
  - **STATEMENT_SOURCE:** its locator in the owning blueprint.
  - **NOTE:** `IMPORTED: proved in the track-K (resp. N) graph, node <label>; shared Lean provider` (for K's own
    externals, `IMPORTED: external input of the track-K graph …`).
  - **Source fields:** copied from track K's reviewed graph (`docs/graph/K/DEPGRAPH.md`) for K, and written by the
    writer from `blueprint-N` for N.
  - **Owning node.** `<node>` is the owning graph's node. A label that is not a K graph node resolves through K's
    coverage manifest; for example the item labels `bp:p2:A2`–`A6` resolve to `K:bp:p2:admissible`.
  - **Not imported:** section labels such as `bp:p0:conventions`, and wildcards such as `\Kref{bp:p1:*}`.
  - **Ownership.** The imported nodes form the packet `I-imports`. It is owned by the writer and is not extracted.
    `inp_depgraph_imports.py` lists the imports that are missing, unreferenced or absent from the owning graph. It adds
    imports (`--add`) and prunes unreferenced ones (`--prune`).
  - **An import is valid only if the owning graph keeps the node.**
    - `K:bp:p2:constants-register` is EXCLUDED in K's graph. It is cited only in a `\source` of `bpI:p2:constants`, so
      the edge must go and the import is pruned.
    - The N imports are pending until track N's graph exists. `N:bpN:p3:ham-reduction` (track-I predicate) and
      `N:bpN:p3:newton-reduction` (Newtonian/restricted predicates) are at risk: they may lie outside every track-N
      root closure. If track N's graph excludes them, track I owns them as its own nodes, with locators in
      `blueprint-N`.
- **`\Iref` in this blueprint** (`\Iref{bpI:p7:…}`, `\Iref{bpI:p8:…}` in the Part 7/8 introductions) is an internal
  reference. Those occurrences only note which results track P cites. They are not uses.
- **Other gaps.** A proof that uses a fact which is neither proved in the blueprint, nor a track-I external, nor an
  imported result gets a step node whose NOTE begins `SOURCE_GAP:`. Never a silent edge, and never an additional
  external or import without a recorded SPEC revision. The five `\sourcegap` notes (Part 1 L401, Part 3 L28, Part 5
  L23, Part 7 L14, L113) record gaps *in the pinned papers* that the blueprint itself fills. Map each to the node(s)
  supplying the bridge, unless the blueprint really leaves the gap open.

## Conventions to watch (the global reviewer checks these across slices)
- **Periodicity:** 1-periodic in each real angle; averages over [0,1]^n (volume one). Delaunay angles are
  2π-periodic. Part 6's conversion map (`bpI:p6:conversion-map`, `bpI:p6:conversion`) passes to period one: track
  every factor 2π.
- **Norms:**
  - max norm on ℝ^m, ℂ^m and on products (Part 0), with the induced operator norms;
  - a row-sum bound is written |M| ≤ c; in (I7)–(I8) it is the max-norm operator norm on ℂ^n, ℂ^{n+1};
  - `rad` (Euclidean length) only in I-R3BP and Part 7–8 planar geometry; |·|₂ is not the ambient norm.
- **Phase-space order:** angles first, (θ, I), with X_H = (∂_I H, −∂_θ H) in I-G1 and I-HEAD. Position first, z = (q, p),
  in the restricted problem. Part 7's 𝕁 is *minus* the frozen `omegaZero`.
- **The isoenergetic ray:** the frequency is ω = sω* with 1 < s < σ_ω. The Diophantine condition is on ω*, and sω*
  is (γ, τ)-Diophantine for s ≥ 1 with the same γ (`bpI:p1:ray`, `bpI:p2:ray`).
- **ν endpoint margin:** ν ≤ (s−1)|ω*| and ν ≤ (σ_ω−s)|ω*|. This is the distance to the two endpoints of the segment,
  relative to the line ℝω* (Remark `bpI:p0:g1-remarks`(b)). It is carried as a margin decreasing from ν to ≥ ν/2 in
  the iteration.
- **Energy row:** the last row of the extended torsion is DH(K)N, even off invariance. It equals ω^⊤ only on an
  invariant torus (`bpI:p1:last-row`). The last column is (ω, 0).
- **I-G1:**
  - **Constants order:** C₁, C₂, C₃ are chosen after (n, τ, ρ, ρ_∞, M, σ_K, σ_B, σ_T, μ, γ̄, σ_ω, ν, ω*) and before
    (D, H, K, s, γ, e, E₀). `bpI:p2:g1` claims dependence on (n, τ, ρ, ρ_∞, M, σ_K, σ_B, σ_T, μ, γ̄, ν) only. Record
    exactly what each statement says.
  - **Strictness:** the strict inequalities of HL19 (3.16) become ≤ (deviation D-I-G1-UNIFORM).
  - **(O3):** the energy conclusion is pointwise.
  - **τ:** τ ≥ n−1 in I-G1, τ ≥ 0 in Part 1, τ = 2 with n = 2 in Parts 3 and 5.
- **I-HEAD:**
  - ε = 0 is allowed: 0 ≤ ε < ε₀, and with B′ = ∅ the statement is vacuous.
  - ε₀ depends on (B, s₀, r₀, h, B′, η) only.
  - Uniqueness holds among all solutions whose actions stay in B, on every interval (a, b) ∋ 0.
- **I-R3BP:**
  - 0 < μ₀ ≤ 1/2, and μ ∈ [0, μ₀) includes μ = 0;
  - μ₀, d, R depend on a_±, e_± only;
  - the region 𝒩 is μ-independent, referenced to μ = 0;
  - collision exclusion holds for all times (distances ≥ d).
- **HL19 signs:** 𝔏_ω = −∂_ω and 𝔕_ω = −ℛ (`bpI:p1:signs`).
- **Constants:** record every constant's dependence list exactly as stated, e.g. "depends only on (n, τ, M, σ_K,
  σ_B, σ_T)".
- **Lean totality:** `bpI:p0:totality` (T1)–(T6) and the per-part totality remarks explain how frozen definitions behave
  off their domain. They are not hypotheses. A remark is a node only if a proof consumes a fact it states.

## Node threshold
As in track K:
- every labelled result environment, every `\proofstep` and every labelled external item is a node, unless it is
  excluded with a reason;
- a further step node, ID `<parent>#<slug>`, is added only for an unmarked substantive obligation:
  - a nontrivial estimate or application;
  - a construction;
  - a case split;
  - a witness or parameter choice;
  - a quantifier closure;
  - a carrier change;
  - a reused intermediate claim;
- no nodes for routine algebra.

**Remarks.** Administrative remarks are `EXCLUDED`: deviations, errata and doubts lists, provenance, "use" and
"outputs" summaries, Lean-totality notes that no proof consumes, "what Part X does with this". The pre-extraction made
every remark a `claim` node; delete those that no proof consumes, and exclude their coverage items.

**Labels inside a result.** Equation and item labels map to their enclosing node in the coverage: `bpI:p2:B1`–`B7`,
`bpI:p2:freq`, `bpI:p3:P1`–`P3`, `bpI:p3:T1`–`T7`. Refine one into its own node only if consumers use it
independently and that matters for the topology.

**Reachability.** Every graph node must feed at least one root. A labelled result or step that no root's proof
consumes is `EXCLUDED` with the reason "outside every root closure of track I". Candidates found by the dry run:
- the Kepler fundamentals that Part 7 owns for track P (`bpI:p7:means`, `bpI:p7:scaling`, `bpI:p7:circular`,
  `bpI:p7:newton` and their steps);
- `bpI:p8:min-distance` (N-body configurations, for track P).

Confirm each against the text before excluding it. Track P's graph must then own any such result itself, rather than
import it from track I.

## Edges
- Direct uses only, conjunctive, `consumer -> prerequisite`. Every edge has one `EDGE:` line locating the use in the
  consumer. Use `¦` for absolute-value bars inside an EDGE rationale (`|` is the field separator).
- **Not edges:**
  - forward pointers;
  - comparisons;
  - provenance (`\source{…}`; the pre-extraction tags these candidates "in \source: provenance unless consumed");
  - mentions of a hypothesis being checked;
  - "replaces"/"does not apply" references. Examples: `bpI:p2:newton-open` "Why `\Kref{bp:p2:newton-error}` does not
    apply"; Part 1 L509–515 "without `\Kref{bp:p2:A5}`".
- **Statement references dropped.** The pre-extraction dropped references to an anchor from the parts that prove it or
  set it up (`--proved-in`):
  - `bpI:p0:g1` from Part 2;
  - `bpI:p0:kepler` from Part 6;
  - `bpI:p0:head` from Parts 3 and 5;
  - `bpI:p0:r3bp` from Parts 7 and 8.

  Genuine uses elsewhere are kept: Part 3 applies I-G1 (`bpI:p3:apply`), Part 8 applies I-HEAD
  (`stepI:p8:pf-head`). Part 7's references to I-HEAD in `bpI:p7:period-one` and `bpI:p7:nondeg` check that I-HEAD's
  hypotheses hold. They are not uses.
- **Candidate cycles found by the pre-extraction.** All of them come from remarks or forward pointers, and must be gone
  after extraction:
  - `extended-basic` ↔ `totality`;
  - `border-solve` → `signs` → `reduced` → `border-solve`;
  - `last-row` ↔ `errata`;
  - `bpI:p2:torsion` → `iteration` → … → `torsion`;
  - `bpI:p2:g1` → `constants` → `register` → `g1`;
  - `bpI:p3:consumption` ↔ `bpI:p5:p3-gap`.
- **Alternatives** ("alternatively …") become `KIND: route` nodes owned through `ROUTE_FOR`. `bpI:p7:ke-ift`
  ("Alternative route") is a route only if the text presents it as sufficient. It says that the contraction argument is
  what the uniform bounds need.

## Roles
- **Writer:** `claude-suborch-INP` (the I/N/P sub-orchestrator, Opus 5.5, D23). It is the only editor of
  `DEPGRAPH.md` and `DEPGRAPH_COVERAGE.md`, which it assembles from the slice packets with `inp_depgraph_assemble.py`.
  It owns the `I-imports` packet.
- **Extractors:** Sonnet agents, one per slice, tagged `sonnet-extract-<slice>`. Each edits only its own two packet
  files, `docs/graph/I/packets/<slice>.{nodes,coverage}.md`.
- **Slice reviewers:** GPT-6.1-Sol (Codex, tmux, medium effort, default tier; D21, D24), tagged `sol-review-<slice>`,
  distinct from the extractors.
  - `I-imports` is reviewed by a reviewer that is not the writer. It checks the copied source fields against the owning
    blueprint, not against K's graph.
  - A node rewritten by a reviewer gets a *different* reviewer (delta review), as in track K.
  - Reviewers end with a whole line `READY <marker>`. Wait for that whole line, not a substring of the echoed prompt.
- **Global reviewer:** a fresh GPT-6.1-Sol session, tagged `sol-global-I`, distinct from all of the above.

## Slices
Line-addressable, aligned to statement/proof units, recorded in `docs/graph/I/packets/slices.json`. Counts are from
the pre-extraction.

| Slice | Source range | Nodes | Coverage items |
|---|---|---|---|
| `I-p0` | all of Part 0 (the 34 anchors and the Part 0 remarks) | 38 | 62 |
| `I-p1` | all of Part 1 | 59 | 81 |
| `I-p2` | all of Part 2 (includes `bpI:p2:g1`, the proof of I-G1) | 58 | 79 |
| `I-p3` | all of Part 3 | 61 | 79 |
| `I-p5` | all of Part 5 (includes the steps of the I-HEAD proof) | 43 | 59 |
| `I-p67a` | all of Part 6 (includes `bpI:p6:kepler`) and Part 7 L1–259 (up to the Delaunay chart) | 70 | 101 |
| `I-p7b` | Part 7 L260–end (near-circular preimage, complex domain, exact Hamiltonian, transfer, nondegeneracy) | 43 | 58 |
| `I-p8` | all of Part 8 (includes the steps of the I-R3BP proof) | 40 | 58 |
| `I-imports` | imported nodes `K:*` (61) and `N:*` (11); writer-owned, not extracted | 72 | 72 |

- A node belongs to the slice containing the first line of its STATEMENT_SOURCE. The anchors belong to `I-p0`.
- The anchors' proof steps belong to the slice containing them:
  - I-HEAD's (`stepI:p5:hd-*`) to `I-p5`;
  - I-R3BP's (`stepI:p8:pf-*`) to `I-p8`.
- Coverage items follow their SOURCE line.

## Change log
- 2026-10-27: initial specification (Phases 1–2: corpus pin, pre-extraction, slice packets, dry run).

## Sub-orchestrator rulings (2026-10-27, before extraction)
- **Reachability exclusions and cross-graph ownership.** A track-I blueprint result that feeds no track-I root (e.g.
  `bpI:p7:means`, `scaling`, `circular`, `newton`, `bpI:p8:min-distance`, if confirmed during extraction) is EXCLUDED
  here with reason "outside every root closure; cited by track P". Track P's graph then OWNS it: P's corpus is
  extended to the cited blueprint-I labels, which become ordinary P nodes (not imports).
- Symmetrically, an N result that track I uses but that track N's graph excludes (candidates:
  `N:bpN:p3:ham-reduction`, `N:bpN:p3:newton-reduction`) is converted from an import into an ordinary track-I node
  whose corpus is the blueprint-N label. The writer decides this when N's graph is published; until then the
  imports stay with `NOTE: IMPORTED (pending N graph)`.
- `bpI:p1:ext-real-direction`: the extractor of I-p1 decides between an alias of `K:step:p1:hr-derivative` and a
  track-I external; either is acceptable if recorded.
- Imports cited only in `\source{}` or in prose that no node uses (e.g. `K:bp:p2:constants-register`) are pruned by
  `inp_depgraph_imports.py --prune` after extraction.

- **2026-10-27, after the track-N graph SPEC** (`docs/graph/N/SPEC.md`): three track-N results that track I uses feed no
  track-N root and are EXCLUDED from N's graph: `bpN:p3:gen-barrier` (with `stepN:p3:barrier-fwd`, `barrier-bwd`),
  `bpN:p3:gen-invariant`, `bpN:p3:newton-reduction` (with `stepN:p3:nr-smooth`, `nr-pair`). Track I's graph OWNS them as
  ordinary nodes (IDs = their blueprint-N labels, corpus `blueprint-N/parts/p3-hamiltonian-ode.tex`, pinned in
  CORPUS.sha256), in the writer-created slice `I-nown`; the `N:` imports of them are removed and their consumers'
  edges retargeted. Also: K's Part 1 edit `aec5b8b` (strip widths positive) moved 40 import locators, remapped
  mechanically; IMPORTS.sha256 re-pinned.
