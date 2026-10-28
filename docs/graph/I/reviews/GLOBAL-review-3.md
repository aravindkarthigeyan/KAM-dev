# Track I global review — round 3

Reviewer: **sol-global-I**. Marker: **global-I-3**.

**Verdict: PASS** for the source dependency model assembled at **12f36c4**, including its four remaining explicit SOURCE_GAP records. G01–G03 are now addressed by the written source and matching dependency records; G04–G06 do not regress. G07 is handled under this round's explicit instruction that the dashboard is written at publication. The strict record/topology validation leaves only GLOBAL_REVIEWER/REF placeholders.

GLOBAL_REVIEW_REF: docs/graph/I/reviews/GLOBAL-review-3.md

This is source-model acceptance, not unconditional mathematical closure, a Lean-proof certificate, or acceptance of an unpublished P owning graph.

## Scope and diff audit

Compared **e86dfb0 → 12f36c4** over `docs/graph/I` and `blueprint-I`, including the complete graph/coverage records, the source edits, the corpus pins, and both amendment delta reports. The source edit is commit **376ce2c**, “blueprint-I Part 1: close graph global-review gaps G01-G03 …; Part 7 symplectic transfer domain wording”. The checkout HEAD was **12f36c4**. No graph/source changes were pending in the working tree during verification.

The graph delta adds exactly eight nodes: `bpI:p1:ext-neumann`, five `stepI:p1:eb-holo-*` children and two `stepI:p1:geo-red-*` children. It removes exactly the three obsolete imports `K:step:p2:fb-holo`, `K:step:p2:geo-domegak`, `K:step:p2:geo-ered`. Coverage adds/removes those same IDs. No other coverage disposition or exclusion reason changes, after accounting for locator remapping and review attribution.

After normalizing line numbers and review attribution, the only changed pre-existing node records are `eb-holo`, `geo-de`, `geo-red`, `rd-consequence`, `bpI:p7:symplectic`, and `stepI:p7:sy-field`. Those changes correspond to the actual source repairs. For changed statement/proof locators on retained nodes, **175 spans are literally unchanged source text**; the other **15 spans** are exactly the edited obligations and their enclosing proof regions. All **450 assembled node records**, including complete EDGE lists, match their packets. The reviews were used as provenance and inventories; their verdicts were checked against the actual source and records.

The four root records are byte-for-byte unchanged as parsed records. The frozen declarations, Part 0, manifest and import pins did not change in this delta. All **34 anchor identity tuples** still match the current manifest; all **416 non-anchors** have empty FROZEN_* fields. No manifest-state field or Lean implementation was used.

## G01–G07 verification

| Finding | Verdict | Verification |
|---|---|---|
| **G01 — A5 re-entering no-A5 geometry** | **PASS — source and model repaired** | `blueprint-I/parts/p1-iso-linear.tex:535–559` gives the explicit derivative/transpose bounds and both local geometry calculations. `stepI:p1:geo-de`, `geo-red-domega`, `geo-red-ered` and their parent transcribe those calculations. The stronger K geometry-step imports are gone, including their coverage items and all prerequisite edges. Their remaining mentions explicitly say “compared with, not used”. No ordinary torsion-inverse premise is introduced. |
| **G02 — uniform frame premises in generic holomorphy** | **PASS — source and model repaired** | Part 1 :130–146 now proves regularity locally: DK and G, inversion of G, field composition, DN/torsion, then the conclusion. The five new substeps have the setting/package and analytic-operation edges. The removed `fb-holo` import is not used as a prerequisite. No uniform ball margin, global DK bound or Gram-inverse bound is inferred from pointwise regularity. |
| **G03 — radius-one versus half-radius Neumann** | **PASS — source and model repaired** | Part 1 :101–105 states the radius-one criterion and includes the finite-dimensional injectivity argument. `bpI:p1:ext-neumann` at `docs/graph/I/DEPGRAPH.md:1114` transcribes that conditional invertibility statement, without an inverse norm estimate. Part 1 :516–521 and the `rd-consequence` edge use this exact criterion. The half-radius K lemma is no longer a prerequisite of this branch. |
| **G04 — extended-torsion constant** | **PASS — no regression** | `bpI:p2:step` retains the corrected `2 m^2 C_DeltaScriptT d/delta^2` conclusion and matching constants EDGE. The entire record is unchanged from round 2 and agrees with Part 2 :78 and :238. |
| **G05 — P external boundary** | **PASS — no regression** | SPEC :149–153 and the graph header still authorize exactly the two P solution-definition imports. Both remain import leaves with empty frozen identities and pending P ownership. No new P import or additional consumer was introduced. |
| **G06 — N ownership certification** | **PASS — no regression; retention now checked** | The nine N records preserve the conservative ownership notes and their unchanged mathematical contracts. Unlike round 2, `docs/graph/N/DEPGRAPH.md` now exists: all nine owning node IDs are retained there, and their owning statement locators match the I imports exactly. The import checker reports no pending N owner. Both P owners remain pending. |
| **G07 — dashboard/global metadata** | **PASS under this round's publication boundary** | The exact strict invocation below, with all four required flags, returns only the two GLOBAL_REVIEWER/REF diagnostics. This round explicitly defers writing the dashboard to publication; I did not invoke `--check`, which additionally requires a written current dashboard, or mutate the generated region. The writer must generate the dashboard and fill the accepted global metadata at publication, then run the publication check. This does not claim that the round-2 `--check` failure was already repaired. |

## New-record fidelity and conditional K contracts

**Direct holomorphy chain.** Read Part 1 :30–46, :101–105 and :130–146 against K Part 1 :227–236 and :404–407 and K Part 2 :56–69, :214–230. The setting gives open D and T_r, holomorphic H and K, K(T_r)⊆D, and det G≠0. Holomorphic-regularity applies to K and then N on their open strip, and to H/the field on D. The inverse lemma receives holomorphic G from `eb-holo-frame` and its determinant premise from the setting. Products/sums receive ext-chain edges. The field-along-K substep has the explicit `#k-bridge` edge for the K Hamiltonian result, with h:=H and its actual domain D. The common data include the required field derivative bounds, periodicity and reality; K Part 2 :67–69 explicitly permits the τ≥0 range used here.

The derived holomorphy of G, N, A and earlier substep conclusions are dependencies, not SOURCE_HYPOTHESES. The `eb-holo-torsion` record also has the direct frozen extended-torsion definition edge: its last row remains **DH(K)N**, including off invariance. The conclusion uses r>0 to include the real slice in T_r. The terse “K, H on T_r” quantifier wording is read with the explicit setting: H's domain is D; it is K and the composed quantities that are evaluated on T_r. No binder/domain change is introduced by those substeps.

**Geometry contracts.** Read Part 1 :535–559 against K Part 2 :306–317, :382–398, :441–463 and the constants/matrix records at :78–139; also K Part 1 :568–574 and :617–621. The parent supplies β>0, B_β(Kθ)⊆D, ‖DK‖≤σK, det G≠0, ‖G⁻¹‖≤σB, holomorphy, and ‖E‖≤ε on T_r. These are precisely A2–A4 plus the error bound where needed; none supplies or needs A5. The bridge supplies the common K standing context and object identifications, rather than blanket admissibility.

Since 0<δ and 2δ<r, the Cauchy loss is valid. The error takes values in a product with the max norm, identified with 2n coordinates for the transpose estimate. Thus `geo-de` derives ‖DE‖≤nε/δ and ‖(DE)ᵀ‖≤2nε/δ. The two new children use those derived bounds through the geo-de edge, not as additional source assumptions. They compute:

- ‖∂_ωΩ_K‖ ≤ (2n m+2n²m)ε/δ = 2n(n+1)m ε/δ;
- the E_red block rows are bounded by 2n²m²ε/δ and (2n²m+2nm²)ε/δ, respectively, each ≤ C_red ε/δ because m≥1 and C_red=2n(n+1)m².

All matrix/frame inputs have the correct carriers and norm conventions. Both children retain direct setting, bridge and constants edges. Their parent retains direct setting/constants edges and depends on both children. There is no inferred torsion bound or new constant dependence on K, H, ε or δ.

**Radius-one application.** With X=Ω₀E_sym, K matrix-norms supplies ‖X‖=‖E_sym‖<1. The new criterion supplies invertibility of I−X. The source explicitly factors Ω₀+E_sym=Ω₀(I−Ω₀E_sym), using Ω₀²=−I, so the determinant step follows. This does not import a half-radius inverse bound or change the generic `<1` hypothesis. The new external is an actual labelled external-list item in the edited source, explicitly identified in this assignment; its node does not invent an additional analytic input.

## Part 7 clarification and downstream application

`bpI:p7:symplectic` and `stepI:p7:sy-field` faithfully transcribe `blueprint-I/parts/p7-delaunay.tex:205–240`: U is the open physical target for C¹ H, and W=D_R∩Q⁻¹(U) is the open source for H∘Q. The field identity and C¹-curve equivalence hold on W. The symplectic identities and invertibility are supplied by sy-ext, not assumed in SOURCE_HYPOTHESES. Positions/momenta order and 𝕁=−omegaZero are unchanged.

Checked the downstream transfer at Part 7 :455–463: tr-cf supplies the collision-free target, tr-open supplies agreement of Hamiltonians on an open neighbourhood of the current source point, and tr-chain uses the chain rule and symplecticity there. The target/source clarification therefore introduces no unpaid premise at that application. For an arbitrary time set J, the solution predicate gives a two-sided derivative at each t∈J; continuity there places the curve locally in the open source neighbourhood. An interval-wide additional smoothness assumption on the competitor is unnecessary.

## Root and coverage regression checks

| Root | Source-model verdict | Current raw DEPS/ROUTES closure | Remaining explicit gaps |
|---|---|---:|---|
| `bpI:p0:g1` | PASS, with recorded obligation | 148 nodes | `stepI:p2:to-frame` |
| `bpI:p0:head` | PASS, with recorded obligations/routes | 299 nodes | preceding gap; `stepI:p3:to-torsion#p1-setting` on the citation alternative only |
| `bpI:p0:kepler` | PASS | 8 nodes | none |
| `bpI:p0:r3bp` | PASS, with recorded obligations/routes | 446 nodes | preceding two; `stepI:p7:cd-uc`; `stepI:p7:eh-delta` |

The four root source fields, quantifier orders, constant scopes, ≤ conclusions, ε=0 and μ=0 cases are unchanged. The isoenergetic frequency ray and ν→ν/2 margin, the period-one/2π conversion, max norms versus rad, and the physical uniqueness domain are unaffected by the delta.

All **450 nodes** feed the root union; unreachable nodes: **none**. The graph has **1,956 edges**, **four routes**, **four explicit source gaps**, **672 coverage items**, **194 exclusions**, and no topology-review queue. The original four gaps were not silently deleted or declared paid. The generic Part 3 citation-route gap remains optional because its direct flat route remains available.

Every new labelled obligation is covered, and the three pruned import items disappear together with their nodes. The exclusions of means/scaling/circular/newton/min-distance are unchanged. No new missing proof paragraph, package edge, reversed edge, unsupported source premise or substantive locator-remapping defect was found.

## Nonblocking publication bookkeeping

- SPEC :115–118 still has the pre-amendment explicit external-name list/count (“19 items”), which omits ext-neumann. Its general labelled-external-list rule, the new pinned source item, and this assignment expressly identify the added criterion. Refresh that enumerated inventory at publication; no additional external beyond this named item is accepted here.
- The nine N NOTE fields retain round-2 wording that the assembled N graph is absent. That absence wording is now stale, although the notes remain conservative rather than asserting unverified retention. This review has checked all nine IDs and locators against the now-existing N graph. Refresh the ownership notes with that evidence at publication. P retention remains pending.
- Some explanatory NOTE prose retains old inline line numbers after the mechanical remap. The operative STATEMENT_SOURCE/PROOF_SOURCE/EDGE locators were checked at the new positions; the old inline references do not change a contract or discharge an obligation.

These are documentation follow-ups, not new mathematical gaps or grounds to reverse the delta acceptance. No replacement node or EDGE is required by a new substantive finding in this round.

## Exact checks

```text
python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable
exit 1, only the permitted publication gates:
docs/graph/I/DEPGRAPH.md:12: review gate: missing or placeholder GLOBAL_REVIEWER
docs/graph/I/DEPGRAPH.md:13: review gate: missing or placeholder GLOBAL_REVIEW_REF

python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --report
exit 0: 450 nodes; 1956 edges; 34 anchors; 4 routes; 4 explicit gaps;
672 coverage items; 194 excluded; topology review queue 0.

python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/I/packets
exit 0:
I-imports: 56 imported nodes present, 56 referenced, 0 missing, 0 unreferenced
OWNER-PENDING P:bpP:p0:fixedsol#IsFixedSolution
OWNER-PENDING P:bpP:p0:newton#IsNewtonSolution
(no docs/graph/P/DEPGRAPH.md yet: re-check when that graph is published)

sha256sum -c docs/graph/I/CORPUS.sha256
all 9 entries OK.

sha256sum -c docs/graph/I/IMPORTS.sha256
all 7 entries OK.

Independent identity/topology/diff scans:
34 anchor identity tuples match; 416 non-anchor frozen identities empty;
450 assembled records match packets; unreachable IDs [];
8 added / 3 removed nodes and matching coverage items;
45 K owning IDs retained; all 9 N owning IDs and statement locators retained;
190 changed statement/proof locator fields: 175 literal unchanged spans,
15 intended edited-source/enclosing-proof spans.
```

The strict command intentionally does not use `--check` or `--write-dashboard`: the former additionally requires the generated dashboard to have been written, and this task defers that write to publication. No Lean build, implementation-scanning linter, axiom printout, provider/proof-body inspection, or state-changing git command was run. Axioms and implementation status are not assessed.

## Unresolved questions and handoff

No unresolved question blocks acceptance of this delta. The four named source gaps remain explicit future obligations; P ownership and the publication dashboard/metadata remain future checks. No new suspected blueprint, pinned-paper or frozen-statement defect was found in the edited source spans; the existing unaffected round-1 source issues remain recorded rather than silently repaired.

Only file written: `docs/graph/I/reviews/GLOBAL-review-3.md`.

READY graph-global-I-3
