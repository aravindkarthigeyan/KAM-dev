# N-p7 delta topology review

Reviewer: sol-delta-N-d. Marker: delta-N-d.

Verdict: FAIL. Audited all 31 PROPOSED nodes and 64 PROPOSED coverage items: 2 node FAILs and 1 coverage FAILs. The prior slice reviewer is sol-review-N-d; this is an independent delta review.

The audit re-read the raw slice and every PROPOSED record's statement, proof and EDGE spans, compared the prior slice review's requested repair with the merged packet, and checked direct uses, package data, conditional applications, statement fields, constants, locators, coverage and imports under SPEC. This is a source-topology review, not a proof-status or Lean review. No Lean command was run and no implementation file was read.

Cross-part statement checks: Part 1 L22–26, L35–39, L112–118; Part 3 maximality, uniqueness, exit, periodic continuation, Hamiltonian regularity, energy and periodicity; Part 4 domains, weighted norms, coefficients, B.1, B.3, B.4 and projections; Part 5 setting, transform, composition/integral and canonical-map package; imported K Part 1 L75–78, L227–236, L1047–1051 and L1073–1079. Import applicability was checked at the consumers, without widening the imported contracts. Frozen interfaces were consulted only as identities/interfaces. These slices own no frozen anchors.

CORPUS.sha256 and IMPORTS.sha256 both match the current files. No PROPOSED node in either slice contains a route edge added as “alternative derivation offered by the proof (route)” or the mechanical quantifier text “inherits the fixed data and quantifiers of the enclosing proof; no new binders”. The case splits are branches of one proof, not alternative derivations needing route nodes. Earlier proof arguments explicitly replayed by the source are checked as argument reuse with the local hypotheses.

## PROPOSED nodes

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p7:ext-num | PASS | L19–19 | Universal parameters now match the inequalities at L19. |
| bpN:p7:real-system | PASS | L34–37; L38–42; L39–39; L40–40; L35–35; L41–41 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:rs-smooth | PASS | L39–39 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:rs-field | PASS | L40–40 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:theta-derivative | PASS | L44–47; L48–51; L49–49; L50–50; L45–45 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:td-loss | PASS | L49–49 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:td-lim | FAIL | L50–50 | The norm-package addition repairs the original FAIL. The retained norm-compare edge claims the general estimate Euclidean(v)<=sum_j abs(v_j), but Part 1 L35–39 states this particular comparison only for integer k. The permitted external bpN:p1:ext-norms (L22–23) states it for real/complex v; replace just this dependency and its EDGE target. |
| stepN:p7:rg-coef | PASS | L58–58 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:rg-zero | PASS | L59–59 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:conjugation | PASS | L64–67; L68–71; L69–69; L70–70; L65–65 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:cj-real | PASS | L69–69 | Local restriction-of-scalars external replaces the inapplicable full-strip K lemma; package edges are direct. |
| bpN:p7:preimage | PASS | L73–76; L77–83; L79–79; L80–80; L81–81; L82–82; L74–74; L78–78 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:preimage-nfl | PASS | L85–87; L88–90; L89–89; L86–86 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:transfer | PASS | L92–102; L103–108; L104–104; L105–105; L106–106; L107–107; L93–93 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:tr-ident | PASS | L106–106 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:stopped-extension | PASS | L110–112; L113–116; L114–114; L115–115; L111–111 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:nonresonant | PASS | L127–138; L139–147; L141–141; L142–142; L145–145; L146–146; L128–128; L131–131 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:nr-dataA | PASS | L141–141 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:nr-caseB | PASS | L146–146 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:resonance-data | PASS | L155–159; L156–156; L157–157 | The inapplicable qc-convert edge is removed; the orthogonal-complement reformulation uses the listed linear-algebra external. |
| stepN:p7:ec-taylor | PASS | L175–175 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:ne-terms | PASS | L203–203 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:l2-exit | PASS | L228–228 | Future no-exit application edge removed; first-exit construction and inherited packages remain direct. |
| stepN:p7:l2-iii | PASS | L229–229 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:l2-cone | PASS | L230–231; L230–230 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:l2-conv | PASS | L232–232 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p7:resonant-prop2 | PASS | L237–252; L253–262; L254–254; L255–255; L259–259; L260–260; L261–261; L238–240; L238–242; L238–238; L240–240; L242–242; L239–239 | Unsupported dependence restriction is removed; inherited packages are linked. |
| stepN:p7:p2-red | PASS | L254–254 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p7:p2-cases | PASS | L255–258; L255–255; L258–258; L255–257; L256–257 | Case-A projection use and p2-red locator are corrected; restriction monotonicity and packages are direct. |
| stepN:p7:p2-t3 | FAIL | L260–260 | The newly added Part-6 numerics edge supplies e<6 via e²<8, but the old Part-7 numerics edge remains and purports to supply the same upper bound. Part 7 L19 gives only a lower bound e>2.7 (alongside Young and x exp(-x)); it is not used here. Remove only the redundant, unsupported Part-7 edge. |
| bpN:p7:s-energy#rs | PASS | L178–179; L178–178 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |

## PROPOSED coverage items

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p7:ext-num | PASS | L19–19 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:real-system | PASS | L34–37 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:rs-smooth | PASS | L39–39 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:rs-field | PASS | L40–40 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:theta-derivative | PASS | L44–47 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:td-loss | PASS | L49–49 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:td-lim | PASS | L50–50 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:rg-coef | PASS | L58–58 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:rg-zero | PASS | L59–59 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:conjugation | PASS | L64–67 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:cj-real | PASS | L69–69 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:preimage | PASS | L73–76 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:preimage-nfl | PASS | L85–87 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:transfer | PASS | L92–102 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:tr-ident | PASS | L106–106 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:stopped-extension | PASS | L110–112 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:nonresonant | PASS | L127–138 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:nr-dataA | PASS | L141–141 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:nr-caseB | PASS | L146–146 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:factor-e | PASS | L149–151 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| bpN:p7:resonance-data | PASS | L155–159 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:ec-taylor | PASS | L175–175 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:ne-terms | PASS | L203–203 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:resonant-lemma1 | PASS | L209–214 | Exclusion confirmed against references and the root consumers; no retained root application is omitted. |
| stepN:p7:l1-exit | PASS | L216–216 | Exclusion confirmed against references and the root consumers; no retained root application is omitted. |
| stepN:p7:l1-hyp | PASS | L217–217 | Exclusion confirmed against references and the root consumers; no retained root application is omitted. |
| stepN:p7:l2-exit | PASS | L228–228 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:l2-iii | PASS | L229–229 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:l2-cone | PASS | L230–231 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:l2-conv | PASS | L232–232 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:resonant-prop2 | PASS | L237–252 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:p2-red | PASS | L254–254 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:p2-cases | PASS | L255–258 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p7:p2-t3 | PASS | L260–260 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p7:errata | PASS | L266–274 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| bpN:p7:dictionary | PASS | L276–278 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| bpN:p7:consumers | PASS | L280–282 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7 | PASS | L1–1 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-ext | PASS | L15–15 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-real | PASS | L24–24 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-transfer | PASS | L62–62 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-nr | PASS | L125–125 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-energy | PASS | L153–153 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-lemmas | PASS | L207–207 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-prop2 | PASS | L235–235 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p7:s-errata | PASS | L264–264 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p7:source-L31 | PASS | L31–31 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L36 | PASS | L36–36 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L46 | PASS | L46–46 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L55 | PASS | L55–55 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L66 | PASS | L66–66 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L75 | PASS | L75–75 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L101 | PASS | L101–101 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L137 | PASS | L137–137 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L158 | PASS | L158–158 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L170 | PASS | L170–170 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L197 | PASS | L197–197 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L213 | PASS | L213–213 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L225 | PASS | L225–225 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:source-L251 | PASS | L251–251 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p7:prose-L9-L10 | PASS | L9–10 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p7:prose-L12-L13 | FAIL | L12–13 | The notation exclusion is valid, but its explanatory mapping incorrectly says td-lim links to norm-compare. That comparison is supplied by ext-norms; update only the mapping to agree with the corrected node. |
| p7:prose-L21-L22 | PASS | L21–22 | Pointer exclusion now correctly records ext-restrict at cj-real and no conditional qc-convert application. |
| p7:prose-L178-L179 | PASS | L178–179 | Correct node mapping; any node-field repair above leaves this disposition intact. |

## Minimal replacement blocks

Only the failing fields/edges below change. All other lines, including provenance and status metadata, are copied verbatim from the current packet.

```text
NODE: stepN:p7:td-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
CONTRACT_ID: stepN:p7:td-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: td-loss for every s'<s
SOURCE_QUANTIFIERS: s'↓0
SOURCE_CONCLUSION: letting s'↓0 gives the bound at real theta; ‖v‖_2<=sum_j|v_j|; the last claim |u(x)|<=|u|_{rho,s} is sup-weighted(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:td-loss, bpN:p1:ext-norms, bpN:p4:sup-weighted, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:td-loss | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the bound for each s'
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ‖v‖_2<=sum_j¦v_j¦
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ¦u(x)¦<=¦u¦_{rho,s}
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7+sol-review-N-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:p2-t3
KIND: step
TITLE: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
CONTRACT_ID: stepN:p7:p2-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: p2-cases, p2-t12; Lemma 2 at radius r~
SOURCE_QUANTIFIERS: z~ H~-orbit in W_r~, ‖I~(0)-I_y‖_2<=d_*<rho', I_y in D
SOURCE_CONCLUSION: I~(0) is admissible; Lemma 2 (R) at radius r~ gives ‖I~(t)-I~(0)‖_2<=rho=r~-rho' for |t|<=T~_*=(s~ m r~^2)/(12 Omega~ eta); the rho-ball lies in {‖I-I_y‖<=r/2} so Omega~<=Omega(I_y); case A: T~_*>=T(I_y); case B: T~_*>=T(I_y) since e^{kappa/6}<e<6; case C: T~_*=infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma2, bpN:p7:s-energy#rs, stepN:p7:p2-red, stepN:p7:p2-cases, stepN:p7:p2-t12, bpN:p7:setting, bpN:p7:resonance-data, bpN:p6#data, bpN:p6:ext-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-lemma2 | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | stability in normal-form coordinates
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | admissibility of I~(0) in (RS)
EDGE: stepN:p7:p2-red | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | rho', r~, (R) at radius r~
EDGE: stepN:p7:p2-cases | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | H~, eta, s~ in the three cases
EDGE: stepN:p7:p2-t12 | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | d_*, rho
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the projection/resonance or quasi-convexity definition is used directly
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the consumer uses q, kappa or Z_K directly
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the upper bound e<6 follows from the listed e^2<8; Part-7 numerics only gives a lower bound for e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7+sol-review-N-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: p7:prose-L12-L13
KIND: proof-region
SOURCE: blueprint-N/parts/p7-stability.tex#prose@L12-L13
DISPOSITION: EXCLUDED
REASON: conventions paragraph (frozen conventions, max norms on actions, Euclidean norm only in the convexity argument with the comparisons of p1:norm-compare, no rescaling to Pöschel, n>=1): notation; the Euclidean/max distinction is recorded in the source fields of the nodes that use ‖.‖_2 and linked to bpN:p1:norm-compare at ad-ball, p2-red, p2-t12, p2-concl and to bpN:p1:ext-norms at td-lim
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
```

## Suspected blueprint defects

- Part 7 L50 cites “Lemma norm-compare” for “‖v‖₂≤∑ⱼ¦vⱼ¦”. Its literal Part-1 statement gives this comparison for integer k only. The general real/complex comparison is explicitly available at Part 1 L22–23; the replacement links that permitted external.

- Part 7 L260, Case B, writes “T̃_*=s m r²/(48 Ω ε)” after proving only Ω̃≤Ω(I_y). The formula defining T̃_* uses Ω̃, so substitution gives ≥, not equality. The claimed lower bound by T(I_y) still follows. The packet records that lower bound and is not failed for omitting the erroneous intermediate equality. These are blueprint-level observations, not new claims about the pinned papers.

## Validation

Source pins match. Every initially PROPOSED node and coverage item appears once in its respective audit table. Every FAIL has one complete replacement block; replacements change only the identified failing fields. Review-application parser `--dry-run`: 2 replaced, 0 added, 1 coverage item, 0 unresolved FAILs. Independent row/block checks PASS: exact PROPOSED-record inventory, one block per FAIL, and only the permitted failing fields changed. `git diff --check` on the two review paths produced no output (exit 0). No packets, SPEC, manifests or Lean files were edited.
