# Track N dependency graph: extraction specification

Fixed before extraction (skill `build-proof-dependency-graph`, Phase 1). It follows track K's specification
(`docs/graph/K/SPEC.md`) and track I's (`docs/graph/I/SPEC.md`); this file states only what track N needs, and is binding
for extractors and reviewers. Changes are recorded at the end with a date and reason.

## Roots and anchors
- **Roots:** the six frozen theorem anchors of track N (three of D20, one of D25, two of D28), as node IDs:

  | Node | Lean export | Manifest anchor | Proved in |
  |---|---|---|---|
  | `bpN:p0:head` | `KAM.Nekhoroshev.quasiConvex_nekhoroshev_complexBound` | `nekhoroshev.quasiConvex_nekhoroshev_complexBound.v1` | Part 10, `bpN:p10:head` (carries the `\frozen` tag), steps `stepN:p10:hd-*` |
  | `bpN:p0:zero` | `KAM.Nekhoroshev.zero_perturbation` | `nekhoroshev.zero_perturbation.v1` | Part 2, `bpN:p2:zero` (carries the tag) |
  | `bpN:p0:qcthm` | `KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative` | `nekhoroshev.quasiConvex_isoenergetic_derivative.v1` | Part 2, `bpN:p2:qc-bij` (carries the tag) |
  | `bpN:p0:partial` | `KAM.Nekhoroshev.partialConvex_nekhoroshev` | `nekhoroshev.d25.partialConvex_nekhoroshev.v1` | Part 11c, proof L159–169 ("Proof of Theorem `bpN:p0:partial`"), steps `stepN:p11:final-*` |
  | `bpN:p0:avg-mean` | `KAM.Nekhoroshev.averaging_mean` | `nekhoroshev.d28.averaging_mean.v1` | Part 12 (`blueprint-N/parts/p12-averaging.tex`) |
  | `bpN:p0:avg-most` | `KAM.Nekhoroshev.averaging_most` | `nekhoroshev.d28.averaging_most.v1` | Part 12 |

- **Frozen definitions (28 anchors, `KIND: definition`).** One node per declaration, ID `<Part 0 label>#<Lean name>`:
  - the 11 D20 track-N definitions of `KAM/Frozen/Nekhoroshev/Defs/` (manifest IDs `nekhoroshev.*`): `bpN:p0:ball#actionBall`,
    `bpN:p0:cdomain#complexDomain`, `bpN:p0:rdomain#realActionDomain`, `bpN:p0:realpart#realPart`,
    `bpN:p0:integrable#IsAnalyticIntegrable`, `bpN:p0:pert#IsAnalyticPerturbation`, `bpN:p0:bm#HasDerivativeBounds`,
    `bpN:p0:qc#IsStrictlyQuasiConvex`, `bpN:p0:hess#HasComplexHessianBound`, `bpN:p0:sol#IsSolutionOn`,
    `bpN:p0:orbit#integrableOrbit`;
  - the 7 D25 track-N definitions (manifest IDs `nekhoroshev.d25.*`): `bpN:p0:partial-complexify#complexifyPhase`,
    `bpN:p0:partial-core#innerCore`, `bpN:p0:partial-domain#partialComplexDomain`,
    `bpN:p0:partial-definite#HasDefiniteFastPart`, `bpN:p0:partial-pert#IsPartialPerturbation`,
    `bpN:p0:partial-exponents#partialTimeExponent`, `bpN:p0:partial-exponents#partialDriftExponent`;
  - the 5 track-K definitions that Part 0 transcribes (manifest IDs `kam.*`): `bpN:p0:actionnbhd#actionNbhd`,
    `bpN:p0:freq#frequencyMap`, `bpN:p0:vf#hamiltonianVectorField`, `bpN:p0:realH#realHamiltonian`, and
    `bpN:p0:strip#complexStrip` (Part 0 transcribes it in Remark `bpN:p0:strip`, which carries the `\frozen` tag; the
    pre-extraction turns it into a definition node);
  - the 5 track-P definitions that Part 0 transcribes in unlabelled prose (manifest IDs `planetary.*`), bound by this SPEC
    with the pre-extraction option `--prose-anchor`:

    | Node | Lean export | Transcription |
    |---|---|---|
    | `bpN:p0:partial-sec#Phase` | `KAM.Planetary.Phase` | Part 0 L265 (Ph_d = R^d × R^d, positions first) |
    | `bpN:p0:partial-sec#fast` | `KAM.Planetary.fast` | L266–267 (first block) |
    | `bpN:p0:partial-sec#slow` | `KAM.Planetary.slow` | L266–267 (second block) |
    | `bpN:p0:partial-sec#fastShift` | `KAM.Planetary.fastShift` | L270 ((2πℓ, 0) in the fast block) |
    | `bpN:p0:partial-sec#degenerateHamiltonian` | `KAM.Planetary.degenerateHamiltonian` | L325, item (Z1) of `bpN:p0:partial` |

    The frozen N-PARTIAL-CONVEX statement and `IsPartialPerturbation`/`complexifyPhase` use these declarations
    directly, so they are anchors of *this* graph, bound to the same manifest entries as track P's future anchor nodes
    (as track I does with K's definitions). They have no candidate DEPS: the N-p02 extractor adds the edges among them
    (e.g. `degenerateHamiltonian` → `Phase`, `fast`; `fastShift` → `Phase`) and from their users.

  A `\Kref` to one of K's Part 0 definition labels resolves to the track-N anchor (`\Kref{bp:p0:domains}` →
  `actionnbhd#actionNbhd`, `strip#complexStrip`; `\Kref{bp:p0:hamiltonian}` → `vf#hamiltonianVectorField`), never to an
  imported node. The K frozen definitions that Part 0 does not transcribe (`fundamentalDomain`,
  `hamiltonianVectorFieldC`, `symplecticForm`, `omegaZero`, …) are not nodes of this graph; the pre-extraction reports
  each such citation as skipped.
- **Manifest.** Anchor identity (file, export, anchor ID, contract ID/version, ABI hash) is copied from
  `manifest/frozen-anchors.json` and bound by the linter. It is never edited in the graph. All 32 anchors (28
  definitions, 4 theorems) belong to slice `N-p02`.
- **N-AVERAGING** (D28) was out of scope until Part 12 existed; it is now in scope (see "D28 additions" below).
- **D28 additions (SPEC revision 2026-10-27 21:5x, GRAPH_VERSION 4 unchanged until publication).** N-AVERAGING is now
  in scope: roots `bpN:p0:avg-mean`, `bpN:p0:avg-most`; two more frozen definition anchors
  `bpN:p0:avg-rank#HasAveragingFrequencyRank`, `bpN:p0:avg-error#averagingError` (manifest IDs `nekhoroshev.d28.*`).
  The Part 0 D28 subsection (L341–end) and all of Part 12 form the new slice `N-p12`; these four anchors belong to
  `N-p12` (not `N-p02`). Part 12 passed review round 2 (`blueprint-N/reviews/p12-review-2.md`: ACCEPT WITH FIXES,
  ready for graph extraction; N12R2-01 applied in af26b1a).

## Corpus
- The fourteen files `blueprint-N/parts/{p0,…,p10,p11a,p11b,p11c}-*.tex`, pinned in `docs/graph/N/CORPUS.sha256`. The
  pin is the blueprint after `a2c0979` (Part 11 round-2 fixes); the Part 11 round-3 closure review (`e3a5f7d`,
  `blueprint-N/reviews/p11-review-3.md`: ACCEPT, "ready for graph extraction") reviewed exactly these p0/p11a–c hashes.
- Imported nodes (below) point into `blueprint/parts/p1-analysis.tex` (track K; locators copied from K's reviewed graph,
  which is current after K's locator remap `aec5b8b`), `blueprint-I/parts/p0-conventions.tex` and
  `blueprint-P/parts/{p0-conventions,p2-averaging}.tex`. These files are pinned in `docs/graph/N/IMPORTS.sha256`. They
  are not part of the corpus: nothing in them is extracted here.
- Any later change to a pinned file is recorded below with the new hashes. Locators are then remapped mechanically
  (`inp_depgraph_remap_locators.py`), and the affected slices are re-checked.
- Pinned papers (Pos93, BM11, Nek77, …) and `docs/tracks/N/sources.md` are provenance only. The blueprint proves
  everything it uses except the external inputs and the imported results below.

## Standing assumptions and hypothesis packages
**STANDING_ASSUMPTIONS: none.** Track N has no global standing assumption and no `assumption` environment. Its
part-level settings are local hypothesis packages: `definition` (or, for Part 1's dictionary, `lemma`) nodes.

**Warning to extractors: link these packages.** Tracks K and I under-linked such packages. Track N's packages are used
almost entirely *by symbol*, without a `\ref`: `bpN:p4:norm` (the class 𝒪(r,s) and the weighted norm |u|_{r,s}) is
`\ref`'d 4 times in the whole blueprint but used in nearly every result of Parts 4–7, 9 and 11; `bpN:p8:lattice`,
`bpN:p8:klattice`, `bpN:p8:volume-def` are `\ref`'d at most once; `bpN:p11:wfield`, `bpN:p11:constants`,
`bpN:p11:scaled` once or twice. So the mechanical candidates miss most of these edges.

The rule: a node depends on a package node when its statement assumes the package, or its proof uses an object,
symbol or constant that the package defines. This holds even when the text names the package only implicitly ("in a
Theorem-1 setting", "the constants", "the data", a symbol such as 𝒪(r,s), |·|_{r,s}, V_rD, 𝒟_{r,s}, U_ϱD, W_ϱ, X_u,
{u,v}, ν_{ρ,σ}, Z_K, (N1)/(N2), |g|_*, 𝕄_K, D_Λ, r_Λ, α_Λ, δ_Λ, A, ε₀, R₀, K, K_a, κ, r_Θ, B_c, μ, ℓ, r₀, F, ε_*, X^c,
{·,·}_c, 𝒪^e, (SL), b_n, d, w, λ, c). Reviewers fail a node that uses package data without the edge.

| Package node | Scope | What it fixes |
|---|---|---|
| `bpN:p1:realdomain` (lemma) | Parts 1, 2, 7, 9, 10 | real action domain B_s(R) = B(0,R+s), tube inclusions |
| `bpN:p1:constants` (lemma) | Part 1 §s-const, Parts 9–10 | the dictionary q, B_c, μ, ℓ, r₀, A, s₀, σ, F, ε_*, C, c, T, ε₀ and Pöschel's data m_P, ℓ_P, M_P, A_P, ε_{0,P}, R₀, P |
| `bpN:p3:gen-sol` | Part 3 general layer; Parts 5, 7, 11 (orbits) | the predicate IsSolIn F W J z |
| `bpN:p3:gen-uniform` | Part 3 continuation results, Part 7 transfer, Part 11c | uniform data (δ, M, L) |
| `bpN:p4:domains` | Parts 4–11 | V_rD, 𝒟_{r,s} = T_s × V_rD, the polydiscs P̄(z;a,b); openness, monotonicity |
| `bpN:p4:norm` | Parts 4–7, 9–11 | 𝒪(r,s), Fourier coefficients û_k(I), |u|_{I,s}, |u|_{r,s}, vector norms, finite norm (and the monotonicity line L55, see below) |
| `bpN:p5:setting` | Parts 5–7, 11 | X_u = J∇u, the bracket {u,v} and its sign, ν_{ρ,σ}, ad^j |
| `bpN:p6:setting` | Parts 6–7, 9, 11 | D, r, K, α, L, Λ, h, ω = ∂_I h; (N1) `cond-nr`, (N2) `cond-L` (item labels map to this node); |g|_* |
| `bpN:p7:setting` | Parts 7, 9–10 | U_ϱD, W_ϱ, 𝒪(r,s)^ℝ, G^ℝ, G-orbits, h_ℝ, ω, Q |
| `bpN:p7:resonance-data` | Parts 7–10 | resonance data, m-convexity, (ℓ,m)-quasi-convexity |
| `bpN:p8:lattice`, `bpN:p8:volume-def`, `bpN:p8:klattice`, `bpN:p8:blocks` | Parts 8–9, 11c | lattices, |Λ|, maximal K-lattices 𝕄_K, zones and blocks D_Λ, r_Λ, α_Λ, δ_Λ |
| `bpN:p9:setting` | Parts 9–10 | the Theorem-1 setting (S1)–(S4) (item labels `bpN:p9:s-*` map to this node); A, ε₀, a, R₀, K, K_a, κ, r_Θ, W, H^ℝ, Ω₀ |
| `bpN:p10:choice` | Part 10 | the choice of C, T, c, ε₀ and the Theorem-1 data P, s₁, F₁, ε₁, R₀, ε′ |
| `bpN:p11:wfield` | Part 11 | X^c, {u,v}_c, Ω_c |
| `bpN:p11:constants` | Parts 11a, 11c | s, m₁, M₁, g₁, r₀, A, ε₀, R₀, κ_C, c_K, ε(μ), K(μ), d = μ^{b_n}, w, K_a, κ, μ₀, p, q, b_c |
| `bpN:p11:ext-class` | Parts 11b–11c | D̂, 𝒟^e, 𝒪^e, W^e, the bracket in (θ, I, x̃), (SL)_{ρ,σ}, (SL) |
| `bpN:p11:scaled` | Part 11b | the scaled norm and field of the extended class |
| `bpN:p11:block-setting` | Part 11c (block theorem, assembly) | S = core(D, 3d/4), w, the pair (h̆, f̆), λ, c, 𝒲(I_c, r_B) |

**Section data.** Several subsections open with unlabelled prose that fixes data or states facts later proofs use.
Each is already a `prose-L…` coverage item with DISPOSITION TODO (the pre-extraction ran with `--all-prose`, so
reference-free paragraphs are inventoried too). If such a paragraph fixes data or states a fact (openness, an identity,
monotonicity, reality) that a proof consumes, make it a `definition` node `<section label>#data` (or a `claim` node
`<label>#<slug>` for a stated fact) and link its consumers; pure notation is mapped to the consumers in the coverage,
with a reason. The candidates:

| Coverage item | Content | Suggested node |
|---|---|---|
| `p1:prose-L68-L70` | standing data of §s-holo: R, s, h, f, ε, H | `bpN:p1:s-holo#data` |
| `p3:prose-L95-L99` | elementary consequences (i)–(iii) of IsSolIn (continuity, restriction, local nature), used e.g. by `stepN:p3:exit-closed` ("consequence (ii)") and `stepN:p3:max-glue` ("(iii) above") | `bpN:p3:gen-sol#consequences` (claim) |
| `p3:prose-L472-L477` | standing data of §s-N: R, s, h, f, ε, H = H_{h,f}, W_s open, B(0,R+s) = B_s(R), U | `bpN:p3:s-N#data` |
| `p4:prose-L55-L55` | monotonicity of |u|_{r,s} in (r,s); vector norms vs component norms | `bpN:p4:norm#monotone` (claim) |
| `p4:prose-L144-L144` | the Poisson bracket for m = n | map to `bpN:p4:bracket`, or `bpN:p4:s-b4#data` |
| `p4:prose-L177-L177` | the derivative part of (E2) `bpN:p4:ext-weier` from Lemma `general-cauchy` | the node that models `ext-weier` (see Externals) |
| `p5:prose-L27-L27` | holomorphy/periodicity of brackets and ad^j | `bpN:p5:setting#facts` (claim) if consumed |
| `p5:prose-L106-L106` | reality of X_φ and of the time-one map for real φ | `bpN:p5:s-flow#real` (claim) if consumed |
| `p6:prose-L11-L16` | Z_K, p, q, ᾱ = 2πα, κ = 2πKs, the two dictionaries | `bpN:p6#data` |
| `p7:prose-L178-L179` | the resonant setting (RS) of §s-energy | `bpN:p7:s-energy#rs` (it is a package for Lemmas 1, 2 and the energy lemmas) |
| `p9:prose-L12-L14` | conventions and the fixed parameters q = 9, p = 9/8, b = 1/8 | `bpN:p9#data` |
| `p9:prose-L72-L72` | standing data of §s-blocks (a Theorem-1 setting, ε, K, K_a, κ) | `bpN:p9:s-blocks#data` |
| `p11b:prose-L4-L6` | standing data of §s-ext-class–§s-nf: I_c, S, r_B, w, λ, c, x̃, S̃ | `bpN:p11:s-ext-class#data` |
| `p11b:prose-L104-L104` | the Part 6 → Part 11 notation dictionary | map to the §s-nf consumers, or `bpN:p11:s-nf#data` |
| `p11c:prose-L4-L5` | standing data of §s-real: W^e_ϱ, G^ℝ, G-orbits in W^e_ϱ | `bpN:p11:s-real#data` |

The part-level convention paragraphs (`p1:prose-L4-L14` "Convention ruling", `p4:prose-L12-L17`, `p7:prose-L12-L13`,
`p8:prose-L9-L9` "‖·‖ is Euclidean in Part 8") are notation: map each to the consumers or exclude it as notation, but
record its convention in the source fields of every node that relies on it (above all Part 8's Euclidean norm).
Introductions and outlines (`p*:prose-L3…`, `…-L7…`, `…-L10…`) and the external-list wrappers (`…\end{enumerate}`,
"Besides … the proofs use", "Track-K and earlier-part results used") are excluded as outline/pointer, but check that
every K result listed there is linked from the proof that uses it.

## External inputs and imported results (EXTERNAL_POLICY)
- **Track-N externals.** The labelled items of the parts' "External facts" lists, `KIND: external`, `LEAN_STATUS:
  EXTERNAL` (32 items): `bpN:p1:ext-{linalg,norms,restrict,prod}`; `bpN:p3:ext-{pl,unique,lip-local,mvt,compact,calc,
  pl-c1}`; `bpN:p4:ext-{param,weier,series}`; `bpN:p6:ext-{numerics,chain}`; `bpN:p7:ext-{banach,taylor,num,linalg}`;
  `bpN:p8:ext-{free,gram,schur,units,indep,basic}`; `bpN:p9:ext-{num,compact}`; `bpN:p10:ext-rpow`;
  `bpN:p11:ext-{num,rpow,chain}`.
  - **Alias rule.** An item that only restates another node (another external, a K external, or a result proved
    elsewhere) is `EXCLUDED` in the coverage with the reason "alias of …"; its consumers depend on the cited node
    directly and it has no node of its own. Decisions:
    - `bpN:p3:ext-mvt` is an alias of `K:bp:p1:ext-mvt` (its two extra sentences are the convex-set and one-variable
      forms of the same inequality);
    - `bpN:p4:ext-weier` is *not* a pure external: the text says "Exists in this form modulo that lemma" and derives the
      derivative part from `bpN:p4:general-cauchy` (L177) and holomorphy from `K:bp:p1:uniform-limits`. Model it as a
      `claim` node with the same ID, PROOF_SOURCE the item plus L177, DEPS `bpN:p4:general-cauchy`,
      `K:bp:p1:uniform-limits`, LEAN_STATUS NOT_STARTED;
    - `bpN:p4:ext-series`, `bpN:p3:ext-lip-local`, `bpN:p11:ext-chain` stay externals (their `\ref`/`\Kref` are
      pointers to a related statement, not a restatement); say so in NOTE;
    - `bpN:p3:ext-pl-c1` is an external that the text offers only as an optional shortcut ("may be reused"); if no
      proof consumes it, exclude it as "outside every root closure of track N".
- **Imported nodes.** Every result of another track's blueprint that a proof uses (`\Kref{…}`; the other-track frozen
  definitions named by `\frozen{…}` in Part 3) is an IMPORTED node. It is not proved in track N's corpus.
  - **ID:** `K:<node>`, `I:<node>` or `P:<node>`; for another track's frozen definition, `<its Part 0 label>#<Lean name>`
    (the anchor node ID that track's graph uses or will use).
  - **Fields:** `KIND: external`, `LEAN_STATUS: EXTERNAL`, `PROOF_SOURCE: -`, `DEPS: -`.
  - **STATEMENT_SOURCE:** its locator in the owning blueprint.
  - **NOTE:** `IMPORTED: proved in the track-K graph, node <label>; shared Lean provider` (for K's own externals,
    `IMPORTED: external input of the track-K graph …`); for I and P, which have no graph yet, `IMPORTED (pending I graph)`
    / `IMPORTED (pending P graph)`.
  - **Source fields:** copied from track K's reviewed graph (`docs/graph/K/DEPGRAPH.md`) for K; written by the writer
    from the owning blueprint's Part 0 for the I and P definitions.
  - **Ownership.** The imported nodes form the packet `N-imports` (18 nodes now: 13 K, 2 I, 3 P). It is owned by the
    writer and is not extracted. `inp_depgraph_imports.py --slice N-imports --self-track N` lists the imports that are
    missing, unreferenced or absent from the owning graph, adds (`--add`) and prunes (`--prune`).
  - **Expected prunes after extraction:** `P:bpP:p2:direct` (cited only in the `\source` of
    `bpN:p6:iterative-direct`: provenance); `I:bpI:p0:restricted#IsRestrictedSolutionOn`,
    `P:bpP:p0:newton#IsNewtonSolution`, `P:bpP:p0:fixedsol#IsFixedSolution` (used only by `bpN:p3:newton-reduction`,
    which is excluded here, see Reachability); `K:bp:p1:ext-fourier` and `K:bp:p1:uniform-limits` are unreferenced by
    the candidates (cited only in the p4 external-list prose and in `ext-weier`): keep them only if an extractor links a
    real use (Fourier inversion in Part 4, `ext-weier` above).
  - **Kept I import:** `I:bpI:p0:hamsol#IsHamiltonianSolutionOn`. `bpN:p3:ham-reduction` states the equivalence of
    three predicates, including track I's frozen `IsHamiltonianSolutionOn`; it lies in N-HEAD-C's closure (through
    `bpN:p3:local-exist`, `continuation`, `confinement-glue`), so its statement needs that definition as an import. It
    is a definition node of track I's graph, so the import is valid once that graph is published.
- **`\Pref` and `\Iref` in this blueprint.** The only `\Pref` (`bpP:p2:direct`, Part 6 L133) is in a `\source`:
  provenance. There is no `\Iref`. No track-N proof of a root uses a result of track I or P.
- **`\Nref` in this blueprint** (`\Nref{bpN:p3:continuation}` in Remark `bpN:p1:constants-use`) is internal.
- **Other gaps.** A proof that uses a fact which is neither proved in the blueprint, nor a track-N external, nor an
  imported result gets a step node whose NOTE begins `SOURCE_GAP:`. Never a silent edge, and never an additional
  external or import without a recorded SPEC revision. The 12 `\sourcegap` notes (Part 0 L234, L335; Part 1 L117,
  L234; Part 5 L25, L167; Part 6 L173, L226, L239, L240; Part 11a L23, L35) record gaps *in the pinned papers* that the
  blueprint itself fills (e.g. the frozen-to-Pöschel conversion "is proved in Part 10"; Nek77's §10 lemmas, replaced
  by route (ii)). Map each to the node(s) supplying the bridge, unless the blueprint really leaves the gap open.

## Conventions to watch (the global reviewer checks these across slices)
- **Periodicity.** The frozen D20 objects are 1-periodic in θ ∈ ℝⁿ (characters e^{2πik·θ}, averages over [0,1]ⁿ);
  Pöschel's torus is ℝⁿ/2πℤⁿ. Parts 1–10 work in the frozen convention; Pöschel's normalisation enters only through
  `bpN:p1:period-convert`, `norm-convert`, `qc-convert`, `constants` and Remarks `bpN:p4:dictionary`,
  `bpN:p9:dictionary` (quantities with a tilde or subscript P). The D25 statement has 2π-periodic *fast* angles
  (`fastShift ℓ = (2πℓ, 0)`); Part 11a converts once by Θ (fast angles divided by 2π, field X^{2π}, Lemma
  `bpN:p11:orbit`). Track every factor 2π.
- **Norms.**
  - max norms on ℝⁿ, ℂⁿ, on products (Part 0: ‖(θ,I)‖ = max(|θ|, |I|)), with the induced operator norms; the complex
    Hessian bound ‖D²h(z)‖ ≤ M_ℂ is the max-norm operator norm of D(Dh)(z) (entries ≤ M_ℂ; Euclidean operator norm ≤
    nM_ℂ, `bpN:p1:hessian-convert`); Part 11 bounds the Euclidean operator norm by M_ℂ itself (`bpN:p11:hessian`);
  - QC(m): max norm |v|² on the left, Euclidean dot product in the orthogonality hypothesis;
  - Euclidean ‖·‖ = |·|₂ only where stated: Part 8 throughout (geometry), Part 7 convexity, Parts 9–10 where stated,
    with the comparisons of `bpN:p1:norm-compare`;
  - weighted norm Σ_k |û_k| e^{2π|k|₁ s} with geometric strip width s (Part 4 Normalisation); Pöschel's formulas then
    hold verbatim (Remark `bpN:p4:dictionary`);
  - two lattice cut-offs: analytic K_a on ℓ¹ balls Z_K (Parts 4–7) and geometric K_g on Euclidean balls ℰ_K (Part 8),
    K_a = K/√n; compatibility is `bpN:p8:cutoffs`.
- **Phase-space order.** Angles first, z = (θ, I), with X_H = (∂_I H, −∂_θ H), for the D20 objects and Parts 1–10.
  D25: Ph_d = ℝ^d × ℝ^d, positions first, then momenta, with fast/slow blocks; Part 11 variables y = (θ, I; q, p), the
  weight c in X^c and {·,·}_c, and the rescaled slow pair x̃ = x/λ.
- **N-HEAD-C (`bpN:p0:head`).** n ≥ 3; C, T, c, ε₀ > 0 depend only on (n, R, s, M, m, M_ℂ, ω_min) and are chosen before
  h, f, ε, θ₀, I₀; Cε₀^{1/(2n)} ≤ R/4; 0 < ε ≤ ε₀ (ε = 0 is N-ZERO and is not used, Remark `bpN:p10:zero-case`);
  (H3) on B(0,R), (H4)–(H5) on B_s(R) = B(0,R+s); no dependence on the bound A of `IsAnalyticIntegrable`(iii);
  τ = T exp(cε^{−1/(2n)}); (b) on [−τ, τ] with action set B(0,R); (c) |z(t)₂ − I₀| ≤ Cε^{1/(2n)}; (d) uniqueness for
  every L ∈ [0, τ] and every y on [−L, L], with no confinement of y. Record T's dependence as stated (Part 10 remark:
  T on (n, s, m, M_ℂ, M)).
- **N-ZERO and N-QC.** Every n ∈ ℕ (including n = 0, Remark `bpN:p2:n0`); N-ZERO has ε = 0, the solution on all of ℝ and
  γ(t)₂ = I₀; N-QC asserts bijectivity of DΨ(I, λ) for λ > 0 and no uniform radius.
- **N-PARTIAL-CONVEX (`bpN:p0:partial`).** n ≥ 2, k ≥ 1; G, G′ open convex, D open; the collar B̄(I, ρ) ⊂ G′ is a closed
  max-norm ball; h's hypotheses on G′_ρ; μ₀ depends only on (n, k, G, G′, D, ρ, g, m, M_ℂ, h) and is chosen before
  μ, P, C, z, t (Step `stepN:p11:final-order` claims dependence on (n, k, ρ, g, m, M_ℂ) only: record each statement's
  own claim); |P| ≤ 1 with H_μ = Re h(fast 𝖨) + μ Re P(cx z); the slow confinement in core(D, μ^{b_n}) is tested on
  [0, t] only; the initial erosion core(G, μ^{b_n}) is used only as fast(z(0)₂) ∈ G; conclusion |fast z(t)₂ −
  fast z(0)₂| ≤ ½ μ^{b_n} for t ≤ min(C, μ^{−1} exp(μ^{−a_n})); a_n = 2/(6n² − 3n + 14), b_n = 3/(6n² − 3n + 14); the
  sign σ ∈ {±1} of the definite fast Hessian (time reversal in `stepN:p11:final-sign`); the branch G = ∅
  (`stepN:p11:final-empty`).
- **Sizes.** `IsAnalyticPerturbation` bounds |f| ≤ ε (the source's bound is strict; it is applied with 2ε). Part 9's
  parameters are q = 9, p = 9/8, b = 1/8 and hypothesis (S3) r₀ ≤ ℓ/(2M) replaces Pöschel's r₀ ≤ 4ℓ/m; Part 11 uses
  b_c = 1/32, A = 40M_ℂ/m, ε₀ with 2^{14} and re-derives the block hypotheses (`bpN:p11:block-data`) instead of citing
  Part 9's (Remark `bpN:p11:b-change`).
- **Constants.** Record every constant's dependence list exactly as stated, e.g. "depend only on
  (n, R, s, M, m, M_ℂ, ω_min)"; the order of choice in `bpN:p1:constants`(a) and `bpN:p10:choice`.
- **Lean totality.** `bpN:p0:totality`, `bpN:p0:partial-totality`, `bpN:p3:totality`, `bpN:p8:totality` explain how
  frozen and total definitions behave off their domains. They are not hypotheses. A remark is a node only if a proof
  consumes a fact it states.

## Node threshold
As in tracks K and I:
- every labelled result environment, every `\proofstep` and every labelled external item is a node, unless it is
  excluded with a reason;
- a further step node, ID `<parent>#<slug>`, is added only for an unmarked substantive obligation (nontrivial estimate
  or application, construction, case split, witness or parameter choice, quantifier closure, carrier change, reused
  intermediate claim); no nodes for routine algebra;
- the one unlabelled `\proofstep` (Part 7 L41, "(d)" in the proof of `bpN:p7:real-system`) has no node; its references
  are attributed to the parent. Add `bpN:p7:real-system#d` if the topology needs it.

**Remarks.** Administrative remarks are `EXCLUDED`: deviations, errata and doubts lists, provenance, "use", "consumers"
and "interfaces" summaries, status lists, Lean-totality notes that no proof consumes, label indexes (Part 3 L561–574),
route decisions. The pre-extraction made every remark a `claim` node; delete those that no proof consumes, and exclude
their coverage items. Remarks that track P or I cites (e.g. `bpN:p4:dictionary`, `bpN:p6:iterative-special`,
`bpN:p6:deviations`, `bpN:p2:qc-reuse`) are excluded here too unless a track-N proof consumes them; the importing graph
owns them (rulings below).

**Labels inside a result.** Equation and item labels map to their enclosing node in the coverage: `bpN:p6:cond-nr`,
`bpN:p6:cond-L` (→ `bpN:p6:setting`), `bpN:p9:s-h`, `s-qc`, `s-r`, `s-f` (→ `bpN:p9:setting`). Refine one into its own
node only if consumers use it independently and that matters for the topology.

**Inline proof.** `bpN:p11:ext-part4` proves itself inside its statement environment ("*Proof:* …"); its PROOF_SOURCE is
the statement locator.

**Reachability.** Every graph node must feed at least one root. A labelled result or step that no root's proof
consumes is `EXCLUDED` with the reason "outside every root closure of track N" (or the ownership reason below). Name the
check you made. Candidates from the dry run (closure of the candidate edges, with remarks and `\source` edges removed;
under-linked package definitions such as `bpN:p8:lattice` are *not* candidates):
- Part 3: `bpN:p3:gen-barrier`, `bpN:p3:gen-invariant`, `bpN:p3:newton-reduction`, `bpN:p3:newton-continuation` (and
  their steps), `bpN:p3:gen-uniform-remark`, `bpN:p3:ext-pl-c1`; and the track-N specializations
  `bpN:p3:continuation`, `bpN:p3:energy`, `bpN:p3:lipschitz`. Part 10's remark says `continuation` and `local-exist`
  "enter through the glue", but `confinement-glue`'s proof cites `gen-confinement`, `ham-reduction`,
  `gen-uniform-periodic` and `ham-periodic`, not `continuation`: confirm against the text, and keep a node only with a
  real use;
- Part 5: `bpN:p5:sharp-composition` (the ♯-norm variant, for track P); Part 4's ♯ results and `p4:prose-L196-L199`
  (track P's averaging norm);
- Part 6: `bpN:p6:action-displacement` (Part 6's remark says Part 7 uses it: check), `bpN:p6:iterative-special`;
- Part 11: `bpN:p11:ext-chain`, and the remarks `bpN:p11:route`, `omega-unbounded`, `b-change`.

## Edges
- Direct uses only, conjunctive, `consumer -> prerequisite`. Every edge has one `EDGE:` line locating the use in the
  consumer. Use `¦` for absolute-value bars inside an EDGE rationale (`|` is the field separator).
- **Not edges:** forward pointers; comparisons; provenance (`\source{…}`; the pre-extraction tags these candidates
  "in \source: provenance unless consumed"); mentions of a hypothesis being checked; "does not apply", "replaces",
  "is not cited" references (e.g. Remark `bpN:p11:b-change`: "Part 9's block hypotheses are *not* cited"); "for
  orientation" paragraphs (`stepN:p3:hi-reg`, `hi-per` repeat the argument of the cited Lemma `bpN:p1:holo-real`).
- **Statement references dropped.** The pre-extraction dropped references to an anchor from the parts that prove it or
  set it up (`--proved-in`): `bpN:p0:head` from Parts 1, 3 and 10; `bpN:p0:zero` and `bpN:p0:qcthm` from Part 2;
  `bpN:p0:partial` from Parts 11a–c. Such a reference names the anchor's hypotheses ("(H1)–(H5) of Theorem
  `bpN:p0:head`", "h as in Theorem `bpN:p0:partial`"); the consumer then depends on the *definition anchors* those
  hypotheses use (`IsAnalyticIntegrable`, `HasComplexHessianBound`, `HasDefiniteFastPart`, …), which the extractor adds.
- **Anchor statements.** The roots and the definition anchors use most frozen definitions by name (`IsSolutionOn`,
  `realHamiltonian`, `actionBall`, `realActionDomain`, `frequencyMap`, `degenerateHamiltonian`, `innerCore`, …) without a
  `\ref`. The N-p02 extractor adds these statement edges, as track I's I-p0 did.
- **Candidate cycles found by the pre-extraction (38).** All of them pass through a remark or a forward pointer and must
  be gone after extraction:
  - remarks: `bpN:p7:errata`, `bpN:p9:errata`, `bpN:p8:errata`, `bpN:p9:dictionary`, `bpN:p4:dictionary`,
    `bpN:p6:deviations`, `bpN:p5:route`, `bpN:p7:factor-e`, `bpN:p8:direction`, `bpN:p11:b-change`;
  - forward pointers: `bpN:p1:norm-compare` → `bpN:p8:direction`; `bpN:p1:holo-real` ↔ `bpN:p3:holo-input`;
    `bpN:p4:cauchy` ↔ `bpN:p4:sharp`; `bpN:p5:setting` → `bpN:p5:lie-derivative`; `bpN:p9:setting` →
    `bpN:p9:omega0`/`errata`; `bpN:p8:cutoffs` → `bpN:p7:resonant-prop2`.
- **Alternatives** ("alternatively …") become `KIND: route` nodes owned through `ROUTE_FOR`. Remark `bpN:p11:route`
  compares two routes and *decides* for route (ii); it is not an OR-node. Part 5's "not the sup-norm fallback"
  (`bpN:p5:route`) likewise records a decision.

## Roles
- **Writer:** `claude-suborch-INP` (the I/N/P sub-orchestrator, Opus 5.5, D23). It is the only editor of
  `DEPGRAPH.md` and `DEPGRAPH_COVERAGE.md`, which it assembles from the slice packets with `inp_depgraph_assemble.py`.
  It owns the `N-imports` packet.
- **Extractors:** Sonnet agents, one per slice, tagged `sonnet-extract-<slice>`. Each edits only its own two packet
  files, `docs/graph/N/packets/<slice>.{nodes,coverage}.md`.
- **Slice reviewers:** GPT-6.1-Sol (Codex, tmux, medium effort, default tier; D21, D24), tagged `sol-review-<slice>`,
  distinct from the extractors.
  - `N-imports` is reviewed by a reviewer that is not the writer. It checks the copied source fields against the owning
    blueprint, not against K's graph.
  - A node rewritten by a reviewer gets a *different* reviewer (delta review).
  - Reviewers end with a whole line `READY <marker>`. Wait for that whole line, not a substring of the echoed prompt.
- **Global reviewer:** a fresh GPT-6.1-Sol session, tagged `sol-global-N`, distinct from all of the above.

## Slices
Line-addressable, aligned to statement/proof units, recorded in `docs/graph/N/packets/slices.json`. Counts are from
the pre-extraction (`--all-prose`).

| Slice | Source range | Nodes | Coverage items |
|---|---|---|---|
| `N-p02` | Part 0 L1–340 (the 32 D20/D25 anchors and 3 remarks) and all of Part 2 (proofs of N-QC and N-ZERO) | 63 | 109 |
| `N-p1` | all of Part 1 (interfaces, conversions, constants dictionary) | 52 | 74 |
| `N-p3a` | Part 3 L1–325 (conventions, externals, general layer up to the general confinement glue) | 52 | 73 |
| `N-p3b` | Part 3 L326–end (first exit, barrier, Hamiltonian layer, frozen predicates, track-N statements, label index) | 48 | 69 |
| `N-p4` | all of Part 4 (weighted norms, Cauchy estimates, ♯ norm) | 38 | 65 |
| `N-p5` | all of Part 5 (flows, Taylor, Lemma B.5, canonical maps) | 50 | 74 |
| `N-p6` | all of Part 6 (homological equation, Iterative and Normal Form Lemmas) | 42 | 69 |
| `N-p7` | all of Part 7 (real systems, transfer, Propositions 1–2, Lemmas 1–2) | 69 | 96 |
| `N-p8` | all of Part 8 (lattices, blocks, Geometric and Covering Lemmas) | 53 | 76 |
| `N-p910` | all of Parts 9 and 10 (Pöschel's Theorem 1; assembly of N-HEAD-C, including `bpN:p10:head` and `stepN:p10:hd-*`) | 73 | 102 |
| `N-p11ab` | all of Parts 11a and 11b (route, conversion, constants; extended class, Lie transform, normal form) | 51 | 70 |
| `N-p11c` | all of Part 11c (real extended systems, stability, block theorem, proof of N-PARTIAL-CONVEX `stepN:p11:final-*`) | 65 | 77 |
| `N-p12` | Part 0 L341–end (D28 subsection: 2 definition anchors, 2 theorem anchors, totality remark) and all of Part 12 (N-AVERAGING proof) | 83 | 120 |
| `N-imports` | imported nodes `K:*` (13), `I:*` (2), `P:*` (3); writer-owned, not extracted | 18 | 18 |

Total 674 nodes (656 corpus nodes, 18 imports) and 972 coverage items, 60 of them with DISPOSITION TODO.
- A node belongs to the slice containing the first line of its STATEMENT_SOURCE. The anchors belong to `N-p02`.
- The anchors' proof steps belong to the slice containing them: N-HEAD-C's (`stepN:p10:hd-*`) to `N-p910`;
  N-PARTIAL-CONVEX's (`stepN:p11:final-*`) to `N-p11c`; N-AVERAGING's anchors and proof to `N-p12`.
- Coverage items follow their SOURCE line.

## Change log
- 2026-10-27: initial specification (Phases 1–2: corpus pin, pre-extraction, slice packets, dry run).
  Pre-extraction, from the repository root (tools in `/mnt/HC_Volume_106379410/orchestrator-tools/`):

  ```
  python3 -I inp_depgraph_preextract.py --root . --blueprint blueprint-N --track N \
    --manifest manifest/frozen-anchors.json --out docs/graph/N/draft --all-prose \
    --proved-in "bpN:p0:head=p1+p3+p10,bpN:p0:zero=p2,bpN:p0:qcthm=p2,bpN:p0:partial=p11a+p11b+p11c" \
    --prose-anchor "bpN:p0:partial-sec#Phase=KAM.Planetary.Phase@L265-L265" \
    --prose-anchor "bpN:p0:partial-sec#fast=KAM.Planetary.fast@L266-L267" \
    --prose-anchor "bpN:p0:partial-sec#slow=KAM.Planetary.slow@L266-L267" \
    --prose-anchor "bpN:p0:partial-sec#fastShift=KAM.Planetary.fastShift@L270-L270" \
    --prose-anchor "bpN:p0:partial-sec#degenerateHamiltonian=KAM.Planetary.degenerateHamiltonian@L325-L325"
  python3 -I inp_depgraph_split.py --draft docs/graph/N/draft --slices docs/graph/N/packets/slices.json \
    --out docs/graph/N/packets
  ```

  The writer then filled the source fields of the five I/P imports in `N-imports.nodes.md` (the K imports' fields are
  copied from K's graph by the pre-extraction).

- 2026-10-27 21:5x: D28 revision. Corpus + `p12-averaging.tex`; `p0-conventions.tex` re-pinned after the Part 12
  fix round's one-line Part 0 intro edit (N-p02 locators remapped by `inp_depgraph_remap_locators.py 8d4662e`,
  a45a6d1). Pre-extraction re-run into a scratch draft with `--proved-in ...,bpN:p0:avg-mean=p12,bpN:p0:avg-most=p12`
  and the prose anchors shifted by -1; only the new slice `N-p12` was split out and copied (no other slice touched).

## Sub-orchestrator rulings (2026-10-27, before extraction)
- **Cross-graph ownership (track N exports).** Track N owns the shared infrastructure that tracks I and P import
  (Part 3's ODE layer, Parts 4–6, Part 7, Part 8). The skill requires every node of this graph to feed a track-N root,
  so a track-N result that feeds no track-N root is EXCLUDED here with reason "outside every root closure; owned by the
  importing graph (track I/P)", even when another graph imports it. The importing graph then converts its `N:` import
  into an ordinary node of its own whose corpus is the blueprint-N label (track I's ruling of 2026-10-27, symmetric
  case). Imports of N results that *are* in a track-N root closure stay valid imports.
- **Track I's `N:` imports outside every track-N root closure** (dry run, confirmed against the text: no proof in Parts
  0–2 or 4–11 cites them; inside Part 3, `gen-invariant` is used only by `gen-barrier` ("S is invariant"),
  `newton-reduction` only by `newton-continuation`, and all three appear in the label index):
  - `bpN:p3:gen-barrier` (with `stepN:p3:barrier-fwd`, `stepN:p3:barrier-bwd`), used by track I's `stepI:p5:sp-barrier`;
  - `bpN:p3:gen-invariant`, used by `bpI:p5:invariance`, `stepI:p5:inv-uniq`;
  - `bpN:p3:newton-reduction` (with `stepN:p3:nr-smooth`, `stepN:p3:nr-pair`), used by `bpI:p7:ham-eq`,
    `stepI:p7:he-sol`, `stepI:p8:pf-uniq`. Its statement also covers track P's `IsNewtonSolution` and `IsFixedSolution`:
    track P's graph will need it too (it cites `\Nref{bpN:p3:newton-reduction}`), so both importing graphs own a copy,
    each with the same blueprint-N locator.

  Their N-side prerequisites that *are* in N's closure stay imports there (`bpN:p3:gen-exit`, `gen-symmetry`,
  `gen-sol`, `gen-uniqueness`, `ham-energy`, …). Track I's other `N:` imports (`gen-continuation-periodic`,
  `gen-maximal`, `gen-sol`, `gen-uniqueness`, `ham-energy`, `ham-periodic`, `ham-reduction`; the pruned `qc-kernel`)
  lie in N's closures and remain imports. The extractor of `N-p3b` confirms the three exclusions; if one turns out to
  be used by a track-N root, it stays here and the import in track I's graph stays.
- **Forward note for track P's graph** (its blueprint cites `\Nref`): `bpN:p3:newton-continuation`,
  `bpN:p3:newton-reduction` and the remarks `bpN:p4:dictionary`, `bpN:p6:deviations`, `bpN:p6:iterative-special` are
  candidates for exclusion here; track P would own them. Every other `\Nref` label of blueprint-P lies in a track-N
  candidate closure.
- **`bpN:p3:ham-reduction`** is kept as one node (one labelled source result) with an import edge to
  `I:bpI:p0:hamsol#IsHamiltonianSolutionOn` for the track-I clause; it is not split.
