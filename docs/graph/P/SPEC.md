# Track P dependency graph: extraction specification

Fixed before extraction (skill `build-proof-dependency-graph`, Phase 1). It follows the specifications of tracks K, I
and N (`docs/graph/{K,I,N}/SPEC.md`); this file states only what track P needs, and is binding for extractors and
reviewers. Changes are recorded at the end with a date and reason.

## Roots and anchors
- **Roots (this graph version):** the seven frozen track-P theorem anchors whose blueprint proofs are complete
  (sub-orchestrator scope ruling, 2026-10-27; P-FIXED added by the P-FIXED revision of 2026-10-28, below):

  | Node | Lean export | Manifest anchor | Proved in |
  |---|---|---|---|
  | `bpP:p0:pg` | `KAM.Planetary.properlyDegenerateKAM` | `planetary.properlyDegenerateKAM.v1` | Parts 1–5; Theorem `bpP:p5:main` (Part 5 L317–320, carries the `\frozen` tag) |
  | `bpP:p0:planar` | `KAM.Planetary.planarTwoPlanetKAM` | `planetary.planarTwoPlanetKAM.v1` | Parts 6–10, 11b, 12; Theorem `bpP:p12:planar` (Part 12 L159–163, carries the tag) |
  | `bpP:p0:fixed` | `KAM.Planetary.fixedSunPlanetaryKAM` | `planetary.fixedSunPlanetaryKAM.v1` | Part 13; Theorem `bpP:p13:fixed` (L153–161, carries the tag): n = 2 by `bpP:p13:n2` (route (c), frozen P-G), general n by `bpP:p13:n-general` (Part 11's wrapper `bpP:p11:wrapper`, resting on Parts 11a-1…11a-5) |
  | `bpP:p0:amd` | `KAM.Planetary.amdConfinement` | `planetary.d25.amdConfinement.v1` | Part 14a; `bpP:p14:amd` (L129–133, carries the tag) |
  | `bpP:p0:expsafe` | `KAM.Planetary.planetaryExponentialSafety` | `planetary.d25.planetaryExponentialSafety.v1` | Part 14a; `bpP:p14:expsafe` (L295–299, carries the tag) |
  | `bpP:p14:sb-safety` | `KAM.Planetary.secularBoxSafety` | `planetary.d25.secularBoxSafety.v1` | Part 14b (statement L72–86, proof L280–307, steps `stepP:p14:sb-th-*`) |
  | `bpP:p14:sb-cited` | `KAM.Planetary.secularBoxAtCitedMasses` | `planetary.d25.secularBoxAtCitedMasses.v1` | Part 14b (statement L88–92, proof L309–312, steps `stepP:p14:sb-ci-*`) |

  Two roots use another root as an input, and the edges are genuine uses: P-PLANAR applies the frozen P-G
  (`bpP:p12:*` → `bpP:p0:pg`, route (c) of `blueprint-P/PLAN.md`); `stepP:p14:sb-ci-1` instantiates Theorem
  `bpP:p14:sb-safety`. P-EXP-SAFE (a) repeats clauses (a)–(c) of P-AMD-CONFINEMENT; whether its proof *uses* `bpP:p0:amd`
  is for the extractor (candidate edge `bpP:p0:expsafe → bpP:p0:amd`).
- **P-SECULAR-BOX anchors live in Part 14b**, not Part 0: Part 0 does not transcribe P-SECULAR-BOX (14b L6, "§sb-frozen
  does"). The pre-extraction binds anchors in its anchor part (`p0`) only, so the writer bound the 14b anchors after it
  (`draft/writer-bind-p14b.py`, identity copied from the manifest, same block format as the Part-0 anchors).
- **P-FIXED (deferred in the initial version; superseded by the P-FIXED revision below).** `bpP:p0:fixed` (`KAM.Planetary.fixedSunPlanetaryKAM`,
  `planetary.fixedSunPlanetaryKAM.v1`) needs, for general n, Parts 11a-4/11a-5, which are being written. Its block is
  parked in `draft/deferred-p0-fixed.md`, its coverage items (`bpP:p0:fixed`, `p0:sourcegap-L387`) are EXCLUDED with the
  deferral reason, and Parts 11 (`p11-cp09-preparation`), 11a-1…11a-5 and 13 are outside the corpus. **A later SPEC
  revision** (as N's D28 revision did for N-AVERAGING) adds the root, those parts, the parked block and their slices;
  nothing else is re-extracted. Part 11b is in scope (P-PLANAR uses it). Check made: no label of Parts 11, 11a-*, 13 is
  referenced from any corpus part except the forward-reference paragraph of Part 6 (L297, `\Pref{bpP:p13:assembly}`,
  a pointer).
- **P-FIXED revision (2026-10-28, GRAPH_VERSION 4 unchanged until publication).** P-FIXED is now a root:
  `bpP:p0:fixed` is in the header's ROOTS and FROZEN_ANCHORS and is an anchor node of `P-p0` (block restored from
  `draft/deferred-p0-fixed.md`; identity fields re-checked against the manifest entry `planetary.fixedSunPlanetaryKAM.v1`,
  ABI `a710d064…`; TOPOLOGY_STATUS PROPOSED, EXTRACTOR `writer-pfixed-revision`; its coverage item and the `\sourcegap`
  item `p0:sourcegap-L387` are NODE dispositions again). Its proof is Part 13: `bpP:p13:fixed` splits n = 2
  (`bpP:p13:n2`, route (c): P-G applied to the fixed-Sun Birkhoff form, Parts 6–10, 11b, 12, no Part 11/11a) from
  n ≥ 3 (`bpP:p13:n-general`: `bpP:p11:wrapper` of Part 11, whose KAM input `bpP:p11:kam-input` is Parts 11a-1…11a-5).
  The corpus gains `p11-cp09-preparation`, `p11a1-weak-measure`, `p11a2-cutoff-step`, `p11a3-iteration-selection`,
  `p11a4-limit-family`, `p11a5-quantitative-theorem`, `p13-fixed-assembly` (all reviewed and accepted:
  `blueprint-P/reviews/p11-review-2.md`, `p11a{1,2,4,5}-review-1.md`, `p11a3-review-3.md`, `p13-review-1.md`), in the
  five new slices `P-p11`, `P-p11a12`, `P-p11a3`, `P-p11a45`, `P-p13` (Slices). Nothing else is re-extracted. Restored
  P-FIXED-only nodes of existing slices (NODE dispositions again, PROPOSED, EXTRACTOR `writer-pfixed-revision`; source
  fields left TODO for a delta extraction of the owning slice): `bpP:p6:fixkol-assembly` (P-p6; consumers
  `stepP:p13:n2-phys`, `stepP:p13:ng-phys`, Part 11 L240), `bpP:p7:lattice` with `stepP:p7:la-{polar,inv,per,ham}`
  (P-p7; consumer `stepP:p11:tc-polar`, Part 11 L90), `bpP:p10:scaling` (P-p10; consumer `stepP:p11:nd`, Part 11 L50),
  `bpP:p9:dict` (P-p9; its block was still in the packet; consumers Part 11 L44 and `bpP:p10:scaling`). Check made: every
  EXCLUDED coverage item of the existing slices was grepped for a `\ref`/`\Pref` in the seven new files; the other hits
  are `bpP:p12:f-comp` (an alias: `stepP:p13:pg-h1` was retargeted to `bpP:p1:ext-comp`) and the administrative remarks
  (`bpP:p8:use11` stays EXCLUDED). P-p10's P-FIXED nodes were restored earlier by its reviewer. `bpP:p0:fixham#…`,
  `fixedsol#…`, `fixkol#…` are now reachable through `bpP:p0:fixed` (the parking question below is moot).
  - **Statement references dropped:** `--proved-in` adds `bpP:p0:fixed=p13+p11+p11a1+…+p11a5`; Parts 6–10, 11b, 12 keep
    their (pointer) references to it. `bpP:p13:n2`, `n-general` and `fixed` all carry `\frozen{fixedSunPlanetaryKAM}`;
    the anchor depends on `bpP:p13:fixed` only (as `bpP:p0:planar` on `bpP:p12:planar`); the two case theorems feed it
    through steps `stepP:p13:fx-2`, `fx-n`.
  - **Candidate cycles of the new parts (19, pre-extraction)** pass through interface definitions and use/consumer
    remarks: `bpP:p11:kam-input ↔ bpP:p11a:weak-kam-quantitative`/`budget`/`evaluation-bilipschitz`/
    `displacement-power` (the definition names the 11a results it is instantiated by: the edge is
    `bpP:p11:… → bpP:p11a:…`, never back), `bpP:p11:wrapper ↔ kam-input`, `bpP:p11a:consumers` (a consumer remark),
    `bpP:p11a:i3-corrected ↔ finite-divisor ↔ divisor-wide`, `bpP:p11a:power-law ↔ diophantine-measure ↔ limit-bridge`,
    `bpP:p11a:schedule ↔ sel-data`, `bpP:p11a:homological-maximal ↔ real-lipschitz`, `bpP:p11a:weak-kam-quantitative ↔
    zero-case`, `bpP:p11:holo-chart ↔ total-chart`. All must be gone after extraction.
  - **Label prefixes.** All five 11a files use the prefix `bpP:p11a:`/`stepP:p11a:` (IDs are unique across them); the
    slice of a node is fixed by its locator's file, not its prefix.
- **Frozen definitions (70 anchors, `KIND: definition`)**, one node per declaration, ID `<label>#<LeanName>` (ASCII; the
  name after the last dot):
  - **Part 0, D20 (36):** the 33 `planetary.*` definitions of `KAM/Frozen/Planetary/Defs/` and the three track-K
    definitions Part 0 transcribes (`bpP:p0:diophantine#IsDiophantine`, `bpP:p0:hamsymp#hamiltonianVectorField`,
    `bpP:p0:hamsymp#symplecticForm`, manifest `kam.*`).
  - **Part 0, D25 (18):** `bpP:p0:d25-cross#planeCross`, `d25-kepler#{keplerEnergy,keplerAxis,keplerAction,keplerEccVector}`,
    `d25-amd#{totalMomentum,physicalAMD}`, `d25-prograde#ProgradeElliptic`, `d25-lowamd#LowAMDRegion`,
    `d25-box#AMDBox`, `d25-box#Admissible` (= `KAM.Planetary.AMDBox.Admissible`), `d25-movsol#IsMovingSolutionOn`,
    `d25-movsol#IsHamiltonianSolutionOn` (track I's frozen `KAM.Iso.IsHamiltonianSolutionOn`, manifest `iso.*`, which
    Part 0 L461 transcribes with a `\frozen` tag: an anchor of *this* graph, as N's graph made the K definitions it
    transcribes its own anchors), `d25-newton#IsNewtonSolutionOn`, `d25-unique#MovingUniqueOn`,
    `d25-stopped#StoppedActionBound`, `d25-exponents#{planetaryTimeExponent,planetaryDriftExponent}`.
  - **Part 14b, D25 (16):** `bpP:p14:sb-defs#{secularIntegrand,exactSecularHamiltonian,ellipsePhase,ellipsePosition,
    ellipseMomentum,longitudeJacobian}` (Definition L47–56), `bpP:p14:sb-box#{SecularInputBox,jupiterSaturnWeights}`
    (L58–64), `bpP:p14:sb-regular#SecularRegular` (L66–70), and seven definitions that 14b transcribes in the
    unlabelled prose of §sb-conv (named by `\texttt`, no `\frozen` tag; bound by this SPEC as prose anchors):
    `bpP:p14:sb-conv#{secularGamma,secularAMD,secularRoot}` (L26), `#{secularEccVector,secularAxis,orbitalUnit}` (L27),
    `#quarterTurn` (L29). They are in the definition closure of the two P-SECULAR-BOX theorems (checked against the
    frozen declaration files).
  - **Not an anchor:** `KAM.Planetary.keplerMeanLongitude` (`planetary.d25.keplerMeanLongitude.v1`): no frozen theorem
    or anchor definition uses it (only a docstring of `longitudeJacobian`); Part 7's mentions are not nodes.
  - **Expected unreachable from the six roots:** `bpP:p0:fixham#fixedHamiltonian`, `bpP:p0:fixedsol#IsFixedSolution`,
    `bpP:p0:fixkol#FixedKolmogorovSet` are used only by P-FIXED (frozen files checked: `FixedKolmogorovSet` and
    `fixedSunPlanetaryKAM` only). They stay in `P-p0` (all Part 0 definitions are anchors, scope ruling) and the
    extractor fills their fields; if P-FIXED has not been added when the graph is assembled, the writer parks them with
    `bpP:p0:fixed` (open question to the sub-orchestrator; the linter's `--require-all-reachable` rejects them otherwise).
    Track I's graph imports `P:bpP:p0:fixedsol#IsFixedSolution` and `P:bpP:p0:newton#IsNewtonSolution` (I SPEC
    revision G05): the IDs agree with this graph's.
- **Manifest.** Anchor identity (file, export, anchor ID, contract ID/version, ABI hash) is copied from
  `manifest/frozen-anchors.json` and bound by the linter; checked for all 76 anchors (0 mismatches). It is never edited
  in the graph. The 58 Part-0 anchors belong to slice `P-p0`; the 18 Part-14b anchors to `P-p14b`.
- A `\ref` to a Part 0 or 14b definition label resolves to its split anchors (the pre-extraction and the writer's
  binding did this); a `\Kref`/`\Iref`/`\Nref` to another track's frozen definition that this graph transcribes resolves
  to the own anchor, never to an import. The frozen definitions of K, I, N that Part 0 does not transcribe are not nodes;
  N's D25 definitions used by Part 14a are imports (`N:bpN:p0:partial-exponents#…`, `N:bpN:p0:partial-domain#…`).

## Corpus
- The sixteen files `blueprint-P/parts/{p0-conventions, p1-hamiltonian-tools, p2-averaging, p3a-two-scale-iteration,
  p3b-two-scale-limit, p4-pg-measure, p5-pg-assembly, p6-newtonian-models, p7-kepler-poincare, p8-secular-form,
  p9-secular-spectrum, p10-nondegeneracy, p11b-planar-torsion, p12-planar-assembly, p14a-amd-expsafe,
  p14b-secular-box}.tex`, pinned in `docs/graph/P/CORPUS.sha256` (blueprint-P after `1851141`, 2026-10-27).
- Imported nodes point into `blueprint/parts/{p1-analysis,p4-measure}.tex` (K), `blueprint-I/parts/{p7-delaunay,
  p8-r3bp}.tex` and `blueprint-N/parts/{p0-conventions,p3-hamiltonian-ode,p4-weighted-norms,p5-canonical-maps,
  p6-normal-form}.tex`, pinned in `docs/graph/P/IMPORTS.sha256`. They are not part of the corpus.
- **Stale owner locators, remapped.** N's graph pins `p4-weighted-norms.tex` before `dbcf767` (N global-review gap G1,
  n = 0 branches; proof-only edits, statements unchanged). The six `N:bpN:p4:*` import locators copied from N's graph were
  remapped mechanically (`inp_depgraph_remap_locators.py ad50390`, applied to those blocks only); every import locator
  now starts at its label. N's own graph still has the old locators (its writer's remap is pending).
- Pinned papers (CP09, CP10, CP11, Fej04r, Fej07e, Rus01/05, LP17, Nek77, FH24) and `docs/tracks/P/` are provenance only.
- Any later change to a pinned file is recorded below with the new hashes; locators are then remapped mechanically and
  the affected slices re-checked.

## Standing assumptions and hypothesis packages
**STANDING_ASSUMPTIONS: none.** Track P has no global standing assumption. Its part-level settings are local
hypothesis packages (`definition` nodes) or section data.

**Warning to extractors: link these packages and section data.** Tracks K, I and N under-linked them, and their
reviewers failed every such node. A node depends on a package when its statement assumes the package, or its proof
uses an object, symbol or constant the package defines, even without a `\ref`. Candidates (the pre-extraction's
definition nodes; confirm and extend):

| Package node | What it fixes (as used later) |
|---|---|
| `bpP:p1:chart`, `bpP:p1:lattice-torus`, `bpP:p1:two-scale` | charts and conformal factors, lattice tori in a chart, the two-scale Diophantine set |
| `bpP:p2:setting` | direct divisor setting of Part 2 (items (A1), (A2), (O1), (O2) map to `bpP:p2:nfb`/its owner) |
| `bpP:p3:constants`, `bpP:p3:seq` | constants and sequences of the two-scale theorem |
| `bpP:p4:freq`, `bpP:p4:data` | the averaged frequency map; standing data (S4) |
| `bpP:p5:consts`, `bpP:p5:params`, `bpP:p5:rstar`, `bpP:p5:phi`, `bpP:p5:kset` | strip and constants, parameters as functions of (r, μ), thresholds, polar/composite chart Φ, torus family and Kolmogorov set |
| `bpP:p6:nbody`, `bpP:p6:tube-constants` | the (n+1)-body Hamiltonian and Newton equations; axis constants, tube radius, d, D |
| `bpP:p7:kepler-data`, `bpP:p7:poincare-def`, `bpP:p7:product-def` | Kepler data; Poincaré chart Ψ_{m,κ}; product chart Ψ^{(n)} |
| `bpP:p8:rho`, `bpP:p8:laplace-def`, `bpP:p8:coeffs` | secular polydisc 𝒩(ρ); Laplace coefficients; secular coefficients |
| `bpP:p9:good` | non-resonance to order four, Φ₄ |
| `bpP:p10:rnd-def`, `bpP:p10:Fc-def`, `bpP:p10:index-def` | Rüssmann nondegeneracy; symmetric products; index and amount |
| `bpP:p11b:beta-def` | the torsion β̂ |
| `bpP:p12:data`, `bpP:p12:perturbation` | the data of the application of P-G (items `bpP:p12:d-*` map to `bpP:p12:data`); perturbation and Birkhoff data as total functions |
| `bpP:p14:sb-Sdef` | the region 𝒮 of Part 14b |

**Section data.** Unlabelled paragraphs that fix data later proofs use are `prose-L…` coverage items with DISPOSITION
TODO (the pre-extraction ran with `--all-prose`). If a paragraph fixes data or states a consumed fact, make it a
`definition` node `<section label>#data` (or a `claim` node `<label>#<slug>`) and link its consumers; pure notation is
mapped to the consumers with a reason. Candidates found mechanically (opening "Fix", "Throughout", "Setting", "Let"):

| Coverage item | Content | Suggested node |
|---|---|---|
| `p0:prose-L193-L193` | G, m₀ > 0 and planet weights m_i > 0 throughout §physdefs | notation of the physical definitions (map) |
| `p1:prose-L17-L17` | Ph_d, the form Ω = vᵀM₀w, X_ℓ, ι_k, Lean totality of X_H | `bpP:p1:conv#data` |
| `p2:prose-L167-L169` | setting of the oscillator extension (domains Dom_v(S), v = (r, r_p, r_q)) | `bpP:p2:<section>#data` |
| `p3b:prose-L43-L43`, `p3b:prose-L148-L148` | the rescaling S and norm ¦·¦_*; K_Ω = Φ(D_* × ℝⁿ) | `#data` / claim if consumed |
| `p4:prose-L19-L20`, `p4:prose-L153-L154` | V, A, d from P-G; the oscillator shell A_sh | `bpP:p4:conv#data`, `#shell` |
| `p6:prose-L20-L24` | n, G, m₀, m_i, μ, ε, ℓ = ¦·¦ throughout Part 6 | `bpP:p6:conv#data` |
| `p7:prose-L27-L33`, `p7:prose-L188-L188` | Kepler-problem data; coordinates w of the product chart | `#data` nodes |
| `p8:prose-L17-L19` | the chart Ψ^{(n)}, f̂_fix, f̂_mov, averages ⟨·⟩, S_fix, S_mov, the dictionary to `secularAverage`, 𝒩(ρ) | `bpP:p8:conv#data` |
| `p10:prose-L15-L21` | n ≥ 2, κ, m, the axis set 𝒜_n | `bpP:p10:conv#data` |
| `p11b:prose-L14-L16`, `p11b:prose-L120-L124` | n = 2 data and objects of Parts 7–9; the open action set 𝒪 and Ω | `#data` nodes |
| `p12:prose-L15-L20` | the data of P-PLANAR, the index dictionary, (I, φ, p, q) = (Λ, λ, η, ξ) | `bpP:p12:sec-set#data` |
| `p14a:prose-L260-L262` | data of Lemma `bpP:p14:enlarge` and its successors for §sec-stopped | `bpP:p14:sec-stopped#data` |
| `p14b:prose-L177-L177` | σ ∈ [29/100, 31/100], μ > 0 fixed in §sb-flow | `bpP:p14:sb-flow#data` |
| `p14b:prose-L25-L31` | coordinates, the 14b secular objects (the seven prose anchors above), Δ, X_H in (λ, ξ; Λ, η) | map to the prose anchors and consumers |

Part-level convention paragraphs, introductions, outlines, "Deviations", "Suspected source errata", "Doubts",
"Forward references", "Label index", "External facts used" and "Module plan" paragraphs are excluded as
notation/outline/administrative, but record a convention they fix in the source fields of the nodes that rely on it,
and check that every result named in an "External facts used"/"Cited results" list is linked from the proof that uses it.

## External inputs and imported results (EXTERNAL_POLICY)
- **Track-P externals.** The labelled items of the parts' external-fact lists, `KIND: external`, `LEAN_STATUS:
  EXTERNAL` (62 items; the pre-extraction ran with `--external-pattern ':(?:ext|x|e|f|sb-x)-'`):
  `bpP:p1:ext-{comp,ift,area,borel,det}`; `bpP:p3:ext-{ift,fourier,weierstrass,banach,neumann,lip}`;
  `bpP:p4:ext-{tonelli,mvt,deriv,conn}`; `bpP:p6:ext-{chain,sqrt,top,sum,tri,meas}`;
  `bpP:p7:e-{ift,hol,banach,forms,dense,cov,comp}`; `bpP:p8:e-{param,diff,taylor,weyl,poch}`;
  `bpP:p9:e-{spec,ift,fts,id,ibp}`; `bpP:p10:f-{id,fts,spec,pol,leib}`; `bpP:p11b:e-{ode,id,jet,ca}`;
  `bpP:p12:f-{comp,unif,borel,mono}`; `bpP:p14:x-{planar,top,calc,cx,id,hol}`; `bpP:p14:sb-x-{alg,top,int,diff,calc}`.
  Not externals: `bpP:p2:a1`, `a2`, `o1`, `o2` (premise items of `bpP:p2:nfb`), `bpP:p12:d-*` (items of `bpP:p12:data`),
  `bpP:p14:ch-*` (items of the chart proposition of Part 14a): they map to their enclosing node.
  - **Alias rule.** An item that only restates another node (another P external, a K/I/N external, or a result proved
    elsewhere) is `EXCLUDED` with the reason "alias of …"; its consumers depend on the cited node directly. Candidates
    (the item cites the other label; decide from the text): `p12:f-comp` (`p1:ext-comp`), `p12:f-borel`
    (`p1:ext-borel`), `p14:sb-x-diff` (`p8:e-diff`, "used for k = 2"), `p10:f-id`, `f-fts`, `f-spec` (`p9:e-id`,
    `e-fts`, `e-spec`/`e-ift`), `p11b:e-id`, `e-jet` (`p9:e-id`/`p10:f-id`, `p8:e-taylor`), `p7:e-ift` (`p1:ext-ift`),
    `p7:e-banach`, `p3:ext-banach` (`K:bp:p1:ext-banach`, `ext-mvt`), `p4:ext-mvt` (`K:bp:p1:ext-mvt`), `p7:e-hol`,
    `p8:e-param`, `p7:e-forms` (I's `x-hol`, `x-weier`, `x-param`, `x-forms`), `p14:x-id`, `x-hol`
    (`K:bp:p1:holomorphic-analytic`), `p3:ext-fourier`, `ext-weierstrass`, `ext-lip` (K externals/results).
    An item that adds content (a further case, a different carrier) stays an external with a NOTE naming the related
    node. `p7:e-cov` points at `I:bpI:p7:x-change`, which I's graph EXCLUDES: keep `p7:e-cov` as a track-P external.
  - `bpP:p11b:e-ca` ("finite exact computation") is an external for exact rational/polynomial identities; the CAS and
    numerical generation of the expansions (§`bpP:p11b:sec-num`) is provenance. If a proof relies on a numerical check
    rather than an exact identity, that is a `SOURCE_GAP` step.
- **Imported nodes.** Every result of another track's blueprint that a proof uses (`\Kref`, `\Iref`, `\Nref`) is an
  IMPORTED node, not proved in this corpus.
  - **ID:** `K:<node>`, `I:<node>`, `N:<node>` (the owning graph's node: `docs/graph/K/DEPGRAPH.md` (published),
    `docs/graph/I/DEPGRAPH.md` and `docs/graph/N/DEPGRAPH.md` (both assembled, global review open)).
  - **Fields:** `KIND: external`, `LEAN_STATUS: EXTERNAL`, `PROOF_SOURCE: -`, `DEPS: -`; STATEMENT_SOURCE in the owning
    blueprint; source fields copied from the owning graph by the pre-extraction.
  - **NOTE:** `IMPORTED: proved in the track-X graph, node <label>; shared Lean provider …`; the I and N imports add
    "Ownership pending publication of the track-I/N graph …": re-run `inp_depgraph_imports.py` when those graphs are
    published (a node they drop or exclude becomes a P-owned node, below).
  - **Packet `P-imports`** (93 nodes now: 20 K, 18 I, 55 N; 73 referenced by candidates, 20 unreferenced). Writer-owned,
    not extracted. `inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P` lists missing,
    unreferenced and not-in-owner imports, adds (`--add`) and prunes (`--prune`).
- **Cross-graph ownership (I/N SPEC rulings, symmetric).** A cited I or N result that the owning graph EXCLUDES ("outside
  every root closure; cited by / owned by the importing graph (track P)") is owned by *this* graph if a track-P proof
  uses it: after extraction the writer converts the import into an ordinary track-P node whose corpus is the blueprint-I/N
  label (new writer slice `P-xown`, extracted and reviewed like the others, as I's `I-nown`), adds the file to
  CORPUS.sha256 and retargets the consumers. The ten candidates (blocks in `P-imports` with `WARNING` and TODO fields):
  - I: `bpI:p7:scaling`, `bpI:p7:circular`, `bpI:p7:means` (Kepler fundamentals, Part 7), `bpI:p7:x-change` (external
    item; see `p7:e-cov` above), `bpI:p8:min-distance` (Part 6 L237);
  - N: `bpN:p3:newton-reduction` (Part 1 L232/L244, Part 6 L180; also owned by I's graph, `I-nown`: each importing graph
    owns a copy with the same blueprint-N locator), `bpN:p3:newton-continuation` (Part 1 L232), and the remarks
    `bpN:p4:dictionary`, `bpN:p6:deviations`, `bpN:p6:iterative-special` (Part 2 L28, L46, L131, L256).
  An extractor that finds only a pointer, a comparison or provenance deletes the edge (the import is then pruned); a
  remark is owned only if a P proof consumes a fact it states.
- **Other gaps.** A proof that uses a fact which is neither proved in the corpus, nor a track-P external, nor an imported
  result gets a step node whose NOTE begins `SOURCE_GAP:`. Never a silent edge, and never an additional external or
  import without a SPEC revision. The 14 in-scope `\sourcegap` notes (Part 0 L362, L376; Part 2 L49, L196; Part 3a L86;
  Part 3b L219; Part 5 L69, L306; Part 7 L183; Part 8 L157, L228; Part 9 L146; Part 10 L108, L158) record gaps *in the
  pinned papers*; map each to the node(s) the blueprint supplies for the bridge, unless the blueprint really leaves it
  open. Part 0 L376–378 (`sourcegap` of P-PLANAR: "The route is not signed off as proved …") predates Part 12's route-(c)
  proof: map it to `bpP:p12:planar` and the Part 11b/12 nodes that close it, and report the stale sentence.

## Conventions to watch (the global reviewer checks these across slices)
- **Ambient spaces and norms.** ℝ^d = `Fin d → ℝ` with the max norm; Ph_d = ℝ^d × ℝ^d with the max of the two
  components and product Lebesgue measure; physical planar lengths ¦x¦ = √(x₁² + x₂²) (`planeLength`), never the max
  norm; Fourier indices k ∈ ℤ^d. Track N's weighted norm Σ_k ¦f̂_k¦ e^{2π¦k¦₁σ} with geometric widths σ = s_CP/(2π)
  (norm ruling of PLAN.md) in Parts 2, 3, 5.
- **Phase order and blocks.** z = (z₁, z₂) = (positions, momenta); in P-G z = (φ, q; I, p) (`assemble`); fast part
  (first a coordinates) and slow part (last b) of each block. Charts: w = (λ, ξ; Λ, η) (Parts 7–12, 14b) and the
  dictionary (I, φ, p, q) = (Λ, λ, η, ξ) (Part 8, Part 12); bodies q^{(i)} at index k + 2i (`finProdFinEquiv`).
- **Periods.** Torus parameters have period 1 for every torus predicate; the cylinder tori of P-G keep canonical fast
  angles of period 2π (the frequency w is physical frequency / 2π); CP's 2π angles are converted once (Part 1,
  `bpP:p1:period-convert`, and Part 3's `period-dictionary`); Parts 7–8 and 14b use 2π-periodic angles. Track every 2π.
- **Index and axis order.** Lean planets 0, 1, … with *increasing* axes; Parts 7–11b number planets 1, 2 (Part 12
  dictionary); Fej04r uses decreasing order (Part 8 Remark `bpP:p8:dictionary`).
- **Masses and normalisations.** P-G/P-PLANAR keep G, m₀ general (κ = Gm₀); the D25 objects fix G = m₀ = 1
  (`IsMovingSolutionOn`, Part 0 §d25-sec, Part 14). The frozen √(2Λ) normalisation halves every Fej04r (35)–(37)
  coefficient (E-P-Fej04r-3); CP11 (B.2), (B.6) errata (E-P-CP11-1/2): Part 11b recomputes the torsion from Part 8.
- **P-G (`bpP:p0:pg`).** a, b ≥ 1; data (V, W, A, d, r₀, μ₀, B, H₀, P, P₀, Ω, β) fixed first; (H1) joint real
  analyticity on [0, μ₀] × closure of 𝒞(V, r₀); (H2) periodicity for μ ∈ [0, μ₀]; (H3)–(H6); r_*, C, c depend on all
  data, not on r, μ; 0 < r < r_*, 0 < μ < μ₀, μ < r⁶/(log(1/r))^c; C is both the frequency bound and the measure
  constant; strict upper bound meas(S ∩ ℱ) < meas ℱ.
- **P-PLANAR (`bpP:p0:planar`).** Data (G, m₀, m, a, η) with m_i > 0, 0 < a₀ < a₁ (no separation), η > 0; then
  (μ₀, d, D) with 0 < d < D; then μ ∈ (0, μ₀); then S with 0 < meas S < ∞ and MovKol(…, n = 2).
- **P-AMD-CONFINEMENT (`bpP:p0:amd`).** n ≥ 2; admissible box ℬ; μ, T, δ > 0 with the 2δ margins and A₀ + 2nδ < A₁;
  z₀ ∈ LowAMD(m, ℓ⁰, u⁰, A₀) with the stopped bound; no other dynamical premise; conclusions (a)–(d) on [−T, T].
- **P-EXP-SAFE (`bpP:p0:expsafe`).** n ≥ 2, ℬ; then μ_*, c, C > 0; then μ ∈ (0, μ_*) and z₀ in the inner region;
  T = exp(cμ^{−α_n}); drift ¦a_i(z(t)) − a_i(z₀)¦ ≤ Cμ^{β_n}; α_n, β_n of `d25-exponents` (6n² − 3n + 14); it applies
  N-PARTIAL-CONVEX (`N:bpN:p0:partial`) in the Poincaré chart: check every premise of that import at its application.
- **P-SECULAR-BOX (`bpP:p14:sb-safety`, `sb-cited`).** σ ∈ [29/100, 31/100], μ > 0 (no smallness), m = (1, σ),
  Box_σ(w₀); global solution on ℝ, uniqueness among regular solutions on open convex U ∋ 0, the rational bounds of (c)
  for every t and F; `sb-cited` substitutes σ = 476/1591, μ = 4773/5000000.
- **Constants.** Record every dependence list exactly as stated and the order of choice (Part 5 `bpP:p5:order`,
  Part 12 `bpP:p12:quantifiers`, Part 14a `bpP:p14:constants`). Part 5's perturbation size is E = Cμε⁵ (P3-05).
- **Lean totality.** `bpP:p0:totality`, `bpP:p0:d25-totality`, `bpP:p14:sb-totality` explain guards of total
  functions; they are not hypotheses. A remark is a node only if a proof consumes a fact it states.

## Node threshold
As in tracks K, I and N:
- every labelled result environment, every `\proofstep` and every labelled external item is a node, unless excluded
  with a reason; item and equation labels inside a result map to their enclosing node in the coverage;
- a further step node, ID `<parent>#<slug>`, only for an unmarked substantive obligation (nontrivial estimate or
  application, construction, case split, witness or parameter choice, quantifier closure, carrier change, reused
  intermediate claim); no nodes for routine algebra or exact rational arithmetic checked by `norm_num`.

**Remarks.** The pre-extraction made every remark a `claim` node. Administrative remarks are deleted from the nodes file
and `EXCLUDED` in the coverage: deviations, errata, doubts, provenance, "use"/"consumers"/"what Part k must supply"/
"interface report" summaries, quantifier audits that restate a proof (unless consumed), route remarks, label indexes,
Lean-totality notes no proof consumes, "Module plan" paragraphs. Examples: `bpP:p0:scope`, `bpP:p1:vs-N`,
`bpP:p1:measure-use`, `bpP:p2:nums`, `bpP:p2:diff`, `bpP:p2:use5`, `bpP:p4:use5`, `bpP:p5:use5-fix`, `bpP:p5:quant`,
`bpP:p6:reduction-role`, `bpP:p6:vs-I`, `bpP:p6:mp-use`, `bpP:p8:no76`, `bpP:p8:use11`, `bpP:p8:cp11-check`,
`bpP:p10:n2-check`, `bpP:p10:consumers`, `bpP:p11b:remain`, `bpP:p12:contract`, `bpP:p14:amd-uses`,
`bpP:p14:st-limits`, `bpP:p14:index`, `bpP:p14:sb-route`, `bpP:p14:sb-consistency` (confirm each against the text; a
remark whose stated fact a proof consumes, e.g. an order-of-constants remark cited as the place where a constant is
chosen, stays a node).

**Reachability.** Every graph node must feed at least one root. A labelled result or step that no root's proof consumes
is `EXCLUDED` with the reason "outside every root closure of track P" (name the check made). Expected exclusions:
results that only P-FIXED consumes (e.g. `bpP:p6:fixkol-assembly`, `bpP:p6:reconstruction-fixed`, the fixed-Sun clauses
of Parts 7–10 if no P-PLANAR or Part 14 proof uses them) are excluded with "outside every root closure of this graph
version; consumed by P-FIXED (deferred)", so that the P-FIXED revision restores them. Track I/N exports: a P result
that only another track uses is excluded with "outside every root closure; owned by the importing graph (track I/N)".

## Edges
- Direct uses only, conjunctive, `consumer -> prerequisite`. **One `EDGE:` line per dependency and per route.** Never a
  raw `|` inside an EDGE rationale (it is the field separator): write `¦` for absolute values and norms.
- **Not edges:** forward pointers; comparisons and consistency checks (Part 14b's cited Part 7/8 results are "consistency
  checks; the proofs below do not depend on them", Remark `bpP:p14:sb-consistency`); provenance (`\source{…}`; the
  pre-extraction tags these candidates "in \source: provenance unless consumed"); "does not apply"/"replaces"/"not
  used" mentions (e.g. `bpP:p8:no76`); "pattern only" citations (14b L42, `\Nref{bpN:p3:ham-reduction}`).
- **Statement references dropped.** The pre-extraction dropped references to an anchor from the parts that prove or set
  it up (`--proved-in`): `bpP:p0:pg` from Parts 1–5, `bpP:p0:planar` from Parts 6–10, 11b, 12, `bpP:p0:amd` and
  `bpP:p0:expsafe` from Part 14a. References to `bpP:p0:pg` from Parts 6–12 are kept (P-PLANAR applies P-G) and so are
  14b's references to `bpP:p14:sb-safety` (not passed to `--proved-in`): delete those that only name the theorem's
  hypotheses, and depend on the definition anchors they use.
- **Anchor statements.** The roots and the definition anchors use most frozen definitions by name without a `\ref`
  (`Phase`, `fast`, `slow`, `assemble`, `planeLength`, `bodyVector`, `movingHamiltonian`, `NoCollision`, …): the P-p0 and
  P-p14b extractors add these statement edges, as track I's I-p0 and N's N-p02 did. The writer added Part 7's
  unqualified `\frozen` names (`bpP:p7:kepler-data`, `bpP:p7:poincare-def`) as candidate edges to the anchors.
- **Candidate cycles (34, pre-extraction).** All pass through a remark, an interface/forward pointer or a statement
  reference and must be gone after extraction: e.g. `bpP:p0:birkhoff#HasSecularBirkhoffForm ↔ bpP:p0:pg`,
  `bpP:p3:avg ↔ bpP:p2:avg`/`bpP:p2:diff` (Part 3's interface is proved in Part 2: the edge is `p3:… → p2:avg`, never
  back), `bpP:p3:two-scale-kam ↔ bpP:p3:iterative`/`estimates`/`seq`, `bpP:p5:order ↔ kam-hyp ↔ params`, `bpP:p2:nfb
  ↔ nums`, `bpP:p4:two-scale-diophantine-measure ↔ lemma-3-1`, `bpP:p7:poincare-def ↔ bpP:p7:d25`, `bpP:p8:quartic ↔
  same-jets`/`cp11-check`, `bpP:p10:interface ↔ stability`, `bpP:p12:data ↔ perturbation`, `bpP:p14:expsafe ↔
  constants`. A definition depends on what it uses, never on the results stated about it.
- **Alternatives** ("alternatively …", "either … or") become `KIND: route` nodes owned through `ROUTE_FOR`, listed in the
  owner's `ROUTES`, each with its own EDGE. Route *decisions* (PLAN.md route (c); "not used") are not alternatives.

## Roles
- **Writer:** `claude-suborch-INP` (the I/N/P sub-orchestrator). It is the only editor of `DEPGRAPH.md` and
  `DEPGRAPH_COVERAGE.md`, assembled from the slice packets with `inp_depgraph_assemble.py`. It owns `P-imports` (and
  `P-xown` when created).
- **Extractors:** Sonnet agents, one per slice, tagged `sonnet-extract-<slice>`; each edits only its own two packet
  files `docs/graph/P/packets/<slice>.{nodes,coverage}.md`.
- **Slice reviewers:** GPT-6.1-Sol (Codex, medium effort), tagged `sol-review-<slice>`, distinct from the extractors.
  `P-imports` is reviewed by a reviewer that is not the writer, against the owning blueprints.
  - **Reviews spanning several slices are split per owning slice before they are applied** (`inp_depgraph_apply_review.py`
    applies one slice's fenced blocks to that slice's packet).
  - **A node or coverage item rewritten by a reviewer gets a different reviewer** (delta review, `DELTA-BRIEF.md`).
  - Reviewers end with a whole line `READY <marker>`.
- **Global reviewer:** a fresh GPT-6.1-Sol session, tagged `sol-global-P`, distinct from all of the above.

## Slices
Line-addressable, aligned to statement/proof units, recorded in `docs/graph/P/packets/slices.json`. Counts from the
pre-extraction (`--all-prose`) after the writer's binding step; "TODO" counts coverage items with DISPOSITION TODO.

| Slice | Source range | Nodes | Coverage | TODO |
|---|---|---|---|---|
| `P-p0` | all of Part 0 (58 anchors: 54 definitions, 4 theorems; 3 remarks) | 61 | 115 | 7 |
| `P-p1p2` | Parts 1 and 2 (Hamiltonian tools; two-scale averaging) | 85 | 130 | 21 |
| `P-p3` | Parts 3a and 3b (two-scale KAM theorem: iteration, limit, tori, measure) | 96 | 131 | 11 |
| `P-p4` | Part 4 (P-G measure estimates) | 46 | 68 | 9 |
| `P-p5` | Part 5 (P-G assembly, `bpP:p5:main`) | 88 | 114 | 8 |
| `P-p6` | Part 6 (Newtonian models, reduction, reconstruction, tubes) | 64 | 88 | 10 |
| `P-p7` | Part 7 (Kepler problem, regular Kepler equation, Poincaré and product charts) | 60 | 87 | 15 |
| `P-p8` | Part 8 (secular form, symmetries, quartic interface) | 56 | 86 | 15 |
| `P-p9` | Part 9 (secular spectrum) | 54 | 81 | 11 |
| `P-p10` | Part 10 (nondegeneracy, good set) | 61 | 93 | 14 |
| `P-p11` | Part 11 (CP09 preparation: working chart, KAM input `bpP:p11:kam-input`, wrapper `bpP:p11:wrapper`) — P-FIXED revision | 60 | 85 | 17 |
| `P-p11a12` | Parts 11a-1 (weak measure) and 11a-2 (cutoff step) — P-FIXED revision | 102 | 169 | 31 |
| `P-p11a3` | Part 11a-3 (iteration, parameter selection, admissible budget) — P-FIXED revision | 73 | 124 | 23 |
| `P-p11a45` | Parts 11a-4 (limit torus, family, displacement) and 11a-5 (quantitative theorem) — P-FIXED revision | 70 | 131 | 37 |
| `P-p13` | Part 13 (P-FIXED assembly, `bpP:p13:fixed`) — P-FIXED revision | 37 | 61 | 14 |
| `P-p11b` | Part 11b (planar torsion, Birkhoff normalisation) | 61 | 87 | 14 |
| `P-p12` | Part 12 (P-PLANAR assembly, `bpP:p12:planar`) | 51 | 72 | 10 |
| `P-p14a1` | Part 14a L1–156 (conventions, elements, moving-Sun ODE, proof of P-AMD-CONFINEMENT) | 45 | 55 | 4 |
| `P-p14a2` | Part 14a L157–end (enlarged domain, perturbation, lifting, stopped bound from N-PARTIAL-CONVEX, proof of P-EXP-SAFE) | 56 | 72 | 9 |
| `P-p14b` | Part 14b (18 anchors; P-SECULAR-BOX proof) | 84 | 122 | 13 |
| `P-imports` | imported nodes `K:*` (20), `I:*` (18), `N:*` (55); writer-owned, not extracted | 93 | 93 | – |

Total 1061 nodes (968 corpus, 93 imports), 1494 coverage items, 171 with DISPOSITION TODO (initial version). The
P-FIXED revision adds 342 draft nodes and 570 coverage items (122 TODO) in the five new slices, the anchor
`bpP:p0:fixed`, 7 restored node blocks (8 coverage items flipped, with `bpP:p9:dict`) and 15 imports (`P-imports` 72 → 87 after the earlier prunes).
- A node belongs to the slice containing the first line of its STATEMENT_SOURCE; coverage items follow their SOURCE
  line. The Part-0 anchors belong to `P-p0`, the Part-14b anchors to `P-p14b`; a root's proof steps belong to the slice
  that contains them (`bpP:p5:main` and its steps: `P-p5`; `bpP:p12:planar`: `P-p12`; `bpP:p14:amd`: `P-p14a1`;
  `bpP:p14:expsafe`: `P-p14a2`; `bpP:p13:fixed`: `P-p13`).
- Dry run: `inp_depgraph_slice_check.py docs/graph/P/packets <slice> --structural` reports 0 problems for all 16 slices;
  after the P-FIXED revision, 0 problems for all 22 slices (two writer fixes first: the locator of `stepP:p11a:il-map`,
  L312-L311 → L312-L312, an inline `\end{proof}`; `stepP:p13:pg-h1`'s alias edge, above).
- `P-p11a12` (102 draft nodes) follows the suggested pairing; it may be split into `P-p11a1` (44) and `P-p11a2` (58) at
  the extractor launch if it is too large (the ranges are per file).

## Change log
- 2026-10-27: initial specification (Phases 1–2: corpus pin, pre-extraction, writer binding, slice packets, dry run).
  From the repository root (tools in `/mnt/HC_Volume_106379410/orchestrator-tools/`; DRAFT a scratch copy, then copied
  to `docs/graph/P/draft`):

  ```
  python3 -I inp_depgraph_preextract.py --root . --blueprint blueprint-P --track P \
    --manifest manifest/frozen-anchors.json --out DRAFT --all-prose \
    --external-pattern ':(?:ext|x|e|f|sb-x)-' \
    --parts p0-conventions.tex,p1-hamiltonian-tools.tex,p2-averaging.tex,p3a-two-scale-iteration.tex,\
  p3b-two-scale-limit.tex,p4-pg-measure.tex,p5-pg-assembly.tex,p6-newtonian-models.tex,p7-kepler-poincare.tex,\
  p8-secular-form.tex,p9-secular-spectrum.tex,p10-nondegeneracy.tex,p11b-planar-torsion.tex,p12-planar-assembly.tex,\
  p14a-amd-expsafe.tex,p14b-secular-box.tex \
    --proved-in "bpP:p0:pg=p1+p2+p3a+p3b+p4+p5,bpP:p0:planar=p6+p7+p8+p9+p10+p11b+p12,bpP:p0:amd=p14a,bpP:p0:expsafe=p14a"
  python3 -I docs/graph/P/draft/writer-bind-p14b.py . DRAFT   # 14b anchors, Part 7 \frozen names, P-FIXED parked
  python3 -I inp_depgraph_split.py --draft docs/graph/P/draft --slices docs/graph/P/packets/slices.json \
    --out docs/graph/P/packets
  ```

  Then: NOTE "ownership pending" appended to the I/N imports; the six stale `N:bpN:p4:*` locators remapped (Corpus);
  `p0:sourcegap-L387` excluded with P-FIXED. The pre-extraction report (`draft/report.json`): 2 skipped section labels
  (`\Nref{bpN:p4:s-ext}`, `\Nref{bpN:p6:s-ext}`, Part 2 L36), 26 unresolved citations (all to the ten cross-ownership
  candidates above), 23 unresolved `\frozen` names (all bound by the writer step), 34 candidate cycles.

- 2026-10-28: P-FIXED revision (Roots and anchors). Corpus + the seven files of Parts 11, 11a-1…11a-5, 13 (hashes in
  CORPUS.sha256; no earlier pin changed). The tools' part key `p\d+[a-z]?` maps `p11a1…p11a5` all to `p11a`, so the
  pre-extraction and split were run from scratch copies with the key `p\d+[a-z]?\d*` (the orchestrator copies need the
  same one-line fix before `slices.json`, whose ranges use the parts `p11a1…p11a5`, is split again). Pre-extraction of the
  whole corpus into a scratch draft, the 2026-10-27 command with the seven files added to `--parts` and
  `bpP:p0:fixed=p13+p11+p11a1+p11a2+p11a3+p11a4+p11a5` added to `--proved-in`; `writer-bind-p14b.py` re-run on it; split
  with the five new slices into a scratch directory, and only the five new slice packets copied (no existing packet
  overwritten). Then the restorations above (blocks copied from the scratch draft), the anchor block in `P-p0`, and
  `inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P --add` (I and N graphs published):
  15 imports added (K: `bp:p0:domains#{actionNbhd,complexStrip,fundamentalDomain}` — the extractor keeps only those
  `bpP:p11a:domain-def` uses —, `bp:p1:{cauchy-strip,exp-sums,ext-cauchy,ext-measure,fourier-basic,iteration,lipeo,
  summation,uniform-limits}`; N: `bpN:p4:{bracket,ext-param,general-cauchy}`), no NOT-IN-OWNER case (no new
  cross-ownership candidate), one pre-existing unreferenced import `N:bpN:p3:ham-periodic` (not pruned).

## Sub-orchestrator rulings (2026-10-27, before extraction)
- Scope: roots P-G, P-PLANAR, P-AMD-CONFINEMENT, P-EXP-SAFE, P-SECULAR-BOX (two theorems); P-FIXED deferred to a later
  revision with Parts 11, 11a-*, 13. All Part 0 frozen definitions (D20, D25) are anchors.
- Imports: `\Kref` through K's graph, `\Nref` through N's (ownership pending N publication), `\Iref` through I's;
  shared-ownership rule as in the I/N SPECs (above).
- Slices: one or two parts each, big parts split, ≈40–90 nodes (15 corpus slices; `P-p3` at 96 keeps the two-scale
  theorem's two files together).
- 2026-10-28 (writer ruling, after the P-p7 extraction): `bpP:p7:average`, `stepP:p7:av-cov` and the external
  `bpP:p7:e-cov` are EXCLUDED as outside every root closure (Part 14b cites `average` only in consistency checks,
  provenance and comparisons; the earlier "keep e-cov" note is superseded). Restore all three together if a consumer
  is found. `bpP:p7:lattice` and `stepP:p7:la-*` are deferred with P-FIXED (consumed only by Part 11); restored by the P-FIXED
  revision (2026-10-28).
