# N-p12 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-N-h`. Marker: `delta-N-h`.

Reviewed exactly the **72 nodes with TOPOLOGY_STATUS: PROPOSED** and **102 coverage items with COVERAGE_STATUS: PROPOSED** in the assigned N-p12 packets. Node verdicts: **67 PASS, 5 FAIL**. Coverage verdicts: **102 PASS, 0 FAIL**. No already-reviewed record receives a new verdict here.

I am distinct from the slice reviewer `sol-review-N-g`. Read DELTA-BRIEF.md and REVIEW-BRIEF.md in full, SPEC.md including the D28/import/package rulings, and the prior slice review's F1–F5 and replacement blocks. Applied the convergence rule: no wording-only failures; a failed replacement changes only the defective DEPS/EDGE fields, leaving every other field verbatim, including identity, source-statement, status and authorship fields.

## Evidence and scope

Re-read Part 0 L341–406 and all 309 lines of Part 12, including every proposed record's statement, proof and EDGE span. Read the cited prerequisite statements in N Parts 0/1/3/4 and the actual K analysis source, plus the relevant N-imports records. Consulted the two existing Part-12 mathematical reviews for context, not as substitutes for the current TeX. The current finite-subcover wording at p12 L38 includes N12R2-01's repair.

The two proposed theorem anchors retain their frozen binders, quantifier order, size-one perturbation hypothesis, unnormalised phase volume, and distinct solution requirements: MEAN assumes only a supplied solution family, while MOST concludes existence on the entire interval outside its exceptional set. Checked declaration statements and manifest identity fields only; no implementation/provider or manifest state was used. The two other D28 anchors were read as prerequisites, not assigned fresh verdicts.

| Input | SHA-256 |
|---|---|
| `docs/graph/N/packets/N-p12.nodes.md` | `fcddbf8eecb3a79d15e043df7daf84ed5785320e4166064fd833984c62eda599` |
| `docs/graph/N/packets/N-p12.coverage.md` | `480a4d488c9079c80789516f384b221fc2ba533e499c523e43bfad51ea5480e5` |
| `blueprint-N/parts/p0-conventions.tex` | `7872daf0bb0ba79e7cb48c79228057e021f432cca2a22d17217ffc1d1c2faaaa` |
| `blueprint-N/parts/p12-averaging.tex` | `4de4e8b8551f1cc57abee32d257239d9cff1f324f1045ef59b032621f6f2a4d0` |

## Resolution of the earlier failures

F1's direct constant-selection edges are present on the correct roots, without a MOST-to-MEAN theorem edge. F2's direct standing/section-data dependencies are now present throughout the rewritten nodes, apart from the small remaining direct-use issues below. F3's parent lemmas no longer assume their own proved coefficient, regularity, corrector or envelope estimates; the epsilon-zero flow scope and pre-epsilon constant-selection order are explicit. F5's corrected Part-0 locators and full corrector/envelope formulas are present.

F4 is honestly represented: ext-dep is a claim with its inline Picard/Volterra/derivative-identification construction, and three SOURCE_GAP children expose the missing exact input types. These records PASS as source topology. They do not assert that a complete-metric contraction theorem, a real parameter-integral differentiation theorem or a uniform derivative-limit theorem has already been imported or proved. In particular no false edge to the finite-dimensional N7 Banach item, the holomorphic N4 parameter theorem or ext-tsum's stronger summability contract was added.

There are **no proposed route nodes, mechanical route edges, or generic inherited-quantifier placeholders** in this snapshot. The optional analytic rescaling shortcut at p12 L37 is explicitly “not needed here”; keeping it out of the conjunction is appropriate. The Part-5 symplectic computation at L66 is likewise a comparison with a computation reproduced here, not an invocation of its normalized small-field theorem.

## Remaining topology findings

**D1 — missing direct uses, fl-chain (p12 L62).** The text takes the continuous image of a compact interval, covers the orbit arc by finitely many short-time balls, and applies the chain rule to the composed maps and their derivatives. The admitted inputs are `bpN:p3:ext-compact` (L53–57) and `bpN:p3:ext-calc` (L58–62). Both are missing from this step; reaching them through other proof branches is not a direct-use record. Add these two DEPS and their use-site EDGE lines only.

**D2 — two incorrect proof-use locators.** The wreg-to-coef edge is labelled “Fourier bounds on f_k” but located at p12 L113–118, the regularity statement. That span does not use the coefficient estimates as proof inputs; L122 explicitly invokes coef(d) and holomorphy, with further uses at L126/L128. Locate this edge at L122. The envelopes-to-shells edge similarly points to L181–184, which states the resulting envelope bounds and defines constants; the shell estimates are actually applied in the termwise proof at L187–188. Move that edge there. Preserve both dependencies and all other text.

**D3 — missing definition use, bad (p12 L260).** The bad-data statement uses both Gamma_eta and Gamma_rho, whose defining formula is in good at L253. Its graph reaches good through bd-stay but does not record this direct statement use. Add bad-to-good at L260. This does not add the conclusion of good as an averaging hypothesis or create a cycle.

**D4 — over-correction, me-mean (p12 L286).** The final scalar integral estimate uses the earlier bounds on m on Gamma_rho and its complement, the integral of Psi, rho=R/8, and A=13A_1. It does not use a maximal-flow object, a most-section eta or eta_0, or the MOST constant A=A_1. Those facts were consumed upstream, where their edges remain. Remove the added s-flow and s-most edges from this scalar assembly step. Keep s-setting (rho,R), s-mean (A=13A_1), s-trans#psi and all four proof/bound dependencies. By contrast the s-most edges in me-good/me-bad remain valid: their direct specialization of good/bad at eta=rho checks eta<=eta_0 using eta_0=rho. No such new application occurs at L286.

## Proposed-node verdicts

`p0` and `p12` abbreviate the pinned blueprint-N TeX files. The spans below include each statement/proof and every consumer EDGE location inspected. Prerequisite statement checks are described above. PASS is local graph fidelity, not mathematical or Lean proof closure; a descendant failure does not automatically fail its parent.

| ID | Verdict | Spans re-read | Reason for FAIL |
|---|---|---|---|
| bpN:p0:avg-sec#data | PASS | p0 L343–351 | — |
| bpN:p0:avg-mean | PASS | p0 L384–396; p12 L275, L277–289 | — |
| bpN:p0:avg-most | PASS | p0 L398–406; p12 L250, L268–271 | — |
| bpN:p12:s-setting#data | PASS | p12 L18–24 | — |
| stepN:p12:fb-cauchy | PASS | p12 L30 | — |
| stepN:p12:fb-real | PASS | p12 L30 | — |
| bpN:p12:ext-dep | PASS | p12 L37 | — |
| bpN:p12:ext-markov#compact-max | PASS | p12 L38 | — |
| bpN:p12:averaged | PASS | p12 L42–44 | — |
| bpN:p12:s-flow#data | PASS | p12 L48 | — |
| bpN:p12:flow | PASS | p12 L50–69 | — |
| stepN:p12:fl-short | PASS | p12 L60 | — |
| stepN:p12:fl-chain | FAIL | p12 L62 | D1: the finite compact-orbit cover and composition chain rule have no direct input edges. |
| stepN:p12:fl-inverse | PASS | p12 L64 | — |
| stepN:p12:fl-symp | PASS | p12 L66 | — |
| stepN:p12:fl-transl | PASS | p12 L68 | — |
| stepN:p12:ex-g | PASS | p12 L80 | — |
| stepN:p12:ex-open | PASS | p12 L82 | — |
| stepN:p12:co-a | PASS | p12 L93 | — |
| stepN:p12:co-b | PASS | p12 L94 | — |
| stepN:p12:co-c | PASS | p12 L95 | — |
| stepN:p12:co-d | PASS | p12 L96 | — |
| bpN:p12:corrector | PASS | p12 L99–110 | — |
| bpN:p12:wreg | FAIL | p12 L112–129 | D2: the coef edge points at L113–118, rather than its use in the proof at L122. |
| stepN:p12:wr-smooth | PASS | p12 L122 | — |
| stepN:p12:wr-ac | PASS | p12 L124 | — |
| stepN:p12:wr-b | PASS | p12 L126 | — |
| stepN:p12:wr-d | PASS | p12 L128 | — |
| stepN:p12:sl-box | PASS | p12 L154 | — |
| stepN:p12:sl-k | PASS | p12 L158 | — |
| stepN:p12:sh-i | PASS | p12 L175 | — |
| stepN:p12:sh-ii | PASS | p12 L176 | — |
| stepN:p12:sh-iii | PASS | p12 L177 | — |
| bpN:p12:envelopes | FAIL | p12 L180–190 | D2: the shells edge points at L181–184, rather than the application at L187–188. |
| stepN:p12:en-term | PASS | p12 L187–188 | — |
| stepN:p12:en-choice | PASS | p12 L189 | — |
| bpN:p12:identity | PASS | p12 L194–203 | — |
| stepN:p12:id-eq | PASS | p12 L200 | — |
| stepN:p12:id-chain | PASS | p12 L201 | — |
| stepN:p12:id-div | PASS | p12 L202 | — |
| bpN:p12:pointwise | PASS | p12 L205–216 | — |
| stepN:p12:pw-lambda | PASS | p12 L211–212 | — |
| stepN:p12:pw-q | PASS | p12 L213 | — |
| stepN:p12:pw-sum | PASS | p12 L214–215 | — |
| stepN:p12:tr-cov | PASS | p12 L227 | — |
| stepN:p12:tr-cells | PASS | p12 L228 | — |
| stepN:p12:tr-sum | PASS | p12 L229 | — |
| bpN:p12:stopped | PASS | p12 L232–246 | — |
| stepN:p12:st-meas | PASS | p12 L241 | — |
| stepN:p12:st-pt | PASS | p12 L242 | — |
| stepN:p12:st-int | PASS | p12 L243–245 | — |
| bpN:p12:s-most#data | PASS | p12 L250 | — |
| bpN:p12:good | PASS | p12 L252–257 | — |
| bpN:p12:bad | FAIL | p12 L259–266 | D3: the statement uses Gamma_eta and Gamma_rho defined by good, but has no direct good edge. |
| stepN:p12:bd-exit | PASS | p12 L263 | — |
| stepN:p12:bd-stay | PASS | p12 L264 | — |
| stepN:p12:bd-concl | PASS | p12 L265 | — |
| stepN:p12:mo-E | PASS | p12 L269 | — |
| stepN:p12:mo-z | PASS | p12 L270 | — |
| bpN:p12:s-mean#data | PASS | p12 L275 | — |
| stepN:p12:me-flow | PASS | p12 L278 | — |
| stepN:p12:me-cont | PASS | p12 L280 | — |
| stepN:p12:me-good | PASS | p12 L282 | — |
| stepN:p12:me-bad | PASS | p12 L284 | — |
| stepN:p12:me-mean | FAIL | p12 L286 | D4: added s-flow and s-most edges are transitive here; L286 uses the supplied scalar bounds, Psi and the mean-section constant. |
| stepN:p12:me-markov | PASS | p12 L288 | — |
| bpN:p12:ext-dep#complete-contraction | PASS | p12 L37 | — |
| bpN:p12:ext-dep#derivative-limit | PASS | p12 L37 | — |
| bpN:p12:ext-dep#picard | PASS | p12 L37 | — |
| bpN:p12:ext-dep#linear | PASS | p12 L37 | — |
| bpN:p12:ext-dep#identify | PASS | p12 L37 | — |
| bpN:p12:ext-dep#parameter-integral | PASS | p12 L37 | — |

## Proposed-coverage verdicts

Every proposed coverage record was checked independently, including exclusions and prose. **All 102 proposed coverage items PASS.** The node corrections above do not invalidate a mapping to the correctly identified source unit. In particular the ext-dep item now maps to all seven intended nodes, the two paper-sourcegap items map to the actual blueprint repair rather than an invented external input, and the administrative remarks remain excluded.

| ID | Verdict | Span re-read | Reason for FAIL |
|---|---|---|---|
| bpN:p0:avg-mean | PASS | p0 L384–396 | — |
| bpN:p0:avg-most | PASS | p0 L398–406 | — |
| heading:bpN:p0:avg-sec | PASS | p0 L341 | — |
| p0:sourcegap-L395 | PASS | p0 L395 | — |
| p0:sourcegap-L405 | PASS | p0 L405 | — |
| p0:source-L361 | PASS | p0 L361 | — |
| p0:source-L369 | PASS | p0 L369 | — |
| p0:source-L394 | PASS | p0 L394 | — |
| p0:source-L404 | PASS | p0 L404 | — |
| p0:prose-L343-L351 | PASS | p0 L343–351 | — |
| stepN:p12:fb-cauchy | PASS | p12 L30 | — |
| stepN:p12:fb-real | PASS | p12 L30 | — |
| bpN:p12:ext-dep | PASS | p12 L37 | — |
| bpN:p12:ext-geom | PASS | p12 L39 | — |
| bpN:p12:averaged | PASS | p12 L42–44 | — |
| bpN:p12:flow | PASS | p12 L50–58 | — |
| stepN:p12:fl-short | PASS | p12 L60 | — |
| stepN:p12:fl-chain | PASS | p12 L62 | — |
| stepN:p12:fl-inverse | PASS | p12 L64 | — |
| stepN:p12:fl-symp | PASS | p12 L66 | — |
| stepN:p12:fl-transl | PASS | p12 L68 | — |
| stepN:p12:ex-g | PASS | p12 L80 | — |
| stepN:p12:ex-open | PASS | p12 L82 | — |
| stepN:p12:co-a | PASS | p12 L93 | — |
| stepN:p12:co-b | PASS | p12 L94 | — |
| stepN:p12:co-c | PASS | p12 L95 | — |
| stepN:p12:co-d | PASS | p12 L96 | — |
| bpN:p12:corrector | PASS | p12 L99–110 | — |
| bpN:p12:wreg | PASS | p12 L112–120 | — |
| stepN:p12:wr-smooth | PASS | p12 L122 | — |
| stepN:p12:wr-ac | PASS | p12 L124 | — |
| stepN:p12:wr-b | PASS | p12 L126 | — |
| stepN:p12:wr-d | PASS | p12 L128 | — |
| stepN:p12:sl-box | PASS | p12 L154 | — |
| stepN:p12:sl-k | PASS | p12 L158 | — |
| stepN:p12:sh-i | PASS | p12 L175 | — |
| stepN:p12:sh-ii | PASS | p12 L176 | — |
| stepN:p12:sh-iii | PASS | p12 L177 | — |
| bpN:p12:envelopes | PASS | p12 L180–185 | — |
| stepN:p12:en-term | PASS | p12 L187–188 | — |
| stepN:p12:en-choice | PASS | p12 L189 | — |
| bpN:p12:identity | PASS | p12 L194–198 | — |
| stepN:p12:id-eq | PASS | p12 L200 | — |
| stepN:p12:id-chain | PASS | p12 L201 | — |
| stepN:p12:id-div | PASS | p12 L202 | — |
| bpN:p12:pointwise | PASS | p12 L205–208 | — |
| stepN:p12:pw-lambda | PASS | p12 L211–212 | — |
| stepN:p12:pw-q | PASS | p12 L213 | — |
| stepN:p12:pw-sum | PASS | p12 L214–215 | — |
| stepN:p12:tr-cov | PASS | p12 L227 | — |
| stepN:p12:tr-cells | PASS | p12 L228 | — |
| stepN:p12:tr-sum | PASS | p12 L229 | — |
| bpN:p12:stopped | PASS | p12 L236–239 | — |
| stepN:p12:st-meas | PASS | p12 L241 | — |
| stepN:p12:st-pt | PASS | p12 L242 | — |
| stepN:p12:st-int | PASS | p12 L243–245 | — |
| bpN:p12:good | PASS | p12 L252–254 | — |
| bpN:p12:bad | PASS | p12 L259–261 | — |
| stepN:p12:bd-exit | PASS | p12 L263 | — |
| stepN:p12:bd-stay | PASS | p12 L264 | — |
| stepN:p12:bd-concl | PASS | p12 L265 | — |
| stepN:p12:mo-E | PASS | p12 L269 | — |
| stepN:p12:mo-z | PASS | p12 L270 | — |
| stepN:p12:me-flow | PASS | p12 L278 | — |
| stepN:p12:me-cont | PASS | p12 L280 | — |
| stepN:p12:me-good | PASS | p12 L282 | — |
| stepN:p12:me-bad | PASS | p12 L284 | — |
| stepN:p12:me-mean | PASS | p12 L286 | — |
| stepN:p12:me-markov | PASS | p12 L288 | — |
| bpN:p12:constants | PASS | p12 L293–295 | — |
| bpN:p12:errata | PASS | p12 L297–300 | — |
| bpN:p12:doubts | PASS | p12 L302–304 | — |
| bpN:p12:fwd | PASS | p12 L306–308 | — |
| heading:bpN:p12 | PASS | p12 L1 | — |
| heading:bpN:p12:s-setting | PASS | p12 L16 | — |
| heading:bpN:p12:s-flow | PASS | p12 L46 | — |
| heading:bpN:p12:s-data | PASS | p12 L85 | — |
| heading:bpN:p12:s-rank | PASS | p12 L131 | — |
| heading:bpN:p12:s-env | PASS | p12 L161 | — |
| heading:bpN:p12:s-point | PASS | p12 L192 | — |
| heading:bpN:p12:s-trans | PASS | p12 L218 | — |
| heading:bpN:p12:s-most | PASS | p12 L248 | — |
| heading:bpN:p12:s-mean | PASS | p12 L273 | — |
| heading:bpN:p12:s-rem | PASS | p12 L291 | — |
| p12:source-L57 | PASS | p12 L57 | — |
| p12:source-L137 | PASS | p12 L137 | — |
| p12:source-L147 | PASS | p12 L147 | — |
| p12:source-L224 | PASS | p12 L224 | — |
| p12:prose-L7-L8 | PASS | p12 L7–8 | — |
| p12:prose-L10-L12 | PASS | p12 L10–12 | — |
| p12:prose-L14-L14 | PASS | p12 L14 | — |
| p12:prose-L18-L22 | PASS | p12 L18–22 | — |
| p12:prose-L24-L24 | PASS | p12 L24 | — |
| p12:prose-L33-L34 | PASS | p12 L33–34 | — |
| p12:prose-L48-L48 | PASS | p12 L48 | — |
| p12:prose-L87-L87 | PASS | p12 L87 | — |
| p12:prose-L133-L133 | PASS | p12 L133 | — |
| p12:prose-L163-L163 | PASS | p12 L163 | — |
| p12:prose-L220-L220 | PASS | p12 L220 | — |
| p12:prose-L232-L234 | PASS | p12 L232–234 | — |
| p12:prose-L250-L250 | PASS | p12 L250 | — |
| p12:prose-L275-L275 | PASS | p12 L275 | — |

## Complete replacement blocks

Only the five failed nodes follow. These are copied from the current packet with just the DEPS/EDGE changes described above. No coverage replacement is needed.

```text
NODE: stepN:p12:fl-chain
KIND: step
TITLE: Chaining
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62
CONTRACT_ID: stepN:p12:fl-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: short-time data of fl-short; t_1>0, (t_1,x_1)∈𝒟 (t_1<0 by time reversal, t_1=0 trivial)
SOURCE_QUANTIFIERS: t_1; x_1
SOURCE_CONCLUSION: a neighbourhood of x_1 lies in Ω_{t_1}; 𝒟 open; Φ continuous; Φ_{t_1}=Γ_N is C¹ near x_1; Y=DΓ_N=product of propagators satisfies the variational equation (parts (b) and openness in (a))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:fl-short, bpN:p3:gen-symmetry, bpN:p3:gen-uniqueness, bpN:p12:s-flow#data, bpN:p12:s-setting#data, bpN:p3:ext-compact, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:fl-short | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | short-time C¹ family used on a finite cover of the orbit arc
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | time reversal for t_1<0
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | flow property Γ_N=Φ_{t_1} by uniqueness
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | Ω_t, 𝒟, γ_x
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | compactness of the orbit arc and its finite subcover
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | chain rule for the composed short-time maps and their derivative propagators
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12+sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:wreg
KIND: lemma
TITLE: Regularity of $w$ and the divisor identity
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L112-L120
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L121-L129
CONTRACT_ID: bpN:p12:wreg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpN:p12:corrector; standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); I∈G (the M_2 bounds need only ¦I¦≤R)
SOURCE_QUANTIFIERS: κ∈(0,1]; (θ,I)∈ℝⁿ×B(0,R); v∈ℝⁿ
SOURCE_CONCLUSION: w is C¹ on ℝⁿ×B(0,R), 1-periodic in θ, with termwise derivatives; (a) ¦w(θ,I)¦_∞≤Ŵ(I); (b) r=−2πiΣ_{k≠0}f_k κ²/(q_k²+κ²) k e_k, ¦r¦_∞≤R̂(I); (c) ¦∂_θw v¦_∞≤Ŵ_1(I)¦v¦_∞, in particular ¦∂_θw ∂_If¦_∞≤(2/s)Ŵ_1; (d) ¦D_Iw(θ,I)v¦_∞≤B̂(I)¦v¦_∞ and ¦D_Iu_k(I)v¦_∞≤b_k(I)¦v¦_∞ for every k≠0 (b_k the k-th summand of B̂)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:corrector, bpN:p12:coef, bpN:p12:s-setting#data, stepN:p12:wr-smooth, stepN:p12:wr-ac, stepN:p12:wr-b, stepN:p12:wr-d, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L112-L118 | w, r, envelopes
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L122-L122 | Fourier bounds on f_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L113-L113 | M_2, G
EDGE: stepN:p12:wr-smooth | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L122-L122 | proof step
EDGE: stepN:p12:wr-ac | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L124-L124 | proof step
EDGE: stepN:p12:wr-b | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L126-L126 | proof step
EDGE: stepN:p12:wr-d | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L128-L128 | proof step
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L116-L116 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12+sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:envelopes
KIND: proposition
TITLE: Envelope integrals
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L180-L185
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L186-L190
CONTRACT_ID: bpN:p12:envelopes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpN:p12:coef (σ); standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); 0<κ≤1; ε∈(0,1] with κ=√ε
SOURCE_QUANTIFIERS: κ∈(0,1]; (then ε∈(0,1], κ=√ε)
SOURCE_CONCLUSION: ∫_GŴ≤c_Wℓ_κ, ∫_GŴ_1≤2πc_Wℓ_κ, ∫_GB̂≤c_B/κ, ∫_GR̂≤c_Rκ with c_W=3C_1(1+Ω_0)σ, c_B=σC_1(6n(1+Ω_0)/s+5√nM_2), c_R=10πC_1σ; for κ=√ε: 2ε∫_GŴ≤4c_W√ε and ∫_GΦ̂_{ε,κ}≤c_Φ√ε with c_Φ=(4/s)c_B+(8π/s)c_W+c_R
CONSTANT_SCOPE: c_W,c_B,c_R,c_Φ depend on n,R,s,h only (through C_1,Ω_0,M_2,σ)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:coef, bpN:p12:shells, bpN:p12:corrector, bpN:p12:s-setting#data, stepN:p12:en-term, stepN:p12:en-choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L181-L181 | σ=Σ(1+¦k¦_1)³β_k of coef (d)
EDGE: bpN:p12:shells | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L187-L188 | integrals of ψ_κ, ψ_κ′, κ²/(q²+κ²)
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L182-L183 | envelopes Ŵ, Ŵ_1, B̂, R̂, Φ̂_{ε,κ}
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L181-L181 | Ω_0, M_2, G
EDGE: stepN:p12:en-term | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L187-L187 | proof step
EDGE: stepN:p12:en-choice | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L189-L189 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12+sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:bad
KIND: lemma
TITLE: Bad data have large $\Psi$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L259-L261
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L262-L266
CONTRACT_ID: bpN:p12:bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-most#data; bpN:p12:s-trans#psi; η≤ρ; x∈K∖Γ_η (or x∈K∖Γ_ρ)
SOURCE_QUANTIFIERS: ε; η≤ρ; x∈K∖Γ_η
SOURCE_CONCLUSION: Ψ(x)≥η (and Ψ(x)≥ρ for x∈K∖Γ_ρ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-most#data, bpN:p12:s-trans#psi, stepN:p12:bd-exit, stepN:p12:bd-stay, stepN:p12:bd-concl, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:good
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | ρ, η, T
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | Ψ
EDGE: stepN:p12:bd-exit | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L263-L263 | proof step
EDGE: stepN:p12:bd-stay | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L264-L264 | proof step
EDGE: stepN:p12:bd-concl | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L265-L265 | proof step
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | Gamma_eta and Gamma_rho are the good sets defined by the preceding lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12+sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:me-mean
KIND: step
TITLE: The mean
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286
CONTRACT_ID: stepN:p12:me-mean
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m≤Ψ on Γ_ρ; m≤3R/2 and ρVol(K∖Γ_ρ)≤A_1√ε on the bad set; m≥0
SOURCE_QUANTIFIERS: ε∈(0,1]
SOURCE_CONCLUSION: ∫_Km≤A_1√ε(1+(3R/2)/(R/8))=13A_1√ε=A√ε, and ∫⁻_K ofReal(m)=ofReal∫_Km≤ofReal(A√ε)
CONSTANT_SCOPE: A=13A_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:me-good, stepN:p12:me-bad, stepN:p12:me-cont, bpN:p12:stopped, bpN:p12:s-mean#data, bpN:p12:s-setting#data, bpN:p12:s-trans#psi
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:me-good | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | bound by Ψ on Γ_ρ
EDGE: stepN:p12:me-bad | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | bound on the bad data
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | m integrable, nonnegative
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | ∫_KΨ≤A_1√ε
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | A=13A_1
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | ρ=R/8, R
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | Psi is the section-defined stopped functional
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12+sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Separate blueprint observations

The slice review's L36 caveat about ext-tsum's unstated C1-summand convention remains a source-level issue; the actual application at L122 explicitly has C1 summands. It is not a new graph FAIL. L82's openness is relative to nonnegative time, consistent with the exit statement and graph context.

One additional minor source cross-reference issue: p12 L68 says “Theorem gen-maximal (d)”, but the current statement of gen-maximal, Part 3 L251–258, has no item (d). Its uniqueness/maximality conclusion supplies the intended translated maximal solution argument, together with ham-periodic. The graph keeps those actual dependencies; this is a source numbering correction for the blueprint owner, not an invented missing theorem or a reason to edit the frozen declarations. No pinned paper was re-audited and no new paper erratum is asserted.

## Validation and limits

Read-only checks found exact DEPS/EDGE correspondence, existing prerequisite IDs and in-bounds locator ranges for all 72 proposed nodes. Traversal of the packet dependencies from avg-mean and avg-most reaches every proposed node and has no cycle. The fixes add only already-present inputs and preserve acyclicity and reachability. No graph checker result is claimed to replace the manual use-site/source-field checks.

The report has one verdict row for each of the 72 proposed nodes and 102 proposed coverage items. Replacement blocks retain all unaffected fields verbatim. Packet and manuscript hashes were rechecked unchanged after writing the report. Only `docs/graph/N/reviews/N-p12-delta.md` was written; no packet, SPEC, manifest, Lean file or other report was edited. No Lean/build, implementation inspection, ABI process or state-changing git command was run. This is a source-topology receipt only; the three exposed SOURCE_GAP inputs remain explicit proof obligations.
