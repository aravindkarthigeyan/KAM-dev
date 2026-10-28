# Track N global review, round 2

Reviewer: `sol-global-N`. Marker: `global-N-2`.

**Verdict: FAIL.** G2–G6 are resolved in the requested graph-review sense, but G1 is only partially propagated into the assembled graph. Three records still declare the missing zero-dimensional branch as a `SOURCE_GAP` and have no direct dependency on the new singleton-branch claim. The source repair is available; the remaining work is three graph-record amendments and their independent delta review. This is not a request to change a frozen theorem or add a source premise.

The requested strict linter has only the two permitted global-review metadata diagnostics. That structural result does not detect the residual G1 attachments.

## Scope and snapshot

Reviewed `git diff bbe3163 1a23e23 -- docs/graph/N blueprint-N`, including the native source changes, graph/coverage changes, external policy and pins. Read the round-1 findings and the GLOBAL-delta, AMEND-delta, AMEND-delta2 and WRITER-items-delta evidence as background; independently compared the actual repaired source spans, consumer records and their prerequisite contracts. The initial delta reports contained FAILs; their later corrections are present in the assembled records. Their PASS tables do not cover the three residual G1 records identified below.

The workspace graph, coverage, SPEC and pin files match the named `1a23e23` snapshot byte-for-byte. All fifteen N corpus pins and four import-file pins pass. Part 0 is unchanged. No provider or implementation was read, no Lean command was run, and no manifest state field was used. Only this report is written. The original source-only review restriction continues to exclude the repository-wide Lean source linter, builds and axiom-printing commands.

Snapshot SHA-256:

- `docs/graph/N/DEPGRAPH.md`: `a1188c07a51dfe412e6e8e977fdf34fff45cfd44ea501586a422e3f7defd52fb`.
- `docs/graph/N/DEPGRAPH_COVERAGE.md`: `fec03ecd96c96bc2ee49c3cc050a9ae08e2af759b325f46089e86ab7a60ce581`.
- `docs/graph/N/SPEC.md`: `7bdb7b882fb2c5b8b23236afacef964681e0746d1a41521ee52250ee1a8a6a16`.

## G1–G6 disposition

| Finding | Round-2 result | Independently checked evidence |
| --- | --- | --- |
| G1: positive-dimensional K imports / native n=0 branches | **FAIL, partial repair** | K decay, summation, averages and Fourier-basic(c) now retain their positive-dimensional source context. Part 4 `n-zero` at p4:55–57 and Part 1 p1:206,208 supply the missing source branch. The main decay/sum and Part 4 reconstruction/B.1 consumers link it, but the two Part 1 route/converse records and Part 4 b3-a do not. Details below. |
| G2: local real restriction | PASS | p12-averaging.tex:30 now proves the local restriction/inclusion/Re calculation on the actual open domain. `stepN:p12:fb-real` uses general holomorphic regularity, scalar restriction, realdomain and the frozen field definition; it no longer applies the entire-strip theorem. The unused K real-restriction import is pruned and its coverage is EXCLUDED. |
| G3: extended energy inequality | PASS | p11c-partial-stability.tex:89–100 proves extended energy conservation, Taylor only along the fast segment and the projection split separately. `ef-en` consumes the three child steps. General holomorphic regularity precedes scalar restriction; `ef-en-split` directly links ext-linalg and ext-norms. No projected autonomous canonical orbit, slow-direction coercivity or derived conclusion is assumed. |
| G4: weighted extended Taylor | PASS | p11b-partial-nf.tex:75–85 supplies the separate `ext-taylor` lemma and three proof steps for a C1 curve of X^c on an arbitrary open domain. `co-remainder` (:97) and `tr-taylor` (:104) use that lemma, with trajectory containment and holomorphy supplied. The canonical Part 5 theorem is no longer used as an applicable supplier. The factorial estimate is proved inline at :72; ext-e-upper supplies the sharper numerical bounds at :96–97. |
| G5: admitted external boundary | PASS | SPEC.md:148–157 explicitly includes p12 ext-cov/ext-tsum/ext-markov and p11 ext-e-upper. ext-dep remains a claim with its three explicit tool gaps, and compact-max remains a separately proved claim. Neither is promoted to an assumed external. |
| G6: writer coverage items | PASS for the two items | Both totality EXCLUDED and hessian#real-hessian NODE dispositions are REVIEWED with the separate writer-items receipt. All 1107 coverage items and all 728 nodes are REVIEWED. Empty global metadata is the expressly permitted gate. An optional dashboard freshness check still requires writer regeneration; it is reported separately below. |

## Remaining G1 finding — major

**R2-G1: three all-dimension consumer records were missed by the amendment inventory.**

Evidence:

- `docs/graph/N/DEPGRAPH.md:3331`, `bpN:p1:norm-convert#summation-route`: unrestricted n; `DEPS: K:bp:p1:summation` only; NOTE still says the n=0 case is not attached. The owning K input requires n≥1. The amended native source at `blueprint-N/parts/p1-interfaces.tex:206` explicitly separates the singleton case before offering K summation for n≥1.
- `docs/graph/N/DEPGRAPH.md:3358`, `bpN:p1:norm-convert#converse`: unrestricted n; `DEPS: K:bp:p1:summation` only; NOTE still declares the missing n=0 branch. This is a **common conjunctive prerequisite** of norm-convert, not an optional route. The native source at p1:206 now explicitly proves the zero-dimensional converse as `abs(u) <= abs(u)`, but the record's proof locator remains p1:202 alone.
- `docs/graph/N/DEPGRAPH.md:6348`, `stepN:p4:b3-a`: the all-n angular sum at `blueprint-N/parts/p4-weighted-norms.tex:135–136` still invokes the n≥1 K exp-sums input without the no-angle case. Its NOTE continues to call this branch unpaid. The new `bpN:p4:n-zero` at p4:55–57 states that every such K use is replaced by the singleton/no-angle branch at n=0. There are then no angular coordinates, so the angular sum is zero and the bound follows without applying K exp-sums.

The source is sufficient for these elementary cases. I am not alleging a new analytic defect or asking for new mathematics. The graph must attach the now-available branch at these consumers and reconcile their obsolete `SOURCE_GAP` notes. A helper existing somewhere else in a root closure does not supply a missing direct use under SPEC's consumer-edge rule. In particular, fixing nc-decay/nc-sum does not fix the independent summation alternative or the common converse.

The first two records were already present in the round-1 assembly; b3-a received the global-review gap note but no subsequent branch amendment. AMEND-delta's Part 1 inventory covers nc-decay/nc-sum only, and its Part 4 inventory does not include b3-a. AMEND-delta2's five-record scope is wholly in Part 11. Thus the separate delta PASSes do not resolve these omissions.

The following complete replacement proposals preserve the native hypotheses and conclusions, add only the branch attachment, and mark the new records PROPOSED for independent review. The converse proof locator is widened to include the explicit repaired proof. No coverage disposition changes or new nodes are needed.

```text
NODE: bpN:p1:norm-convert#summation-route
KIND: route
TITLE: Forward bound directly by the imported summation converse
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
CONTRACT_ID: bpN:p1:norm-convert#summation-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u : T_ρ → ℂ holomorphic, bounded and 1-periodic; ¦u¦_ρ = sup_{T_ρ}¦u¦; 0 < δ < ρ; for I-dependent u(θ,I), fixed I
SOURCE_QUANTIFIERS: n; ρ,δ,u with 0<δ<ρ
SOURCE_CONCLUSION: Σ_k ¦û_k¦e^{2π¦k¦₁(ρ−δ)} ≤ coth(πδ)^n ¦u¦_ρ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, bpN:p4:n-zero
ROUTES: -
ROUTE_FOR: bpN:p1:norm-convert
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | the explicitly offered direct alternative; all bounded holomorphic periodic premises and 0<δ<ρ are supplied
EDGE: bpN:p4:n-zero | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | the explicit n=0 singleton branch precedes the positive-dimension K summation alternative
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: For n=0 use the explicit singleton case at p1 L206 and bpN:p4:n-zero; for n≥1 use the imported K summation converse. The source supplies both cases, so the earlier missing-dimension SOURCE_GAP is resolved.
```

```text
NODE: bpN:p1:norm-convert#converse
KIND: step
TITLE: Converse comparison from Fourier reconstruction
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L206
CONTRACT_ID: bpN:p1:norm-convert#converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u : T_ρ → ℂ holomorphic, bounded and 1-periodic; ¦u¦_ρ = sup_{T_ρ}¦u¦; 0 < δ < ρ; for I-dependent u(θ,I), fixed I
SOURCE_QUANTIFIERS: n; ρ,δ,u with 0<δ<ρ
SOURCE_CONCLUSION: ¦u¦_ρ ≤ Σ_k ¦û_k¦ e^{2π¦k¦₁ρ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, bpN:p4:n-zero
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L203 | Fourier reconstruction and the forward sup bound when the full weighted sum is finite; otherwise the extended upper bound is immediate
EDGE: bpN:p4:n-zero | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | the n=0 branch explicitly proves the converse as the identity abs(u)<=abs(u)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: For n=0 the proof at p1 L206 explicitly reduces the converse to abs(u)<=abs(u), using the singleton Fourier coefficient. For n≥1 use K summation/Fourier reconstruction, with the infinite full weighted-sum case immediate. This is common to both forward routes; the earlier missing-dimension SOURCE_GAP is resolved.
```

```text
NODE: stepN:p4:b3-a
KIND: step
TITLE: (a): coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L136
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L136
CONTRACT_ID: stepN:p4:b3-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ V_{r_0}D; u ∈ 𝒪(r_0,s_0) finite norm
SOURCE_QUANTIFIERS: D,m,n; r₀,s₀; u; r,s with 0<r<r₀, 0<s<s₀; then I and coordinate indices
SOURCE_CONCLUSION: Σ_j ¦∂_{θ_j}u¦_{I,s} = Σ_k 2π¦k¦₁ e^{−2π¦k¦₁(s_0−s)} ¦û_k¦e^{2π¦k¦₁s_0} ≤ ¦u¦_{I,s_0}/(e(s_0−s)); global consequences by sup over I and ¦u¦_{I,s_0} ≤ ¦u¦_{r_0,s_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:exp-sums, bpN:p4:norm, bpN:p4:domains, bpN:p4:n-zero
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L135 | (b): (∂_{θ_j}u)^_k = 2πik_jû_k
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L136-L136 | (a) with τ = 1, a = 2π(s_0−s): x e^{−ax} ≤ 1/(ea)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L136 | ¦·¦_{I,s}, ¦·¦_{r_0,s_0}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L135 | Uses the action neighbourhood or the domain of the function class directly
EDGE: bpN:p4:n-zero | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L135-L136 | the no-angle branch has an empty angular sum, equal to zero; no n>=1 K estimate is used in this branch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: For n=0 the no-angle convention and singleton branch of bpN:p4:n-zero give an empty angular sum, hence zero, and no K exp-sums application is needed. For n≥1 the coefficient computation uses K exp-sums(a) as cited. The native all-n contract is unchanged; the earlier missing-empty-sum SOURCE_GAP is resolved.
```


Read-only in-memory check of the proposed three dependency additions: every target exists and the resulting 728-node graph is acyclic. These proposals are not applied to the graph or packets by this reviewer.

## Regression checks

The graph changes from 720 to 728 nodes: nine additions and the deletion of the now-unused K real-restriction import. The additions are exactly the singleton claim; the extended Taylor lemma and its three steps; the three extended energy steps; and the admitted e-upper input. There are 3368 EDGE lines, four route nodes and six roots. No extra assumption node or unauthorized import is introduced.

Compared every existing record's semantic fields and edge target/rationale inventory, separating locator-only changes. Seventeen existing records have semantic or dependency changes; 82 further records change only locators or review metadata. Of 700 remapped locators with matching identities in records with matching locator inventories, the extracted source text is unchanged except in eight records whose enclosing proof spans contain the intended Part 4/11 source repairs. Those spans were checked against the native diff. No unrelated contract drift was found.

For each of the six roots, the four source fields and all frozen identity fields are unchanged from bbe3163. Independent comparison with current manifest identity fields gives 36/36 matching anchors (path, export, anchor ID, contract ID/version and ABI hash); every non-anchor has all four FROZEN_* fields `-`. This is identity comparison, not ABI elaboration.

| Root | Root transcription/identity regression | Current union-of-routes closure size | Residual R2-G1 records in closure |
| --- | --- | ---: | --- |
| bpN:p0:head | PASS, unchanged | 461 | summation-route, converse, b3-a |
| bpN:p0:zero | PASS, unchanged | 41 | none |
| bpN:p0:qcthm | PASS, unchanged | 23 | none |
| bpN:p0:partial | PASS, unchanged | 410 | b3-a |
| bpN:p0:avg-mean | PASS, unchanged | 216 | none |
| bpN:p0:avg-most | PASS, unchanged | 210 | none |

No frozen quantifier, constant dependence, carrier or normalization has moved. The head constants still precede h/f/epsilon/initial data; the partial theorem retains the stopped slow hypothesis and fixed-h threshold; D28 retains its fixed-system constants, global rank alternative, unnormalized volume and good-data existence conclusion. The n=0 source cases are cases within the all-n helper contracts, not OR alternatives replacing whole theorems or new frozen dimension assumptions. The generic weighted Taylor statement does not import the extended Fourier packages unnecessarily; its consumers supply the actual domains and trajectories. The G3 extension uses the fast Hessian only, with the slow coordinates remaining in the extended orbit carrier.

All remaining earlier source gaps outside G1 are retained, including the Part 1 premise-scope attachments, Part 5 sign/general-domain restriction, Part 11 extended telescope/real-Hessian bridges and the Part 12 C1-family-space tools. They are not paid by this round-2 topology review. G4's former numerical and Taylor gaps are removed only where the amended source and exact suppliers now support the recorded conclusion. The stale sentence in ext-e-upper's NOTE requesting a SPEC amendment is superseded by the actual SPEC enumeration; this is an editorial note, not a boundary failure.

Unreachable-node findings: none. Missing coverage dispositions or unreviewed coverage items: none. The three G1 failures concern direct dependency/NOTE reconciliation inside already covered records, not missing inventory entries. The pruned import's EXCLUDED coverage is correct. Part 12 introduces no new use of the previously excluded Newtonian/barrier or sharp-norm infrastructure.

## Validation

Requested strict invocation:

```text
python3 scripts/proof_depgraph.py --db docs/graph/N/DEPGRAPH.md --manifest docs/graph/N/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable
```

Exit 1; stderr contains exactly:

```text
docs/graph/N/DEPGRAPH.md:12: review gate: missing or placeholder GLOBAL_REVIEWER
docs/graph/N/DEPGRAPH.md:13: review gate: missing or placeholder GLOBAL_REVIEW_REF
```

No node, coverage, identity, source-locator, dependency, cycle or reachability diagnostic is reported.

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/N/packets --slice N-imports --self-track N
# exit 0:
N-imports: 15 imported nodes present, 15 referenced, 0 missing, 0 unreferenced
sha256sum -c docs/graph/N/CORPUS.sha256
# exit 0: all fifteen files OK
sha256sum -c docs/graph/N/IMPORTS.sha256
# exit 0: all four files OK
```

The optional same strict command with `--check` also reports `docs/graph/N/DEPGRAPH.md: generated dashboard is stale; run --write-dashboard`. That option adds a generated-dashboard requirement beyond the explicitly requested flag set. The writer must refresh the dashboard before claiming the stronger check passes; this reviewer did not regenerate it or set global metadata.

The report is checked for complete replacement node fields, valid source ranges, balanced fences and trailing whitespace, and with `git diff --check -- docs/graph/N/reviews/GLOBAL-review-2.md`. No state-changing git, Lean build or repository-wide Lean lint is run.

## Suspected defects, deviations and unresolved work

No new suspected pinned-paper or blueprint mathematical defect in the reviewed delta. No review-introduced mathematical deviation, source change or frozen change.

Unresolved work for this round: attach the existing n=0 source branch and reconcile the three records in R2-G1, then obtain their delta review and reassemble. Other already explicit source gaps remain separate proof obligations. Global metadata and optional dashboard regeneration remain writer publication steps after acceptance.

A PASS reference is not issued for this assembly.

READY graph-global-N-2
