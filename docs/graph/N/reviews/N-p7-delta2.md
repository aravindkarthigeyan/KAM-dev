# N-p7 second-round delta topology review

Reviewer: sol-delta2-N-d. Marker: delta2-N-d. Verdict: **FAIL**.

Scope: ONLY the 2 nodes and 1 coverage items still PROPOSED when this review began. The first delta reviewer was sol-delta-N-d; this reviewer wrote neither these records nor their first delta report. Other packet records were read only to establish source context and conditional-input contracts.

Read DELTA-BRIEF and REVIEW-BRIEF in full and the current SPEC including its six-root D28 revision and ownership rulings. Applied the convergence rule: no wording-only failures, and complete replacement blocks change only failing fields. Read the first delta findings and the merged records, their raw statement/proof/EDGE spans, and the source statements of their prerequisites. No assigned record is an anchor or an imported node. No proposed record has a route, a mechanically added route EDGE, or the generic mechanically filled SOURCE_QUANTIFIERS text. Compact inherited/local quantifier descriptions are retained where accurate.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepN:p7:td-lim | FAIL | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | The corrected ext-norms dependency resolves the first delta FAIL. SOURCE_HYPOTHESES still assumes the proved td-loss conclusion instead of the original finite-norm source premises; restore those premises and the direct real-setting/domain packages used by their pointwise domains. Keep the existing td-loss edge. |
| stepN:p7:p2-t3 | FAIL | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | The unsupported Part-7 numerical edge is correctly removed. SOURCE_HYPOTHESES still lists p2-cases, p2-t12 and Lemma 2 as assumptions. Restore the original Proposition-2 premises and the local orbit input; retain those proved results as dependencies and link the norm/domain packages used by the inherited data and time comparison. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| p7:prose-L12-L13 | PASS | blueprint-N/parts/p7-stability.tex#prose@L12-L13 | The corrected explanatory mapping names ext-norms at td-lim and norm-compare at ad-ball, p2-red, p2-t12 and p2-concl; those edges were checked. The original convention paragraph is notation and the exclusion remains valid. |

All proposed coverage items PASS. The proposed node repairs above retain the ext-norms mapping, so this disposition needs no further change.

## Source and conditional-input checks

Read Part 7 L12–13, L26–32, L44–51, L155–159, L178–179, L220–232 and L237–262; Part 1 L22–23 and L35–39; Part 4 L34–55 and L85–96; and Part 6 L11–12 and L22. The replacement ext-norms fact applies to the real/complex derivative vector, unlike the integer-only comparison in the cited norm-compare clause. The source’s e<6 estimate is supplied by the permitted Part-6 numerical input e²<8, not by the Part-7 lower bound for e. At T3, p2-red supplies the smaller-radius (R) conditions, p2-cases supplies the (RS) normal forms and remainder bounds, and p2-t12 supplies the admissibility/displacement data. Those results remain direct prerequisites rather than source assumptions. The three source cases are required cases of one proof, not alternative routes. All existing and newly required package edges were checked.

## Replacement fragments

Only SOURCE_HYPOTHESES and the missing DEPS/EDGE entries change. Quantifiers, conclusions, locators, constants and all provenance/status fields remain verbatim. No source theorem or frozen premise is strengthened.

```text
NODE: stepN:p7:td-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
CONTRACT_ID: stepN:p7:td-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; D subset R^n; varrho,s>0; u in O(varrho,s) with finite norm, as in theta-derivative; theta in R^n and I in U_varrho D for the derivative bound; x in D_{varrho,s} for the last value bound; 0<s'<s is the auxiliary limit parameter
SOURCE_QUANTIFIERS: s'↓0
SOURCE_CONCLUSION: letting s'↓0 gives the bound at real theta; ‖v‖_2<=sum_j|v_j|; the last claim |u(x)|<=|u|_{rho,s} is sup-weighted(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:td-loss, bpN:p1:ext-norms, bpN:p4:sup-weighted, bpN:p4:norm, bpN:p7:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:td-loss | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the bound for each s'
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ‖v‖_2<=sum_j¦v_j¦
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ¦u(x)¦<=¦u¦_{rho,s}
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the derivative bound is at real theta and I in U_varrho D, the real neighbourhood fixed by this package
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the last claim is for x in D_{varrho,s}, the complex domain in the enclosing statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7+sol-delta-N-d
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
SOURCE_HYPOTHESES: n>=1; D subset R^n; r,s,K,alpha>0; 1<p<=3/2, q=p/(p-1)>=3, kappa=2πKs; Lambda subset Z^n a subgroup; 0<m<=M; l,delta>0; h holomorphic on V_rD and real on U_rD with ‖∂_I^2 h(I)‖_{2->2}<=M for all I in V_rD (complex Hessian), h l,m-quasi-convex on U_rD; f in O(r,s)^R with eps=|f|_{r,s}<infinity; H=h+f; (a) |k·omega(I)|>=alpha for I in D, k in Z_K\Lambda, and D delta-close to exact Lambda-resonances; (b) eps<=(p/q)(m r^2/2^7) and delta<=mr/8; (c) r<=min(alpha/(p sqrt(n) M K), 4l/m) and (added) Mr<=l/2; local T3 input: z~ is an H~-orbit in W_r~ on an interval J containing 0, with I_y in D and Euclidean norm of I~(0)-I_y at most d_*<rho'; r~,s~,H~,eta,rho',d_* denote the objects constructed at p2-red, p2-cases and p2-t12, whose established conclusions are dependencies rather than extra assumptions
SOURCE_QUANTIFIERS: z~ H~-orbit in W_r~, ‖I~(0)-I_y‖_2<=d_*<rho', I_y in D
SOURCE_CONCLUSION: I~(0) is admissible; Lemma 2 (R) at radius r~ gives ‖I~(t)-I~(0)‖_2<=rho=r~-rho' for |t|<=T~_*=(s~ m r~^2)/(12 Omega~ eta); the rho-ball lies in {‖I-I_y‖<=r/2} so Omega~<=Omega(I_y); case A: T~_*>=T(I_y); case B: T~_*>=T(I_y) since e^{kappa/6}<e<6; case C: T~_*=infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma2, bpN:p7:s-energy#rs, stepN:p7:p2-red, stepN:p7:p2-cases, stepN:p7:p2-t12, bpN:p7:setting, bpN:p7:resonance-data, bpN:p6#data, bpN:p6:ext-numerics, bpN:p4:norm, bpN:p4:domains
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
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | epsilon and eta are the weighted norms of f and the constructed f_*, used in the time comparison
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | inherited h and f domain premises on V_rD and D_{r,s}, and their normal-form restrictions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7+sol-delta-N-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source defects and limits

No new mathematical source defect is introduced or repaired here. The first delta’s observations remain: Part 7 L50 cites norm-compare for a general vector comparison available instead in ext-norms; Part 7 L260 Case B writes equality with Ω although only Ω~≤Ω has been shown, so the valid substitution is a lower bound. The existing node records that lower bound and passes this aspect; its FAIL concerns the source-hypothesis field and missing direct packages.

Both source hash inventories match: CORPUS 15/15, IMPORTS 4/4. This is source/topology review only; no proof status, implementation Lean, providers, frozen theorem bodies or manifest state fields were inspected. No Lean/build/lint command or state-changing git was run. Only the requested delta2 report is written; packets, SPEC and sources are untouched.

## Validation receipts

- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p7 docs/graph/N/reviews/N-p7-delta2.md sol-delta2-N-d --dry-run`: `2 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 0 PASS nodes`.
- Independent inventory check: exactly one row per currently PROPOSED node and coverage item; no verdict rows for other records. Every FAIL has a complete replacement. DEPS/EDGE target order agrees and all source bounds are valid.
- Replacement comparison: only SOURCE_HYPOTHESES, DEPS and the added EDGE entries differ; all other fields and existing edges remain verbatim. Tables and whitespace checked independently.
- `git diff --check -- docs/graph/N/reviews/N-p6-delta2.md docs/graph/N/reviews/N-p7-delta2.md`: exit 0. Reports are new files, so their contents were also checked independently of git’s tracked-file diff.
