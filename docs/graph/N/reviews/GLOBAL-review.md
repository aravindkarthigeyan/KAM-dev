# Independent global review — track N

Reviewer: sol-global-N. Marker: global-N. Verdict: **FAIL** for complete global source closure; the six frozen root transcriptions and all 36 anchor identities pass. N-ZERO and N-QC pass their source-closure checks. Four other roots retain explicit source gaps, and the additional contract findings below prevent global acceptance of the assembled records.

This is a source-graph review, not a Lean proof, execution, axiom audit or validation of the cited papers. I read AGENTS.md, PLAN, DECISIONS, GLOBAL-BRIEF and SPEC, the fifteen-file N corpus including Part 12, the graph and coverage, the actual owning-blueprint statements of all retained imports, the reviewed K records, the allowed frozen declarations/definitions and manifest identity fields. Slice verdicts were not used as evidence. No implementation or provider module was inspected; no manifest state field was used. Only this report is edited. The brief's explicit no-Lean/no-other-Lean-reading restriction precludes the repository-wide lint_sources.sh (which reads implementations and invokes ABI checking), builds and #print axioms.

The reviewed assembly is the one identified by the assignment as bbe3163. File content hashes at review:

- `docs/graph/N/DEPGRAPH.md`: `304edbcb66adc893416eec26ddfa0f5a7bea3ea8984fc57348f611a5003d2dd6`.
- `docs/graph/N/DEPGRAPH_COVERAGE.md`: `085cbdf9b01b81f406ffba8f785117fda04a21140354249af9233ab1b081b9bf`.

## Root contracts and verdicts

PASS/FAIL below assesses complete source closure, including suppliers' literal contracts. It does not mean the frozen theorem is false when closure fails. Every root's four source fields agree in substance with Part 0 and its frozen declaration. In particular the displayed derivative formula in Part 0's N-QC is additional explanatory content, not an additional conjunct of the frozen Lean theorem.

### bpN:p0:head — FAIL (root transcription PASS)

Evidence: blueprint-N/parts/p0-conventions.tex:204–237; KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexNekhoroshevComplexBound.lean:47; DEPGRAPH.md:483.

SOURCE_HYPOTHESES: n≥3; R,s,M,m,Mℂ,ωmin>0; H1 IsAnalyticIntegrable R s h; H2 HasComplexHessianBound R s h Mℂ; H3 ωmin≤‖ωh(I)‖∞ on B(0,R); H4 IsStrictlyQuasiConvex and H5 HasDerivativeBounds on realActionDomain n R s=B(0,R+s); H6 IsAnalyticPerturbation R s ε f; 0<ε≤ε₀; θ₀ arbitrary and I₀∈B(0,R/2).

SOURCE_QUANTIFIERS: fix n and the six positive real parameters; ∃C,T,c,ε₀>0 with Cε₀^(1/(2n))≤R/4; ∀h,f,ε satisfying the premises; ∀θ₀,I₀ as above; ∃z:ℝ→ℝⁿ×ℝⁿ; then all queried times and comparison solutions.

SOURCE_CONCLUSION: z(0)=(θ₀,I₀); IsSolutionOn H B(0,R) [−τ,τ] z for τ=T exp(cε^(−1/(2n))); action drift ≤Cε^(1/(2n)) on this interval; for every L∈[0,τ] and every y with the same initial value and IsSolutionOn H B(0,R) [−L,L] y, equality y=z there. No extra drift or compact-confinement premise on y.

CONSTANT_SCOPE: C,T,c,ε₀ depend only on (n,R,s,M,m,Mℂ,ωmin), before h,f,ε,θ₀,I₀; no dependence on the existential bound for h. The proof's T has the narrower dependence (n,s,m,Mℂ,M).

Closure traced through p10:head, hypotheses-check, confinement, existence and uniqueness; p9:thm1/block-stab/block-hyp; Part 8 covering; Part 7 transfer and quasi-convex energy estimate; Parts 4–6 normal form; Part 1 conversions and the general Part 3 ODE glue. H3 excludes the full-rank exceptional block, H4/H5 remain on the enlarged real domain, and constants precede h,f. The already marked Part 1/5 gaps and findings G1/G4 remain unpaid.

### bpN:p0:zero — PASS

Evidence: Part 0:239–246; KAM/Frozen/Nekhoroshev/Theorems/ZeroPerturbation.lean:40; DEPGRAPH.md:520.

SOURCE_HYPOTHESES: every n∈ℕ, R,s>0, IsAnalyticIntegrable R s h, IsAnalyticPerturbation R s 0 f, θ₀ arbitrary and I₀∈B(0,R/2).

SOURCE_QUANTIFIERS: ∀n,R,s,h,f,θ₀,I₀ satisfying these premises; with γ=integrableOrbit h θ₀ I₀, ∀t∈ℝ in the action conclusion.

SOURCE_CONCLUSION: γ(0)=(θ₀,I₀); IsSolutionOn H B(0,R) ℝ γ; γ(t)₂=I₀ at all times.

CONSTANT_SCOPE: none.

Closure: p2:zero → its five orbit/field steps → zero-deriv, realdomain, holo-real and the frozen definitions. It does not use the positive-size theorem, ODE uniqueness, Fourier estimates or the normal form. n=0 is retained: the orbit and action are in singleton spaces. No extra derivative-bound or quasi-convexity premise appears.

### bpN:p0:qcthm — PASS

Evidence: Part 0:248–257; KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexIsoenergeticDerivative.lean:37; DEPGRAPH.md:553.

SOURCE_HYPOTHESES: every n∈ℕ, arbitrary U⊂ℝⁿ,h,m with IsStrictlyQuasiConvex U h m; I∈U; λ>0.

SOURCE_QUANTIFIERS: ∀n,U,h,m with the predicate, ∀I∈U and λ>0.

SOURCE_CONCLUSION: fderiv ℝ Ψ (I,λ) is bijective, Ψ(I′,λ′)=(realPart h I′,λ′ωh(I′)). The Part 0 explanatory formula is DΨ[v,u]=(ωh(I)·v,uωh(I)+λD²hℝ(I)v). No uniform inverse radius.

CONSTANT_SCOPE: none.

Closure: p2:qc-bij → unpack, derivative, positivity and conclusion → qc-deriv and qc-kernel → the product/Schwarz and finite-dimensional linear algebra inputs. n=0 is handled by impossibility of the nonzero-frequency premise at I∈U, not by changing the root's dimension.

### bpN:p0:partial — FAIL (root transcription PASS)

Evidence: Part 0:319–335; KAM/Frozen/Nekhoroshev/Theorems/PartialConvexNekhoroshev.lean:48; DEPGRAPH.md:882.

SOURCE_HYPOTHESES: n≥2,k≥1; open convex G,G′⊂ℝⁿ, open D⊂Ph_k; ρ,Mℂ>0; closed max balls B̄(I,ρ)⊂G′ for I∈G; h holomorphic and complex C² on actionNbhd G′ ρ, real on its real slice, complex Hessian max operator norm ≤Mℂ, and HasDefiniteFastPart G′ ρ g m h (including g,m>0 and one global sign). For 0<μ<μ₀, normalized IsPartialPerturbation G′ D ρ P, C>0 and z:ℝ→Ph_(n+k): Z1 IsSolutionOn Hμ {𝖨:fast 𝖨∈G} [0,C] z; Z2 fast(z(0)₂)∈innerCore G μ^b_n. For the queried t, slow confinement in innerCore D μ^b_n only for u∈[0,t]. Hμ=Re h(fast 𝖨)+μ Re P(complexifyPhase z), exactly the frozen degenerateHamiltonian with its perturbation independent of the μ argument.

SOURCE_QUANTIFIERS: n,k; G,G′,D,ρ,g,m,Mℂ,h and hypotheses; ∃μ₀>0; ∀μ∈(0,μ₀),P,C,z with premises; ∀t∈[0,min(C,μ⁻¹exp(μ^(−a_n)))] with the stopped slow premise.

SOURCE_CONCLUSION: ‖fast(z(t)₂)−fast(z(0)₂)‖∞≤μ^b_n/2, where a_n=2/(6n²−3n+14), b_n=3/(6n²−3n+14).

CONSTANT_SCOPE: μ₀ may depend on (n,k,G,G′,D,ρ,g,m,Mℂ,h), before μ,P,C,z,t. final-order claims the stronger uniformity (n,k,ρ,g,m,Mℂ); this is recorded as that step's own claim, not silently substituted into the root.

Closure: final-empty/data/mu/time/given/orbit/sign/drift/order → block and block-data/domain → extended nonresonant/resonant stability, transfer/continuation and energy-free → extended normal form/analytic class and Part 8 geometry. The empty-G branch is explicit. Θ divides only the fast angles by 2π; slow field weight becomes 2π, then c=2π/λ² with λ fixed per block. The initial erosion is used only for membership in G; the slow margin is on [0,t]; negative Hessian sign is handled by time reversal. No frequency upper bound on unbounded G is introduced. Existing gaps and G1/G3/G4 remain.

### bpN:p0:avg-mean — FAIL (root transcription PASS)

Evidence: Part 0:384–396; KAM/Frozen/Nekhoroshev/Theorems/AveragingMean.lean:44; DEPGRAPH.md:18841.

SOURCE_HYPOTHESES: n≥2,R,s>0; fixed h,f with IsAnalyticIntegrable R s h, IsAnalyticPerturbation R s 1 f and HasAveragingFrequencyRank B(0,R) h; compact K with x₂∈B(0,R/2) on K. For 0<ε≤ε₀, every family Φ with Φ x 0=x and IsSolutionOn H_(h,εf) B(0,R) [0,1/ε] (Φ x) for each x∈K. No error or exceptional-set premise.

SOURCE_QUANTIFIERS: fixed n,R,s,h,f,K and hypotheses; ∃A,ε₀>0; ∀ε∈(0,ε₀]; ∀Φ with the flow premise; then ∀κ>0, ∃measurable E⊂K in the Markov clause.

SOURCE_CONCLUSION: averagingError ε Φ is integrable on K; ∫⁻_K ofReal(error)≤ofReal(A√ε); for every κ>0, an E with volume E≤ofReal κ and drift ≤A√ε/κ on K∖E for all t∈[0,1/ε].

CONSTANT_SCOPE: A,ε₀ chosen after (n,R,s,h,f,K), before ε,Φ,κ,E. Volume is unnormalized Lebesgue phase volume. The proof obtains constants uniform in f beyond its normalized bound; this strengthens no root hypothesis.

Closure: me-flow/cont/good/bad/mean/markov → stopped estimate → pointwise corrector and transport → coefficient estimates, intrinsic rank-to-slab geometry, Liouville/maximal flow and first exit → Part 3 and explicit differentiable-dependence obligations. The global rank alternative is preserved; no chart ω₁≠0 is imposed. The integral is of the time maximum; the source's invalid interchange of maximum and integral is not used. The three existing differentiable-dependence gaps and G2 remain.

### bpN:p0:avg-most — FAIL (root transcription PASS)

Evidence: Part 0:398–406; KAM/Frozen/Nekhoroshev/Theorems/AveragingMost.lean:44; DEPGRAPH.md:18882.

SOURCE_HYPOTHESES: the same fixed n,R,s,h,f,K and analytic/rank/compactness hypotheses as avg-mean; 0<ε≤ε₀ and 0<η≤η₀. No supplied flow family, existence or future confinement premise.

SOURCE_QUANTIFIERS: fixed data and hypotheses; ∃A,ε₀,η₀>0 with η₀≤R/4; ∀ε∈(0,ε₀]; ∀η∈(0,η₀]; ∃measurable E⊂K; ∀x∈K∖E, ∃z:ℝ→ℝⁿ×ℝⁿ.

SOURCE_CONCLUSION: volume E≤ofReal(A√ε/η); z(0)=x; IsSolutionOn H_(h,εf) B(0,R) [0,1/ε] z; action drift ≤η throughout that interval.

CONSTANT_SCOPE: A,ε₀,η₀ depend only on (n,R,s,h,f,K), before ε,η,E,x,z. Existence on the whole interval is a conclusion for good data.

Closure: mo-E/mo-z → good/bad/stopped → the same stopped analytic/transport/ODE closure as avg-mean. The theorem does not depend on the conclusion of avg-mean. The first-exit dichotomy supplies full-window existence on the good set. Existing flow gaps and G2 remain.

## Mechanical and boundary checks

- Both SHA-256 pin checks pass: all fifteen N files and all four owning-blueprint pin files are unchanged.
- The Unicode-aware repository linter, run with --json, --source-root ., --require-complete-coverage, --require-initial-lean-status and --require-all-reachable, exits 0 with empty stderr. There are 720 nodes, 3323 EDGE lines, 36 frozen anchors, 48 external nodes (16 imports and 32 native external inputs), four route nodes and no standing assumptions. This is structural evidence only.
- Independent identity comparison against manifest identity fields: 36 anchors checked, zero mismatches in path, export, anchor ID, contract ID/version or ABI hash. All six roots are approved theorem anchors. Every non-anchor, imports included, has all four FROZEN_* fields '-'. No ABI was elaborated.
- Required import tool: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/N/packets --slice N-imports --self-track N` exits 0 and prints `N-imports: 16 imported nodes present, 16 referenced, 0 missing, 0 unreferenced`. There are fifteen K imports and the one pending I predicate import; no P import survives pruning. All K node names exist in K's graph; the four source fields are byte-for-byte copies of those records. Actual owning statements were separately checked; G1 concerns standing source context omitted by those copied records.
- Strict `--check --require-reviewed` fails with exactly the expected empty GLOBAL_REVIEWER/GLOBAL_REVIEW_REF, two PROPOSED coverage items, and stale dashboard. The review metadata is a writer action after this review, not permission to set PASS. No dashboard was regenerated here.
- A first exploratory JSON command was piped to head, which caused BrokenPipeError; the full captured JSON invocation above was rerun successfully. This was an output-pipe error, not a graph diagnostic.

Closure sizes below count the union of explicitly offered routes, without treating OR alternatives as conjunctive mathematical premises:

| Root | Nodes | Already explicit SOURCE_GAP nodes |
|---|---:|---:|
| `bpN:p0:head` | 460 | 10 |
| `bpN:p0:zero` | 41 | 0 |
| `bpN:p0:qcthm` | 23 | 0 |
| `bpN:p0:partial` | 405 | 8 |
| `bpN:p0:avg-mean` | 216 | 3 |
| `bpN:p0:avg-most` | 210 | 3 |

Exact principal commands and outputs (read-only):

```text
sha256sum -c docs/graph/N/CORPUS.sha256
# exit 0: each of the fifteen listed files prints OK
sha256sum -c docs/graph/N/IMPORTS.sha256
# exit 0: each of the four listed files prints OK
python3 scripts/proof_depgraph.py --db docs/graph/N/DEPGRAPH.md --manifest docs/graph/N/DEPGRAPH_COVERAGE.md --source-root . --require-complete-coverage --require-initial-lean-status --require-all-reachable --json
# exit 0; valid JSON; stderr empty
python3 scripts/proof_depgraph.py --db docs/graph/N/DEPGRAPH.md --manifest docs/graph/N/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable --check
# exit 1, exact diagnostics:
docs/graph/N/DEPGRAPH.md:12: review gate: missing or placeholder GLOBAL_REVIEWER
docs/graph/N/DEPGRAPH.md:13: review gate: missing or placeholder GLOBAL_REVIEW_REF
docs/graph/N/DEPGRAPH_COVERAGE.md:1722: review gate: coverage item 'bpN:p3:totality' is not REVIEWED
docs/graph/N/DEPGRAPH_COVERAGE.md:8643: review gate: coverage item 'bpN:p11:hessian#real-hessian' is not REVIEWED
docs/graph/N/DEPGRAPH.md: generated dashboard is stale; run --write-dashboard
git diff --check -- docs/graph/N/reviews/GLOBAL-review.md
# exit 0; no output
```

The new report was also checked directly for trailing whitespace, balanced fences, valid source line ranges and complete replacement node fields; git diff alone may not inspect an untracked report.

## Global findings and concrete record proposals

Replacement records below are proposals, marked PROPOSED with no claimed independent reviewer. They preserve frozen statements. The writer must synchronize owning-track corrections where applicable and obtain a delta review.

### G1 — major: the imported dimension restriction is lost outside Part 1

Evidence: blueprint/parts/p1-analysis.tex:37–39 imposes “n≥1 wherever a strip occurs”; :728 also explicitly assumes n≥1 for exp-sums. Part 4 deliberately has m,n≥0 (blueprint-N/parts/p4-weighted-norms.tex:35), yet its co-series (:75–77), co-repr (:79–80) and B.1(b) (:98–100) use those K strip/series results without an n=0 branch. Part 1 nc-sum (:208) similarly applies exp-sums under an unrestricted n. The gaps attached to nc-decay and the two Part 1 route/converse records do not cover these other consumers.

The actual root calls needing Fourier analysis have positive dimension, so this does not refute those roots. It does invalidate certification of the suppliers' stated all-n contracts. Do not repair this by adding n≥1 to the frozen N-ZERO or N-QC. Keep the native source contracts, and expose the missing singleton-index branches. Copying K's fields exactly has propagated the same context omission: its own reviewed records also omit this standing restriction for decay, summation, Fourier-basic's strip clause, averages and real-restriction. The following import proposals require synchronization with the owning K records rather than an unexplained divergence.

```text
NODE: K:bp:p1:decay
KIND: external
TITLE: [K] Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥1 (owning Part 1 standing strip convention, L37–39); u holomorphic, bounded and 1-periodic on T_rho
SOURCE_QUANTIFIERS: rho, u; k in Z^n; rho' with 0<=rho'<rho
SOURCE_CONCLUSION: |hat u_k| <= e^{-2 pi |k|_1 rho'} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:decay; shared Lean provider. There: KIND lemma, contract bp:p1:decay v1. Cited as \Kref{bp:p1:decay}.
```

```text
NODE: K:bp:p1:summation
KIND: external
TITLE: [K] Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥1 (owning Part 1 standing strip convention, L37–39); (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite; (converse) u as in decay, 0<delta<rho
SOURCE_QUANTIFIERS: rho, a_k, u, delta
SOURCE_CONCLUSION: u=sum a_k e^{2 pi i k.theta} holomorphic and 1-periodic on T_rho, hat u_k=a_k, ||u||_rho <= sum |a_k| e^{2 pi |k|_1 rho}; conversely sum |hat u_k| e^{2 pi |k|_1(rho-delta)} <= coth(pi delta)^n ||u||_rho and u equals its Fourier series on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:summation; shared Lean provider. There: KIND lemma, contract bp:p1:summation v1. Cited as \Kref{bp:p1:summation}.
```

```text
NODE: K:bp:p1:averages
KIND: external
TITLE: [K] Averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L665-L669
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥1 (owning Part 1 standing strip convention, L37–39); v holomorphic, bounded and 1-periodic on T_rho; scalar, C^p or C^{pxq} valued
SOURCE_QUANTIFIERS: rho, v; ell; omega
SOURCE_CONCLUSION: <d_theta_ell v>=0, <Dv omega>=0, |avg(v)| <= ||v||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:averages; shared Lean provider. There: KIND lemma, contract bp:p1:averages v1. Cited as \Kref{bp:p1:averages}.
```

```text
NODE: K:bp:p1:real-restriction
KIND: external
TITLE: [K] Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥1 (owning Part 1 standing strip convention, L37–39); K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)
SOURCE_QUANTIFIERS: K, rho, p (=2n in applications); x in R^n; m in Z^n
SOURCE_CONCLUSION: k=K|_{R^n} real-analytic with real derivative the restriction of the complex derivative; |Dk(x)|<=|DK(x)| for x in R^n; if K primary, k(x+m)=k(x)+(m,0) for m in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:real-restriction; shared Lean provider. There: KIND lemma, contract bp:p1:real-restriction v1. Cited as \Kref{bp:p1:real-restriction}.
```

```text
NODE: K:bp:p1:fourier-basic
KIND: external
TITLE: [K] Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0; n≥1 in the strip clause (c), by the owning Part 1 standing convention L37–39
SOURCE_QUANTIFIERS: v; k in Z^n; ell; omega in C^n; r
SOURCE_CONCLUSION: (a) hat(d_ell v)_k = 2 pi i k_ell hat v_k and hat(d_omega v)_k = 2 pi i (k.omega) hat v_k; (b) v(x)=sum hat v_k chi_k(x) for all x, so v=0 if all hat v_k=0; (c) v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:fourier-basic; shared Lean provider. There: KIND lemma, contract bp:p1:fourier-basic v1. Cited as \Kref{bp:p1:fourier-basic}.
```

```text
NODE: stepN:p1:nc-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208
CONTRACT_ID: stepN:p1:nc-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u : T_ρ → ℂ holomorphic, bounded and 1-periodic; ¦u¦_ρ = sup_{T_ρ}¦u¦; 0 < δ < ρ; for I-dependent u(θ,I), fixed I
SOURCE_QUANTIFIERS: as norm-convert
SOURCE_CONCLUSION: Σ_k e^{−2πδ¦k¦₁} = coth(πδ)ⁿ, so the weighted sum is ≤ coth(πδ)ⁿ¦u¦_ρ (pointwise in I)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, stepN:p1:nc-decay
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208 | geometric sums (b) with x = 2πδ
EDGE: stepN:p1:nc-decay | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208 | per-k bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The native statement permits n=0. The cited K strip/series inputs require n≥1 (K Part 1 L37–39; exp-sums also L728). No n=0 branch is recorded at this consumer. Preserve the native source premises; supply the singleton Fourier-index calculation or an explicitly generalized supplier before certifying the all-n contract.
```

```text
NODE: stepN:p4:co-series
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
CONTRACT_ID: stepN:p4:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_k holomorphic on V_rD with S < ∞; s' < s
SOURCE_QUANTIFIERS: a_k; S; s'
SOURCE_CONCLUSION: v = Σ a_kχ_k converges uniformly on 𝒟_{r,s'}, is holomorphic and periodic on 𝒟_{r,s}, v̂_k = a_k, and ¦v¦_{r,s} = S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, bpN:p4:ext-weier, bpN:p4:ext-series, K:bp:p1:summation, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | summability of S e^{−2π¦k¦₁(s−s')}
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | uniform limit of holomorphic partial sums is holomorphic
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | termwise integration against χ_{−k}
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | 'as in the coefficient step of K summation'
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | norm identity is the definition
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | 𝒟_{r,s'} ⊂ 𝒟_{r,s}; holomorphy on 𝒟_{r,s} as s' arbitrary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The native statement permits n=0. The cited K strip/series inputs require n≥1 (K Part 1 L37–39; exp-sums also L728). No n=0 branch is recorded at this consumer. Preserve the native source premises; supply the singleton Fourier-index calculation or an explicitly generalized supplier before certifying the all-n contract.
```

```text
NODE: stepN:p4:co-repr
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
CONTRACT_ID: stepN:p4:co-repr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; I ∈ V_rD
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: u; I
SOURCE_CONCLUSION: ¦û_k(I)¦e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}; u(·,I) = Σ_k û_k(I)χ_k on T_s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, K:bp:p1:fourier-basic, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | Σ û_k(I)χ_k holomorphic periodic with these coefficients
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L80-L80 | (c): holomorphic periodic function with all coefficients zero vanishes
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | single term of ¦u¦_{I,s} ≤ ¦u¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The native statement permits n=0. The cited K strip/series inputs require n≥1 (K Part 1 L37–39; exp-sums also L728). No n=0 branch is recorded at this consumer. Preserve the native source premises; supply the singleton Fourier-index calculation or an explicitly generalized supplier before certifying the all-n contract.
```

```text
NODE: stepN:p4:b1-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
CONTRACT_ID: stepN:p4:b1-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u(·,I) holomorphic, periodic, ¦u¦ ≤ M on T_{s+σ}; I ∈ V_rD
SOURCE_QUANTIFIERS: I; σ; M
SOURCE_CONCLUSION: ¦û_k(I)¦_∞ ≤ e^{−2π¦k¦₁(s+σ)}M and ¦u¦_{I,s} ≤ M Σ_k e^{−2π¦k¦₁σ} = coth(πσ)ⁿ M; take sup over I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, K:bp:p1:exp-sums, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | Cauchy-type decay of Fourier coefficients (limit ρ' ↑ s+σ)
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L99-L99 | (b) with x = 2πσ: Σ_k e^{−2π¦k¦₁σ} = coth(πσ)ⁿ
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | û_k(I), ¦u¦_{I,s}, ¦u¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | T_{s+σ}, V_rD
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The native statement permits n=0. The cited K strip/series inputs require n≥1 (K Part 1 L37–39; exp-sums also L728). No n=0 branch is recorded at this consumer. Preserve the native source premises; supply the singleton Fourier-index calculation or an explicitly generalized supplier before certifying the all-n contract.
```


Part 4 b3-a has an angular index/sum: for an actual coordinate j, n≥1 follows from j∈Fin n, but a proof of the unrestricted sum statement still needs its vacuous n=0 branch. This is a routine branch, not a new analytic theorem. No additional frozen hypothesis is proposed.

```text
NODE: stepN:p4:b3-a
KIND: step
TITLE: (a): coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
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
DEPS: bpN:p4:coefficients, K:bp:p1:exp-sums, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | (b): (∂_{θ_j}u)^_k = 2πik_jû_k
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L133-L133 | (a) with τ = 1, a = 2π(s_0−s): x e^{−ax} ≤ 1/(ea)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | ¦·¦_{I,s}, ¦·¦_{r_0,s_0}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The angular-sum contract permits n=0, while the cited K exp-sums(a) is stated for n≥1. An actual angular coordinate implies n≥1, but the unrestricted sum also needs the n=0 empty-sum branch. Preserve the source contract and record this branch rather than adding a dimension hypothesis.
```

### G2 — major: a Part 12 real-restriction edge has the wrong domain

Evidence: DEPGRAPH.md:19040–19067; blueprint-N/parts/p12-averaging.tex:30; owning K real-restriction, blueprint/parts/p1-analysis.tex:1047–1051. The imported lemma is about a function on an entire strip, real on all real inputs. Here f is defined analytically on a strip times the bounded action tube, with reality only on the permitted real actions. No entire strip in all phase variables is supplied. This is the same carrier issue already exposed at the Part 5 real-restriction bridge, but that bridge is not a dependency of fb-real.

At this consumer the existing generic restriction-of-scalars input and holo-real already support the local derivative calculation. Replace the inapplicable import edge with that actual input; no source or frozen premise changes:

```text
NODE: stepN:p12:fb-real
KIND: step
TITLE: stepN:p12:fb-real
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30
CONTRACT_ID: stepN:p12:fb-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real points; f real at real points
SOURCE_QUANTIFIERS: real (θ,I), I∈B(0,R)
SOURCE_CONCLUSION: the real derivative of f is the restriction of the complex one; X_H=(ω+ε∂_I f, −ε∂_θ f) on W_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:holo-real, bpN:p12:s-setting#data, bpN:p1:ext-restrict
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:holo-real | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | real smoothness and the real Hamiltonian field
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | restriction of scalars and the real inclusion/Re chain rule on the open real phase domain; no entire-strip extension of f is assumed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The parenthetical K real-restriction citation has a narrower entire-strip carrier. The local real derivative calculation uses holo-real and the admitted general restriction-of-scalars/inclusion chain rule instead.
```


### G3 — major: the Part 11 energy-core application imports a different orbit

Evidence: DEPGRAPH.md:17470 and its energy-core EDGE; blueprint-N/parts/p11c-partial-stability.tex:89. Part 7 energy-core (p7-stability.tex:159–170) assumes g,f∈C¹(ℝⁿ×U), a canonical Hamiltonian orbit in ℝⁿ×ℝⁿ, and a fixed Hamiltonian of those variables. The Part 11 orbit has independent slow pairs, weighted slow bracket and g,f depending on them. Projecting to (θ,I) does not make it an autonomous orbit of Part 7's Hamiltonian; treating all n+k variables as actions does not give the required coercivity on the full action space. The current Part 7 setting package at this consumer is likewise the wrong phase carrier.

The Part 11 text itself supplies the needed local proof: energy conservation is real-system(b), and the Taylor expansion is only along the fast action segment, with the Euclidean projection algebra. Model that proof directly, rather than claiming the conditional Part 7 lemma applies. A complete replacement follows; it keeps the conclusion and does not insert a new confinement hypothesis.

```text
NODE: stepN:p11:ef-en
KIND: step
TITLE: Energy inequality
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
CONTRACT_ID: stepN:p11:ef-en
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the contradiction branch with the constructed first-exit time t*; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: t*
SOURCE_CONCLUSION: (m/2)Delta^2<=A+¦<Pi omega_0,Delta I>¦+C with A=¦(g+f_*)(y-tilde(t*))-(g+f_*)(y-tilde(0))¦<=2(zeta_g+eta), C=¦<omega_0,Pi^perp Delta I>¦, ¦<Pi omega_0,Delta I>¦<=(5/16)m Delta^2; hence (3/16)m Delta^2<=A+C and (3 m r-tilde^2)/256>0.0117 m r-tilde^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, stepN:p11:ef-adm, stepN:p11:ef-tube, bpN:p7:resonance-data, bpN:p4:norm, bpN:p7:ext-taylor, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:wfield
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | direct package or input used by this proof step
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | energy conservation G^R o y constant (Lemma real-system(b))
EDGE: stepN:p11:ef-adm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | ¦Pi omega_0¦<=(5/4)delta
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the segment [I-tilde(0),I-tilde(t*)] lies in U (Taylor along I_s)
EDGE: bpN:p7:ext-taylor | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | apply the one-variable Lagrange remainder to h evaluated on the fast action segment, which ef-tube places inside U
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the energy values of g and f_* are evaluated on the extended orbit
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | extended real Hamiltonian and orbit carrier
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the conserved Hamiltonian uses the weighted field X^c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Part 7 energy-core is a proof template, not an applicable conditional lemma on this slow-fast carrier. The inline Part 11 proof uses extended energy conservation, one-variable Taylor along the fast segment, and projection algebra. No coercivity in the slow directions or canonical projected orbit is assumed.
```


### G4 — major: the extended Taylor citations also need an exact contract

Evidence: DEPGRAPH.md:15902 and :15972; blueprint-N/parts/p11b-partial-nf.tex:84,91. Part 5 taylor (:121–131) is stated “in the setting” of lie-derivative, for the canonical Xφ and canonical iterated bracket on ℂⁿ×ℂⁿ. The Part 11 applications use Ωc and the extended bracket. The source calls this “one real variable” and gives the new derivative identity, which is a plausible proof route; the graph still records an unqualified application of the narrower theorem. This is parallel to the correctly exposed extended telescoping gap at nf-concl/nf-disp.

Supply a distinct one-variable Taylor/extended-flow bridge from the source argument, or explicitly expose this conditional-application mismatch until that bridge is recorded. The conservative complete replacements retain the proposed conclusion and flag the missing contract; they do not assume it:

```text
NODE: stepN:p11:co-remainder
KIND: step
TITLE: Remainder
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84
CONTRACT_ID: stepN:p11:co-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:composition; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N; z
SOURCE_CONCLUSION: ¦ad^N_phi u¦_{R-hat-rho,s-hat-sigma}<=N!(e^2 hat-eta/8)^N¦u¦ with e^2 hat-eta/8<0.83; Taylor with integral remainder gives ¦R_N(z)¦<=(e^2 hat-eta/8)^N¦u¦->0 so u(X^1 z)=S(z); (iii) is (ii) for t phi; (iv) by Lemma flow(e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:adjoint, bpN:p5:taylor, bpN:p11:symplectic, bpN:p11:flow, bpN:p11:wfield, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, stepN:p11:co-field, stepN:p11:co-series
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: stepN:p11:co-field | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | Lemma adjoint with (hat-rho,hat-sigma)
EDGE: bpN:p5:taylor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | Taylor formula with integral remainder (one real variable)
EDGE: bpN:p11:symplectic | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | derivatives g^(j)=ad^j_phi u o X^t
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | (iv) by Lemma flow(e); trajectory in D^e
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | d/dt v(X^t z)=Dv.X^c_phi={v,phi}_c
EDGE: stepN:p11:co-series | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | S(z) is the holomorphic series limit constructed in the preceding Series step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The cited bpN:p5:taylor is stated for the canonical Part 5 flow and bracket on paired phase coordinates. This consumer uses X^c and the extended bracket; those are not an instance of its stated setting. The source supplies the extended derivative identity and requests one-variable Taylor, but the carrier-independent Taylor contract or a distinct extended-flow bridge must be recorded before this conditional theorem application is certified. Do not add the desired remainder identity as a premise. SOURCE_GAP: the source additionally uses e^2/9<0.83, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
```

```text
NODE: stepN:p11:tr-taylor
KIND: step
TITLE: Taylor
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91
CONTRACT_ID: stepN:p11:tr-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:transform; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: the Taylor identity (h+f_0)(X^1 z)=h+w+f_0+R pointwise; series form: h o X^1=h+sum_{i>=0}(1/(i+1)!)ad^i_phi w, f_0 o X^1=sum(1/j!)ad^j_phi f_0, hence R=sum_{j>=1}(...) and the bound sum_{j>=1}(e^2 eta/8)^j(¦w¦/(j+1)+¦f_0¦)<=eta/(1-eta)((1/2)¦w¦+¦f_0¦)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:taylor, bpN:p11:composition, bpN:p11:adjoint, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics, bpN:p11:wfield, stepN:p11:co-remainder
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p6:ext-numerics in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:taylor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | Taylor formula of order 2 for h, order 1 for f_0
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | trajectory stays in D^e_{R,s} (i)
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | bounds (e^2 hat-eta/8)^{N-1} for ad^{N-1}_phi w and the series terms
EDGE: stepN:p11:co-remainder | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | the hatted-loss Taylor remainder estimate and its decay are reused from the composition remainder argument
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The cited bpN:p5:taylor is stated for the canonical Part 5 flow and bracket on paired phase coordinates. This consumer uses X^c and the extended bracket; those are not an instance of its stated setting. The source supplies the extended derivative identity and requests one-variable Taylor, but the carrier-independent Taylor contract or a distinct extended-flow bridge must be recorded before this conditional theorem application is certified. Do not add the desired remainder identity as a premise.
```


### G5 — minor: the D28 external boundary is not enumerated in SPEC

Evidence: SPEC.md:58–63 adds the D28 roots/corpus, but its exact external enumeration at :148–154 contains no Part 12 items. DEPGRAPH.md:19069,19095,19150 admits bpN:p12:ext-cov, ext-tsum and ext-markov. The graph's broad header policy and Part 12 external list make the intended addition clear, and ext-dep is correctly a proved claim with gap children rather than a new assumed external. Nevertheless the brief expressly binds the external boundary to SPEC and permits no unrecorded additions. The writer should explicitly add these three native external contracts to the SPEC revision and describe the ext-dep/compact-max splits. No new mathematical external is requested by this review and no graph node replacement is appropriate until that policy ruling. The older SPEC node/import/slice totals also need editorial refresh; they are pre-extraction counts, not this assembly's counts.

### G6 — minor: publication checks are not yet green

Evidence: DEPGRAPH.md:12–13 and coverage :1717–1725, :8638–8646. The two writer coverage changes remain PROPOSED in the reviewed assembly, exactly as the assignment warned. I independently agree that totality is administrative (the zero extension is a choice of a total representative, not an extra proved hypothesis), and that the real-hessian gap node needs its own mapped coverage item. This is not a substitute for the separately assigned tiny delta review. Both receipts, global metadata and the generated dashboard remain publication actions for the writer. They do not change the mathematical verdict above.

## Existing SOURCE_GAP audit

The following are already explicit unpaid obligations. I checked their source locators and did not turn them into external inputs or source premises:

- `stepN:p1:qc-reg` — DEPGRAPH.md:2653; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163`. The current hessian-convert contract includes the standing §s-holo data IsAnalyticPerturbation R s ε f (L68–70 and its SOURCE_HYPOTHESES). This application supplies hypotheses on h only and no such f,ε datum. The quoted Hessian estimate is h-only in its proof, but that premise-free projection has not been recorded as a distinct source result. Keep the present source premises unchanged and expose the conditional-application mismatch.
- `stepN:p1:nc-decay` — DEPGRAPH.md:2955; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206`. K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L206. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement. First forward route only: use coefficient decay, then take the scalar limit ρ′↑ρ. The text offers K summation as an alternative for the aggregate weighted bound; see the parent’s route nodes.
- `bpN:p1:constants` — DEPGRAPH.md:3011; `blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L213-L235`. clauses (f),(g) and their proof steps use h-frequency and derivative bounds, but the lemma binds h with H1–H5 only inside clause (d). Preserve the raw conditional scope and expose the missing attachment at co-exc/co-time. No frozen anchor is changed.
- `stepN:p1:co-qc` — DEPGRAPH.md:3143; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243`. The current hessian-convert contract includes the standing §s-holo data IsAnalyticPerturbation R s ε f (L68–70 and its SOURCE_HYPOTHESES). This application supplies hypotheses on h only and no such f,ε datum. The quoted Hessian estimate is h-only in its proof, but that premise-free projection has not been recorded as a distinct source result. Keep the present source premises unchanged and expose the conditional-application mismatch.
- `stepN:p1:co-exc` — DEPGRAPH.md:3210; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247`. the lemma explicitly assumes H1–H5 only in clause (d). This clause needs the corresponding hypotheses on h (H3 for the frequency lower bound; H5 also for the time upper bound). The cited conditional conversions do not supply those premises. No such premise is added to the source contract.
- `stepN:p1:co-time` — DEPGRAPH.md:3239; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249`. In addition to the already recorded missing h-bound scope, the current partials contract inherits IsAnalyticPerturbation R s ε f from §s-holo. This application does not bind or supply that datum. No source hypothesis is added here. SOURCE_GAP: the lemma explicitly assumes H1–H5 only in clause (d). This clause needs the corresponding hypotheses on h (H3 for the frequency lower bound; H5 also for the time upper bound). The cited conditional conversions do not supply those premises. No such premise is added to the source contract.
- `bpN:p1:norm-convert#summation-route` — DEPGRAPH.md:3329; `blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206`. K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L206. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement.
- `bpN:p1:norm-convert#converse` — DEPGRAPH.md:3356; `blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202`. K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L202. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement. The source states this converse at L202; imported summation supplies Fourier reconstruction for the bounded holomorphic periodic u. This is common to both forward routes.
- `stepN:p5:fl-max` — DEPGRAPH.md:6823; `blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L60`. L59 prints T₋>−1, whereas existence on [−1,1] requires T₋<−1. Time reversal is named, so this appears to be a sign typo; the graph must not silently certify a corrected printed conclusion. Owner/writer source ruling required.
- `stepN:p5:fl-symmetry#real-restriction` — DEPGRAPH.md:8061; `blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L73-L73`. L73 cites K:bp:p1:real-restriction, whose statement is on an entire strip T_ρ, whereas Ω is arbitrary. The strip hypothesis is not supplied. This node exposes the general-domain, real-codomain restriction bridge; the available inputs are recorded, but the blueprint does not state this extension of the cited lemma. No additional hypothesis on Ω is introduced.
- `stepN:p11:ad-prod` — DEPGRAPH.md:15769; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72`. Part 11b L72 needs (2h)! >= (2h/e)^{2h} for h>=1. The cited ext-num at Part 11a L40 does not state it, and no proof or other permitted input supplies it. Preserve the claimed estimate; do not add the factorial bound as a hypothesis.
- `stepN:p11:co-series` — DEPGRAPH.md:15868; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83`. the source additionally uses e^2/8<0.93, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
- `stepN:p11:co-remainder` — DEPGRAPH.md:15902; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84`. the source additionally uses e^2/9<0.83, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
- `stepN:p11:nf-concl` — DEPGRAPH.md:16490; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144`. Part 11b L144-L145 asserts the extended telescoping application. Part 6 telescope is stated on C^{2n} with (DPhi)^T J DPhi=J, not for the arbitrary constant form Omega_c in the extended space. Its proof is a template; the required extension (and, at L144, translation equivariance under composition) is not stated there. No additional symplectic premise is imposed on nf.
- `stepN:p11:nf-disp` — DEPGRAPH.md:16527; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145`. Part 11b L144-L145 asserts the extended telescoping application. Part 6 telescope is stated on C^{2n} with (DPhi)^T J DPhi=J, not for the arbitrary constant form Omega_c in the extended space. Its proof is a template; the required extension (and, at L144, translation equivariance under composition) is not stated there. No additional symplectic premise is imposed on nf.
- `bpN:p11:hessian#real-hessian` — DEPGRAPH.md:18700; `blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L115-L115`. L115 cites bpN:p1:holo-real, stated for centred action balls with the Part 1 analytic-integrable/perturbation data. Those premises are not supplied here. This step exposes the arbitrary-open-tube real-Hessian identification actually used; it is not a proof or an extra assumption of the frozen theorem.
- `bpN:p12:ext-dep#complete-contraction` — DEPGRAPH.md:21476; `blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37`. L37 invokes Banach contraction on bounded continuous families. N7 ext-banach is stated only for closed subsets of finite-dimensional R^N and cannot be applied here. The general complete-metric version is K bp:p1:ext-banach, not currently an N import. Obtain a SPEC/import ruling for it or provide a source proof; this node is not a newly assumed external.
- `bpN:p12:ext-dep#derivative-limit` — DEPGRAPH.md:21502; `blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37`. the last L37 inference uses a sequence derivative-limit theorem on an open real ball without proof or admitted input at that type. ext-tsum needs summable derivative bounds and does not imply this sequence theorem. Expose the tool rather than silently assuming the C1-dependence claim.
- `bpN:p12:ext-dep#parameter-integral` — DEPGRAPH.md:21620; `blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37`. L37 asserts the parameter derivative formula for the Picard integrals. K ext-integral supplies integration/FTC but not differentiation in a real parameter; N4 ext-param is stated for a holomorphic parameter. No real C1 parameter-integral theorem or proof is admitted here. Record the exact real input or its proof rather than silently applying the holomorphic theorem to a merely C1 field.

These include the h-only/section-premise attachment issues, the missing dimension branch in the Part 1 strip conversion, the printed T₋ sign in Part 5, general-domain real restriction, Part 11 numerical/telescoping/real-Hessian bridges, and the three C¹-family-space tools in Part 12. Some are elementary or removable by a better-scoped source statement; none is paid merely by reachability or a REVIEWED topology label.

## Routes, cross-part premises and normalizations

The four route records are exactly two alternatives for norm-convert's forward estimate and two alternatives for gen-lip's Lipschitz clause. The converse of norm-convert is common, not a third forward route; gen-lip's boundedness is common, not supplied by an OR alternative. No decision remark (Part 5 Lie series or Part 11 route (ii)) is encoded as an alternative theorem.

The Part 10 use of p9:thm1 supplies S1–S4 through hypotheses-check's separate tube/h/qc/f/setting steps; ε′=F₁ε is a bound, not a replacement law. The max tube lies in the frozen complex action domain, its real slice lies in B(0,5R/8), and the real field equality is established on that open set before stopped transfer. The ωmin lower bound removes the exceptional branch before the time prefactor is inverted. Existence uses general-confinement via ham-reduction and periodic uniform data; uniqueness handles every L, including zero, without an extra confinement bound on y.

Normal Form/Iterative applications in Parts 7 and 9 have distinct divisor, radius, smallness, reality and cutoff checks. Part 7's case κ<6 uses the identity map and the full strip; it does not claim an exponentially reduced remainder for that map. In Part 9 the Euclidean geometric cutoff is K, the analytic cutoff K/√n; thus KaLr=α/p with L=√n M. The strengthened Mr≤ℓ/2 is checked on every block, including ℤⁿ. Parts 7's (RS) and transfer T1–T3 are represented through their package and hypothesis-verification steps rather than promoted to root assumptions.

Part 11's extended class inherits arbitrary base dimension from Part 4, keeps c and λ fixed per block, verifies SL at each iteration, and re-derives block-data with bc=1/32 instead of borrowing Part 9's b=1/8 estimates. The energy-free orbit has explicit small fast/slow margins before bracket/Cauchy estimates. Both transfer cases verify T1–T3; the proof compares the stopped time and drift exponents only after μ₀ is chosen. The factor n in the coarser Part 1 Hessian conversion and the sharper bound Mℂ in Part 11 are compatible: bounding a bilinear form on max unit vectors also bounds it on Euclidean unit vectors. No spectral-radius equality for a complex symmetric matrix is used.

The Fourier weight is exp(2π|k|₁s) with geometric width s. The fixed-action Hamiltonian rescaling of Part 1 and the symplectic action rescaling in the Part 4 dictionary are two separate dictionaries with invariant smallness ratios, not two successive conversions. Part 11's Θ is used once and preserves fast actions and time. The positions/momenta blocks in the frozen partial theorem agree with fast/slow and degenerateHamiltonian. Part 12 stays in period one and unnormalized phase volume; its finite cell count accounts for arbitrary compact angle lifts.

All imported/frozen-definition uses were checked against their carrier and definitions, with G1/G2/G3/G4 as the contract exceptions above. I found no additional missing reversed edge that changes a root, no source-provenance edge being used as mathematical input to a root, and no remaining unmarked conclusion-shaped root premise.

## Reachability and coverage findings

No unreachable node: every one of the 720 records feeds at least one of the six roots. The coverage has 1098 items, including 369 exclusions. Unlabelled section data, source-gap paragraphs and substantive proof regions were compared with the fifteen-file corpus; the conditional-application findings above affect correctness of mapped records rather than missing inventory entries.

The excluded gen-barrier/gen-invariant, Newtonian reductions/continuation and their steps have no N-root proof consumer, including Part 12. The track-N specializations continuation/energy/lipschitz are likewise unused: the root proofs use the general ODE statements or local-exist/ham-reduction/glue. The Part 10 summary's mention of continuation is a forward summary, not its glue proof's supplier. Part 12 uses the general maximal/continuation/exit statements, so it does not invalidate these exclusions.

The ♯ results and sharp-composition remain outside all N closures; Part 12's coefficient envelopes are ordinary nonnegative coefficient sums, not a use of the excluded global ♯-norm theorem. Part 6 action-displacement is bypassed by direct use of normal-form(c). Part 7 Lemma 1 is a proof comparison in the Lemma 2 exit step, which repeats the argument using exit-ball/no-exit; the graph does not need its full theorem as a supplier. Part 9 m-le-M is expressly unused because m≤M is part of the setting.

Coverage issues: only the two pending review statuses described in G6; no additional omitted proof paragraph found. Several exclusion reasons still describe searches ending at Part 11; I rechecked them against Part 12 rather than relying on those stale search scopes.

## Suspected blueprint defects and deviations

- Part 5 p5-canonical-maps.tex:59: “symmetrically … T₋>−1”. The needed conclusion is T₋<−1 for existence on [−1,1]. This existing SOURCE_GAP is a likely sign typo, not a frozen defect.
- Part 1 p1-interfaces.tex:229–230 (constants(f),(g)): “For I₀∈B(0,R/2)” then frequency lower and upper bounds. The h hypotheses are explicitly bound only in (d); without carrying H3/H5 into these clauses the claims need not hold. The graph correctly preserves this scope ambiguity as a gap rather than silently strengthening the source statement.
- Part 4 p4-weighted-norms.tex:35 with :75–80,:98–100 and Part 1 :208: “m,n≥0” versus the cited K strip/exp-sums n≥1 convention. The native statements may be true at n=0, but the stated proof needs the missing singleton branch (G1).
- Part 12 p12-averaging.tex:30 cites “real-restriction” for a bounded action-domain problem. The actual K theorem is an entire-strip statement; the local version is available from restriction of scalars, but that is a different contract (G2).
- Part 11 p11c-partial-stability.tex:89 cites “Lemma energy-core(a),(c),(d)” across the added slow coordinates and weighted bracket. Its local energy/Taylor argument should be treated as the extended proof, not a literal application of Part 7's autonomous canonical lemma (G3). Part 11b :84,:91 has the corresponding narrower Taylor-contract issue (G4).
- The already marked Part 11 factorial/numerical and extended-telescoping obligations, and Part 12 differentiable-dependence tools, remain subject to the source-gap inventory above. I have not asserted new defects in pinned papers: verifying those papers is outside this blueprint-only corpus review. Existing source errata/deviations (complex symmetric spectral-radius claim, Pos93 cone premise/radius repairs, norm adaptation, Nek77 missing Part II proofs and Nei76 maximum/integral issue) remain distinct from these graph findings.

Review-introduced deviations: none to the mathematics or frozen declarations. The proposed G2/G3 graph changes identify available local proof inputs rather than editing the blueprint or its premises.

## Unresolved questions

1. Will the writer preserve all-n native statements by adding the explicit n=0 branches and synchronize K's imported standing restrictions (G1)?
2. Will the writer adopt the local scalar-restriction proof at fb-real and direct extended energy/Taylor modelling (G2–G4), with an independent delta review of changed records?
3. Will SPEC explicitly enumerate the D28 external boundary (G5)?
4. The existing SOURCE_GAP obligations remain unresolved for complete source closure. The two pending coverage receipts, global metadata and current dashboard remain required for publication (G6).

No frozen-statement change or owner premise is requested. These are concrete writer/source-graph follow-ups; this reviewer has not modified the assembled graph or packets.

READY graph-global-N
