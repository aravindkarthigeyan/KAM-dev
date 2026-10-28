# P-p1p2 topology review

Reviewer: sol-review-P-d. Marker: rev-P-d. Verdict: **FAIL**.

Reviewed both raw source parts in full (Part 1 L1–256; Part 2 L1–257), the 80 node records and all 130 coverage items, SPEC, and the cited source statements/proofs in K and N. Frozen definition checks used only their designated files and manifest identity fields. This is source topology review; no Lean implementation or proof status is used. No Lean was run.

`bpP:p2:use5` stays: its mathematical dictionary is consumed in Part 5 L176/L179. `bpN:p6:iterative-special` also stays as consumed mathematics, but under P ownership in P-xown, with native ID as required by SPEC.

Step replacement hypotheses below repeat the enclosing **source premises**, not the enclosing theorem as a dependency. The existing incoming proof-step edges supply derived estimates. B1/B2 and stopping/iteration cases remain separate conditional cases, not simultaneous assumptions.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p1:ext-comp | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:ext-comp@L21-L21 | Source statement, direct uses and coverage agree. |
| bpP:p1:ext-ift | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:ext-ift@L22-L22 | Source statement, direct uses and coverage agree. |
| bpP:p1:ext-area | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:ext-area@L23-L23 | Source statement, direct uses and coverage agree. |
| bpP:p1:ext-borel | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:ext-borel@L24-L24 | Source statement, direct uses and coverage agree. |
| bpP:p1:ext-det | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:ext-det@L25-L25 | Source statement, direct uses and coverage agree. |
| bpP:p1:omega-algebra | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:omega-algebra@L30-L34; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:omega-algebra@L35-L38 | Source statement, direct uses and coverage agree. |
| stepP:p1:oa-mat | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-mat@L36-L36 | Source statement, direct uses and coverage agree. |
| stepP:p1:oa-b | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37 | Do not assume the uniqueness established by oa-mat; retain the source nonzero conformal factor. Missing direct dependency on bpP:p1:conv#data. |
| bpP:p1:order | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L40-L42 | Missing direct dependency on bpP:p1:conv#data. |
| bpP:p1:chart | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:chart@L46-L48 | Source statement, direct uses and coverage agree. |
| bpP:p1:chart-field | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:chart-field@L51-L55; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:chart-field@L56-L59 | Source statement, direct uses and coverage agree. |
| stepP:p1:cf-diff | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-diff@L57-L57 | Source statement, direct uses and coverage agree. |
| stepP:p1:cf-field | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p1:ext-comp. Missing direct dependency on bpP:p1:conv#data. |
| bpP:p1:chart-orbit | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:chart-orbit@L61-L63; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:chart-orbit@L64-L66 | Source statement, direct uses and coverage agree. |
| bpP:p1:hol-chart | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L72-L74; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L75-L77 | K real-restriction assumes a whole strip, whereas this statement allows arbitrary open V. Expose the missing derivative restriction bridge. Missing direct dependency on stepP:p1:hc-real-derivative. |
| bpP:p1:lattice-torus | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:lattice-torus@L81-L92 | Source statement, direct uses and coverage agree. |
| bpP:p1:torus-transport | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L94-L108; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L109-L117 | Missing direct dependency on bpP:p1:conv#data. |
| stepP:p1:tt-an | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-an@L111-L111 | Source statement, direct uses and coverage agree. |
| stepP:p1:tt-lat | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | Missing direct dependency on bpP:p1:conv#data. |
| stepP:p1:tt-inj | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113 | Missing direct dependency on bpP:p1:conv#data. |
| stepP:p1:tt-lag | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p1:ext-comp. Missing direct dependency on bpP:p1:conv#data. |
| stepP:p1:tt-flow | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115 | Missing direct dependency on bpP:p1:chart. |
| stepP:p1:tt-dio | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-dio@L116-L116 | Source statement, direct uses and coverage agree. |
| bpP:p1:typical | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:typical@L119-L121 | Source statement, direct uses and coverage agree. |
| bpP:p1:period-convert | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:period-convert@L127-L135; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:period-convert@L136-L140 | Source statement, direct uses and coverage agree. |
| stepP:p1:pc-a | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-a@L137-L137 | DS_c is computed here, not a premise. |
| stepP:p1:pc-b | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | The c-chart property is supplied by pc-a, not assumed. Missing direct dependency on bpP:p1:chart. Missing direct dependency on bpP:p1:conv#data. |
| stepP:p1:pc-c | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139 | Missing direct dependency on bpP:p1:ext-comp. |
| bpP:p1:cyl-pipeline | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:cyl-pipeline@L142-L144; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:cyl-pipeline@L145-L147 | Source statement, direct uses and coverage agree. |
| bpP:p1:phys-pipeline | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:phys-pipeline@L149-L151; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:phys-pipeline@L152-L154 | Source statement, direct uses and coverage agree. |
| bpP:p1:two-scale | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:two-scale@L158-L161 | Source statement, direct uses and coverage agree. |
| bpP:p1:dio-basic | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L163-L171; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L172-L174 | The source does not assume that nu is a norm. |
| bpP:p1:dio-sources | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-sources@L176-L181; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-sources@L182-L184 | Source statement, direct uses and coverage agree. |
| bpP:p1:liouville | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville@L191-L193; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville@L194-L199 | Source statement, direct uses and coverage agree. |
| stepP:p1:li-det | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-det@L195-L195 | Missing direct dependency on bpP:p1:chart. |
| stepP:p1:li-meas | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | Missing direct dependency on bpP:p1:chart. |
| stepP:p1:li-borel | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-borel@L197-L197 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. |
| stepP:p1:li-vol | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | Missing direct dependency on bpP:p1:chart. Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. |
| bpP:p1:liouville-lattice | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L201-L203; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L204-L206 | Q1/Q2 are explicitly retained premises; the torus-transport conclusion is not used. Missing direct dependency on bpP:p1:chart. |
| bpP:p1:torus-union | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-union@L212-L214; blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-union@L215-L220 | Source statement, direct uses and coverage agree. |
| stepP:p1:tu-ext | PASS | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-ext@L216-L216 | Source statement, direct uses and coverage agree. |
| stepP:p1:tu-meas | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. |
| stepP:p1:tu-borel | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-borel@L218-L218 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. |
| stepP:p1:tu-bounds | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-bounds@L219-L219 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p1:conv#data. |
| bpP:p2:setting | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:setting@L40-L43 | Source statement, direct uses and coverage agree. |
| bpP:p2:direct | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L45-L50; blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L51-L55 | The special-case content is consumed, but N excludes it: transfer ownership to P-xown and retarget the edge. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:dr-use | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L54 | L54 explicitly says these results never mention omega; these are non-use mentions, not applications. |
| bpP:p2:split | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L57-L67; blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L68-L74 | Missing direct dependency on N:bpN:p5:setting. |
| stepP:p2:sp-coef | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L70 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:direct. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:sp-field | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L72 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:sp-int | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| bpP:p2:nfb | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:nfb@L78-L93; blueprint-P/parts/p2-averaging.tex#bpP:p2:nfb@L94-L127 | Source statement, direct uses and coverage agree. |
| stepP:p2:nfb-first | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L99-L105 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:nfb-N | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L111 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. L111 has no factor 3 in the final bound (2.2). |
| stepP:p2:nfb-ind | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L113-L117 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:nfb-concl | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L121 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:nfb-disp | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L126 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| bpP:p2:avg | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:avg@L136-L146; blueprint-P/parts/p2-averaging.tex#bpP:p2:avg@L147-L150 | Source statement, direct uses and coverage agree. |
| stepP:p2:av-dict | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-dict@L148-L148 | A reference for notation E is not a use of the averaging proposition; conv#data supplies the norm. |
| stepP:p2:av-hyp | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| bpP:p2:osc-bracket | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L171-L175; blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L176-L181 | Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:ob-der | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. The angular Cauchy premise at L177 is unavailable; expose the source defect instead of assuming Cauchy estimates. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:ob-prod | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L179 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:ob-field | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. The oscillator components require anisotropic coordinate Cauchy bounds; N vf-bound has only the angle/action domain and is cited as a pattern. Missing direct dependency on N:bpN:p4:cauchy. Missing direct dependency on N:bpN:p4:sup-weighted. Missing direct dependency on bpP:p2:conv#data. |
| bpP:p2:osc-iter | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L183-L189; blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L190-L195 | Symplecticity is a conclusion, not a hypothesis; retain the actual source smallness and direct-divisor data. L184 transfers the full iterative lemma, including the map and normal-form assertions, not only the two numerical bounds. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:oi-transfer | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. L191 explicitly replaces this result by osc-bracket; it is not a supplier for the enlarged domain. Missing direct dependency on bpP:p2:direct. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:oi-ratio | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on N:bpN:p5:adjoint. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| stepP:p2:oi-range | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on stepP:p2:oi-transfer. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| stepP:p2:oi-disp | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on stepP:p2:sp-field. Missing direct dependency on stepP:p2:oi-transfer. Missing direct dependency on stepP:p2:oi-range. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| bpP:p2:osc-averaging | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-averaging@L198-L210; blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-averaging@L211-L220 | Source statement, direct uses and coverage agree. |
| stepP:p2:oa-first | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L215 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. |
| stepP:p2:oa-iter | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L218 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| stepP:p2:oa-concl | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| bpP:p2:averaged-remainder | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:averaged-remainder@L222-L234; blueprint-P/parts/p2-averaging.tex#bpP:p2:averaged-remainder@L235-L238 | Source statement, direct uses and coverage agree. |
| stepP:p2:ar-apply | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236 | Restore the enclosing source premises; derived proof inputs belong in DEPS, not additional hypotheses. Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| stepP:p2:ar-collect | FAIL | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237 | Missing direct dependency on bpP:p2:conv#data. Missing direct dependency on bpP:p2:s-osc#data. |
| bpP:p2:use5 | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L240-L246 | The displayed canonical reciprocal angle/action scaling is not S_c with c=1 (which is the identity). Missing direct dependency on bpP:p1:chart. |
| bpP:p1:conv#data | FAIL | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:conv#data@L17-L17 | No d>=1 premise is imposed in the source conventions or the frozen Phase definition. |
| bpP:p2:conv#data | FAIL | blueprint-P/parts/p2-averaging.tex#bpP:p2:conv#data@L24-L36 | Missing direct dependency on N:bpN:p6:ext-numerics. |
| bpP:p2:s-osc#data | PASS | blueprint-P/parts/p2-averaging.tex#bpP:p2:s-osc#data@L167-L169 | Source statement, direct uses and coverage agree. |

Coverage findings: no existing slice coverage disposition fails. The new bridge is a child of the already mapped hol-chart record.

| Coverage item | Verdict | Reason |
|---|---|---|

all other coverage items PASS

## Replacement fragments for P-p1p2

These are complete blocks; only failing fields/edges have changed. In particular, metadata and status fields of existing records are preserved.

### stepP:p1:oa-b

```text
NODE: stepP:p1:oa-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37
CONTRACT_ID: stepP:p1:oa-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A a real 2d x 2d matrix; c != 0; Omega(Au,Av)=c Omega(u,v) for all u,v; ell linear
SOURCE_QUANTIFIERS: A, c != 0, ell
SOURCE_CONCLUSION: (det A)^2=c^{2d}, so A invertible and ¦det A¦=¦c¦^d; Omega(w,c A^{-1}X_ell)=ell(A w) for all w, so c A^{-1}X_ell=X_{ell o A}; (c) is the displayed matrix identity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:ext-det, stepP:p1:oa-mat, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:ext-det | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37 | (det A)^2=c^{2d} from det(AB)=det A det B, det A^T = det A, det M_0=1
EDGE: stepP:p1:oa-mat | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37 | Omega(w,X_ell)=ell(w) and the uniqueness of X_ell
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:oa-b@L37-L37 | M_0, Omega and X_ell
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p1:order

```text
NODE: bpP:p1:order
KIND: claim
TITLE: Reordering of coordinates
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L40-L42
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L40-L42
CONTRACT_ID: bpP:p1:order
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 3 writes points as (J,theta) (action, angle); the frozen order is (position, momentum)=(angle, action)
SOURCE_QUANTIFIERS: pi(J,theta)=(theta,J)
SOURCE_CONCLUSION: the relabelling pi turns theta-dot=d_J H, J-dot=-d_theta H into X_H of the frozen field and the form dJ^dtheta into Omega, with no sign changes; all statements of Part 3 are read in the frozen order after applying pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:hamsymp#symplecticForm, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L41-L41 | X_H of Part 0 is the target of the relabelled equations
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L41-L41 | the form Omega of Part 0
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:order@L41-L41 | the coordinate order and the form Omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
```

### stepP:p1:cf-field

```text
NODE: stepP:p1:cf-field
KIND: step
TITLE: The field
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58
CONTRACT_ID: stepP:p1:cf-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a c-chart on O; H:Ph_d->R; z in O; locally put ell=DH(Psi z), A=DPsi(z); split according to differentiability
SOURCE_QUANTIFIERS: z in O
SOURCE_CONCLUSION: D(H^Psi)(z)=c^{-1} ell o A, X_{H^Psi}(z)=c^{-1}X_{ell o A}=A^{-1}X_ell, hence A X_{H^Psi}(z)=X_H(Psi z); in the non-differentiable case both derivatives are 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:omega-algebra, bpP:p1:chart, bpP:p0:hamsymp#hamiltonianVectorField, stepP:p1:cf-diff, bpP:p1:ext-comp, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | part (b): X_{ell o A}=c A^{-1} X_ell
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | the chart condition on A=DPsi(z) and H^Psi=c^{-1}H o Psi
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | X_H(z)=X_{DH(z)} and the zero convention
EDGE: stepP:p1:cf-diff | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | differentiability equivalence to split the two cases
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | differentiate c^{-1} H composed with Psi in the differentiable branch
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:cf-field@L58-L58 | X_ell and the matrix convention
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p1:hol-chart

```text
NODE: bpP:p1:hol-chart
KIND: lemma
TITLE: Holomorphic charts, real restriction
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L72-L74
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L75-L77
CONTRACT_ID: bpP:p1:hol-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; V subset C^{2d} open; Psi:V->C^{2d} holomorphic, real at real points; D Psi(z)^T M_0 D Psi(z)=c M_0 (complex matrices) for z in V cap R^{2d}; O=V cap R^{2d}
SOURCE_QUANTIFIERS: d, c, V, Psi, then any total extension Psi~ off O
SOURCE_CONCLUSION: any total map Ph_d->Ph_d that agrees with Psi on O is a c-chart on O, with real derivative D Psi(z) restricted to R^{2d}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:chart, bpP:p1:omega-algebra, K:bp:p1:holomorphic-analytic, bpP:p1:conv#data, stepP:p1:hc-real-derivative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76 | the target notion of c-chart
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76 | (c): the matrix identity equals the chart condition
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76 | holomorphic maps are analytic
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L73-L73 | M_0 and the identification of R^{2d} with Ph_d
EDGE: stepP:p1:hc-real-derivative | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76 | identify the real derivative with the restriction of the complex derivative on arbitrary V
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p1:torus-transport

```text
NODE: bpP:p1:torus-transport
KIND: theorem
TITLE: Torus transport
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L94-L108
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L109-L117
CONTRACT_ID: bpP:p1:torus-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; O open; Psi a c-chart on O; H:Ph_d->R; G=H^Psi=c^{-1}H o Psi; w in R^d; K with LT(G,O,w,K); (Q1) O+iota_k=O and Psi(z+iota_k)=Psi(z)+sigma_k for z in O, k in Z^d; (Q2) z,z1 in O, k in Z^d, Psi(z1)=Psi(z)+sigma_k implies z1=z+iota_m for some m; (a) d=a+b, sigma_k=shift((k_i)_{i<a}), U contains Psi(K(R^d)); (b) sigma_k=0 and w (gamma,tau)-Diophantine for some gamma>0, tau>d-1
SOURCE_QUANTIFIERS: d, c, O, Psi, H, w, K, (sigma_k)_k; (a) a, b, U; (b) gamma, tau
SOURCE_CONCLUSION: with calK:=Psi o K: (a) IsCylinderTorus(H,U,w,calK); (b) IsPhysicalTorus(H,w,calK); in both cases calK(theta+t w) is the transport of the chart orbit, calK(R^d)=Psi(K(R^d)) and D calK(theta)=DPsi(K theta)DK(theta)
CONSTANT_SCOPE: none (gamma, tau only in (b), chosen with the Diophantine hypothesis)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p1:tt-an, stepP:p1:tt-lat, stepP:p1:tt-inj, stepP:p1:tt-lag, stepP:p1:tt-flow, stepP:p1:tt-dio, bpP:p1:chart, bpP:p1:lattice-torus, bpP:p0:fastshift#fastShift, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:diophantine#IsDiophantine, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p1:tt-an | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L111-L111 | step (i)
EDGE: stepP:p1:tt-lat | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L112-L112 | step (ii)
EDGE: stepP:p1:tt-inj | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L113-L113 | step (iii)
EDGE: stepP:p1:tt-lag | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L114-L114 | step (iv)
EDGE: stepP:p1:tt-flow | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L115-L115 | step (v)
EDGE: stepP:p1:tt-dio | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L116-L116 | step (vi)
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L95-L95 | Psi a c-chart, G=H^Psi
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L95-L95 | hypothesis LT(G,O,w,K)
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L102-L102 | sigma_k=shift of the cylinder case
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L102-L102 | conclusion of (a)
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L103-L103 | conclusion of (b)
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L103-L103 | Diophantine hypothesis of (b)
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:torus-transport@L97-L97 | iota_k in Q1 and Q2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tt-lat

```text
NODE: stepP:p1:tt-lat
KIND: step
TITLE: (ii) Lattice behaviour
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112
CONTRACT_ID: stepP:p1:tt-lat
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L2), (Q1)
SOURCE_QUANTIFIERS: theta in R^d, k in Z^d
SOURCE_CONCLUSION: calK(theta+k)=Psi(K theta+iota_k)=calK(theta)+sigma_k; in (a) this is clause (iii) of IsCylinderTorus (shift by k_f=(k_i)_{i<a}); in (b) it is periodicity, clause (iii) of IsPhysicalTorus
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:lattice-torus, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:fastshift#fastShift, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | (L2)
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | clause (iii) of IsCylinderTorus
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | clause (iii) of IsPhysicalTorus
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | shift of the fast coordinates
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lat@L112-L112 | iota_k in the lattice calculation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tt-inj

```text
NODE: stepP:p1:tt-inj
KIND: step
TITLE: (iii) Injectivity modulo the lattice
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113
CONTRACT_ID: stepP:p1:tt-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (Q2), (L2), (L3); (a) k in Z^a with calK(theta1)=calK(theta)+shift(k)
SOURCE_QUANTIFIERS: theta, theta1, k
SOURCE_CONCLUSION: theta1-theta in Z^d: Psi(K theta1)=Psi(K theta)+sigma_{(k,0)} gives K theta1=K theta+iota_m=K(theta+m) by (Q2),(L2), then (L3); (b) is the case k=0 (sigma_0=0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:lattice-torus, bpP:p0:fastshift#fastShift, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113 | (L2) and (L3)
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113 | shift(k) of the cylinder case
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-inj@L113-L113 | iota_k in the lattice calculation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tt-lag

```text
NODE: stepP:p1:tt-lag
KIND: step
TITLE: (iv) Derivative and Lagrangian property
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114
CONTRACT_ID: stepP:p1:tt-lag
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; O open; Psi a c-chart on O; H:Ph_d->R; G=H^Psi=c^{-1}H o Psi; w in R^d; K with LT(G,O,w,K); (Q1) O+iota_k=O and Psi(z+iota_k)=Psi(z)+sigma_k for z in O, k in Z^d; (Q2) z,z1 in O, k in Z^d, Psi(z1)=Psi(z)+sigma_k implies z1=z+iota_m for some m; (a) d=a+b, sigma_k=shift((k_i)_{i<a}), U contains Psi(K(R^d)); (b) sigma_k=0 and w (gamma,tau)-Diophantine for some gamma>0, tau>d-1; write calK=Psi composed with K
SOURCE_QUANTIFIERS: theta, u, v
SOURCE_CONCLUSION: D calK(theta)=DPsi(K theta)DK(theta) is injective and Omega(D calK u,D calK v)=c Omega(DK u,DK v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:omega-algebra, bpP:p1:chart, bpP:p1:lattice-torus, bpP:p1:ext-comp, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | (b): DPsi(K theta) is invertible
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | Omega(DPsi u,DPsi v)=c Omega(u,v)
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | (L4) injectivity and (L5) Lagrangian property
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | D calK=DPsi composed with DK by the chain rule
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-lag@L114-L114 | Omega in the Lagrangian calculation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tt-flow

```text
NODE: stepP:p1:tt-flow
KIND: step
TITLE: (v) The flow clause
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115
CONTRACT_ID: stepP:p1:tt-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L6); y(s)=K(theta+s w) in O; G differentiable at y(t)
SOURCE_QUANTIFIERS: theta, t
SOURCE_CONCLUSION: s -> calK(theta+s w)=Psi(y(s)) has derivative X_H(calK(theta+t w)) at t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:chart-orbit, bpP:p1:lattice-torus, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:chart-orbit | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115 | pointwise orbit transfer
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115 | (L6)
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tt-flow@L115-L115 | G=H^Psi and the chart data used to apply chart-orbit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:pc-a

```text
NODE: stepP:p1:pc-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-a@L137-L137
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-a@L137-L137
CONTRACT_ID: stepP:p1:pc-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; S_c(z_1,z_2)=(c z_1,z_2)
SOURCE_QUANTIFIERS: u, v, z, k
SOURCE_CONCLUSION: Omega(S_c u,S_c v)=c Omega(u,v); det DS_c=c^d; S_c(z+iota_k)=S_c(z)+(c k,0) by linearity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:chart, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-a@L137-L137 | Omega(DPsi u,DPsi v)=c Omega(u,v) is the chart condition; S_c is analytic
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-a@L137-L137 | Omega and S_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:pc-b

```text
NODE: stepP:p1:pc-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138
CONTRACT_ID: stepP:p1:pc-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; S_c(z_1,z_2)=(c z_1,z_2); H~:Ph_d->R
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: D S_c X_{H~^{S_c}}=X_{H~} o S_c; explicitly d_{z_2}H~^{S_c}=c^{-1}d_2 H~ and d_{z_1}H~^{S_c}=d_1 H~, which are Part 3 equations theta-dot=d_I H, I-dot=-d_theta H
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:chart-field, stepP:p1:pc-a, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p1:chart, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:chart-field | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | D Psi X_{H^Psi}=X_H o Psi for Psi=S_c
EDGE: stepP:p1:pc-a | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | S_c is a c-chart
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | X_{H~}
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | the pulled-back Hamiltonian H~^{S_c}
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-b@L138-L138 | S_c and its derivative
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:pc-c

```text
NODE: stepP:p1:pc-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139
CONTRACT_ID: stepP:p1:pc-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K(theta)=kappa~(2 pi theta) with the linear bijection theta->2 pi theta of R^d
SOURCE_QUANTIFIERS: theta, t
SOURCE_CONCLUSION: all claims of (c) follow by composition with the bijection (K(theta+s w)=kappa~(2 pi theta+s omega~) exactly, so no chain rule is needed for the flow clause); (d) is step (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p1:pc-a, bpP:p1:lattice-torus, bpP:p1:ext-comp
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p1:pc-a | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139 | (d) is the lattice formula of (a)
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139 | the clauses (L1)-(L6) that are transported
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:pc-c@L139-L139 | analyticity and derivative of composition with theta mapped to 2 pi theta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p1:dio-basic

```text
NODE: bpP:p1:dio-basic
KIND: lemma
TITLE: Elementary properties of \Lean{KAM.IsDiophantine}
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L163-L171
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L172-L174
CONTRACT_ID: bpP:p1:dio-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in R^d, gamma,tau>0; the frozen definition gamma/¦k¦_1^tau <= ¦k.omega¦ for k != 0; (b) nu any function satisfying 0<nu(k)<=¦k¦_1 for every nonzero k; (d) the set D_{gamma_1,gamma_2,tau}
SOURCE_QUANTIFIERS: omega, gamma, tau; (a) gamma, tau, gamma1, tau1; (b) nu; (c) s>0; (d) gamma_1, gamma_2, tau
SOURCE_CONCLUSION: (a) (gamma,tau)-Diophantine implies (gamma1,tau1)-Diophantine for 0<gamma1<=gamma, tau1>=tau (so tau>d-1 and tau>a+b can be arranged); (b) if ¦k.omega¦>=gamma nu(k)^{-tau} for k != 0 with 0<nu(k)<=¦k¦_1 then (gamma,tau)-Diophantine; (c) omega is (gamma,tau)-Diophantine iff omega/s is (gamma/s,tau)-Diophantine; (d) D_{gamma_1,gamma_2,tau} is contained in the (min{gamma_1,gamma_2},tau)-Diophantine vectors
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:diophantine#IsDiophantine, bpP:p1:two-scale
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L164-L164 | the frozen definition of Diophantine
EDGE: bpP:p1:two-scale | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:dio-basic@L169-L169 | (d): the set D_{gamma_1,gamma_2,tau}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:li-det

```text
NODE: stepP:p1:li-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-det@L195-L195
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-det@L195-L195
CONTRACT_ID: stepP:p1:li-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a c-chart on O
SOURCE_QUANTIFIERS: z in O
SOURCE_CONCLUSION: ¦det D Psi(z)¦=c^d on O
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:omega-algebra, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-det@L195-L195 | (b): ¦det A¦=¦c¦^d
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-det@L195-L195 | the c-chart condition and analytic regularity of Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:li-meas

```text
NODE: stepP:p1:li-meas
KIND: step
TITLE: Measurability
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196
CONTRACT_ID: stepP:p1:li-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a c-chart on O; A subset O measurable
SOURCE_QUANTIFIERS: A, countable cover (O_j)
SOURCE_CONCLUSION: Psi(A) is Lebesgue measurable: cover O by countably many open O_j on which Psi is a homeomorphism onto an open set, split A cap O_j=B u N (F_sigma, null), Psi(B) sigma-compact, Psi(N) null since Psi is locally Lipschitz
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:ext-ift, bpP:p1:omega-algebra, bpP:p1:ext-borel, K:bp:p1:lip-image, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:ext-ift | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | local homeomorphisms with continuous inverse
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | DPsi invertible on O (needed for the inverse function theorem)
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | A cap O_j = F_sigma u null; images of compact sets are compact
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | locally Lipschitz images of null sets are null
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-meas@L196-L196 | the c-chart condition and analytic regularity of Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:li-borel

```text
NODE: stepP:p1:li-borel
KIND: step
TITLE: Borel sets
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-borel@L197-L197
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-borel@L197-L197
CONTRACT_ID: stepP:p1:li-borel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a c-chart on O; A subset O Lebesgue measurable; for the Borel branch, A is Borel; obtain the local inverses from li-meas
SOURCE_QUANTIFIERS: A
SOURCE_CONCLUSION: Psi(A cap O_j)=(Psi_j^{-1})^{-1}(A cap O_j) is Borel, so Psi(A) is a countable union of Borel sets
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p1:li-meas
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p1:li-meas | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-borel@L197-L197 | the countable cover by local homeomorphisms and their continuous inverses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:li-vol

```text
NODE: stepP:p1:li-vol
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198
CONTRACT_ID: stepP:p1:li-vol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a c-chart on O; A subset O Lebesgue measurable; first the Borel case, then decompose a general measurable A using ext-borel
SOURCE_QUANTIFIERS: A
SOURCE_CONCLUSION: for Borel A: meas Psi(A)<=int_A ¦det D Psi¦=c^d meas A, equality if Psi is injective on A; for Lebesgue measurable A=B u N: meas Psi(A)<=meas Psi(B), equality under injectivity by the subscript-0 version
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:ext-area, stepP:p1:li-det, stepP:p1:li-meas, bpP:p1:ext-borel, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:ext-area | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | area formula and its subscript-0 version
EDGE: stepP:p1:li-det | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | ¦det D Psi¦=c^d
EDGE: stepP:p1:li-meas | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | Psi(A) measurable
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | A=B u N with B Borel, N null
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:li-vol@L198-L198 | the c-chart condition and analytic regularity of Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p1:liouville-lattice

```text
NODE: bpP:p1:liouville-lattice
KIND: lemma
TITLE: Quotient version for whole tori
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L201-L203
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L204-L206
CONTRACT_ID: bpP:p1:liouville-lattice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the hypotheses of Theorem torus-transport with sigma_k=0 (c-chart Psi on O, (Q1), (Q2)); A subset O measurable with A+iota_k=A for all k; Q={z: z_{1,i} in [0,1) for all i}
SOURCE_QUANTIFIERS: d, c, O, Psi, then A
SOURCE_CONCLUSION: Psi(A) is Lebesgue measurable, Psi(A)=Psi(A cap Q), meas Psi(A)=c^d meas(A cap Q); hence 0<meas Psi(A) iff 0<meas A, and meas Psi(A)<infinity if A cap Q is bounded; Borel version: if A is Borel so is Psi(A)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:liouville, bpP:p1:ext-borel, bpP:p1:conv#data, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:liouville | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L205-L205 | meas Psi(A cap Q)=c^d meas(A cap Q) for Psi injective on A cap Q
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L205-L205 | injective continuous images of Borel sets are Borel
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L202-L202 | iota_k
EDGE: bpP:p1:chart | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:liouville-lattice@L202-L202 | c-chart Psi on O
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Q1 and Q2 are the explicitly stated lattice hypotheses at L202, not an application of the torus-transport theorem.
```

### stepP:p1:tu-meas

```text
NODE: stepP:p1:tu-meas
KIND: step
TITLE: Measurability
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217
CONTRACT_ID: stepP:p1:tu-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E subset R^d Lebesgue measurable; A=E x [0,1)^d; calF:A->R^{2d} with ¦calF(x)-calF(y)¦<=Lambda ¦x-y¦ (max norms); optionally ¦calF(x)-calF(y)¦>=lambda ¦x-y¦, lambda>0; (B1) E sigma-compact; (B2) E Borel and calF continuous and injective on A; last clause calF(omega,theta)=phi_omega(theta) with phi_omega(theta+k)=phi_omega(theta)+iota_k; use the extension constructed in tu-ext
SOURCE_QUANTIFIERS: A
SOURCE_CONCLUSION: A=B u N (F_sigma, null), calF^(B) sigma-compact, meas calF^(N)=0, so calF(A)=calF^(B) u calF^(N) is Lebesgue measurable (not Borel)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:ext-borel, K:bp:p1:lip-image, stepP:p1:tu-ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217 | F_sigma u null decomposition, sigma-compact images
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217 | Lipschitz images of null sets are null
EDGE: stepP:p1:tu-ext | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-meas@L217-L217 | the extension calF^
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tu-borel

```text
NODE: stepP:p1:tu-borel
KIND: step
TITLE: Borel cases
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-borel@L218-L218
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-borel@L218-L218
CONTRACT_ID: stepP:p1:tu-borel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E subset R^d Lebesgue measurable; A=E x [0,1)^d; calF:A->R^{2d} with ¦calF(x)-calF(y)¦<=Lambda ¦x-y¦ (max norms); optionally ¦calF(x)-calF(y)¦>=lambda ¦x-y¦, lambda>0; (B1) E sigma-compact; (B2) E Borel and calF continuous and injective on A; last clause calF(omega,theta)=phi_omega(theta) with phi_omega(theta+k)=phi_omega(theta)+iota_k; treat B1 and B2 separately; the standing Lipschitz bound supplies continuity also in B1
SOURCE_QUANTIFIERS: cases B1, B2
SOURCE_CONCLUSION: (B1) E x [0,1)^d is a countable union of compact sets, images compact so calF(A) sigma-compact; (B2) calF(A) Borel by Lusin-Souslin
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:ext-borel
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-borel@L218-L218 | compact images and injective continuous images of Borel sets
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p1:tu-bounds

```text
NODE: stepP:p1:tu-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-bounds@L219-L219
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-bounds@L219-L219
CONTRACT_ID: stepP:p1:tu-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E subset R^d Lebesgue measurable; A=E x [0,1)^d; calF:A->R^{2d} with ¦calF(x)-calF(y)¦<=Lambda ¦x-y¦ (max norms); optionally ¦calF(x)-calF(y)¦>=lambda ¦x-y¦, lambda>0; (B1) E sigma-compact; (B2) E Borel and calF continuous and injective on A; last clause calF(omega,theta)=phi_omega(theta) with phi_omega(theta+k)=phi_omega(theta)+iota_k; the optional lower bound has lambda>0
SOURCE_QUANTIFIERS: calF, Lambda, lambda
SOURCE_CONCLUSION: meas calF(A)<=Lambda^{2d} meas A=Lambda^{2d} meas E; under the lower bound calF is injective with lambda^{-1}-Lipschitz inverse so meas E<=lambda^{-2d} meas calF(A); the last claim from periodicity and countability of Z^d
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:lip-image, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-bounds@L219-L219 | Lipschitz images scale measure by at most the Lipschitz constant to the power 2d
EDGE: bpP:p1:conv#data | blueprint-P/parts/p1-hamiltonian-tools.tex#stepP:p1:tu-bounds@L219-L219 | iota_k in the final translated union
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p2:direct

```text
NODE: bpP:p2:direct
KIND: lemma
TITLE: Iterative Lemma, direct form
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L45-L50
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L51-L55
CONTRACT_ID: bpP:p2:direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Definition setting with (Div_q), q>=1 arbitrary (q=1 allowed); the hypotheses of N homological and N iterative (with its Remark iterative-special) with N hypotheses cond-nr, cond-L, K L r<=alpha/p replaced by (Div_q)
SOURCE_QUANTIFIERS: D, r, K, alpha, q, Lambda, h as in setting; N constants as in the cited N statements
SOURCE_CONCLUSION: N homological and N iterative (with its Remark) hold verbatim, with the same phi=sum_{k in Z_K minus Lambda} f^_k/(2 pi i k.omega) chi_k, the same constants and estimates, under (Div_q) in place of cond-nr, cond-L and K L r<=alpha/p
CONSTANT_SCOPE: constants are those of the cited N statements (depend on nothing of the Part 2 hypotheses beyond what N states)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:dr-use, bpP:p2:setting, N:bpN:p6:homological, N:bpN:p6:iterative, bpN:p6:iterative-special, N:bpN:p6:setting, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:dr-use | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L52-L52 | proof: where the hypotheses are used
EDGE: bpP:p2:setting | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L47-L47 | (Div_q)
EDGE: N:bpN:p6:homological | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L46-L46 | N homological solve
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L46-L46 | N iterative lemma
EDGE: bpN:p6:iterative-special | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L46-L46 | its Remark is extended to (Div_q)
EDGE: N:bpN:p6:setting | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L47-L47 | the replaced hypotheses cond-nr, cond-L
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L46-L46 | the Fourier convention and alpha-bar in the inherited estimates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The special-case remark is consumed and owned by P in slice P-xown. The variant at source-gap L49 is supplied by dr-use; preserve the original N hypotheses except for the three explicitly replaced divisor assumptions.
```

### stepP:p2:dr-use

```text
NODE: stepP:p2:dr-use
KIND: step
TITLE: Where the hypotheses are used
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L54
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L54
CONTRACT_ID: stepP:p2:dr-use
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N proofs of homological and iterative; (Div_q)
SOURCE_QUANTIFIERS: as in direct
SOURCE_CONCLUSION: the hypotheses enter N homological only through N divisor, whose conclusion is (Div_q), used only in the steps hom-def and hom-norm; the proof of N iterative uses them only through N homological; p^{-1}+q^{-1}=1 occurs only in N divisor; the rest (flow, composition, canonical-map, transform, bracket) never mentions omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:homological, N:bpN:p6:setting, N:bpN:p6:divisor, N:bpN:p6:iterative, bpP:p2:setting
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:homological | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L52 | N homological (steps hom-def and hom-norm, mapped to the result)
EDGE: N:bpN:p6:setting | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L52 | cond-nr, cond-L
EDGE: N:bpN:p6:divisor | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L52-L52 | N divisor whose conclusion is (Div_q)
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L54-L54 | N iterative uses the hypotheses only through homological
EDGE: bpP:p2:setting | blueprint-P/parts/p2-averaging.tex#stepP:p2:dr-use@L53-L53 | (Div_q) as the replaced hypothesis
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the steps hom-def, hom-norm of N are not imported as nodes; mapped to N:bpN:p6:homological
```

### bpP:p2:split

```text
NODE: bpP:p2:split
KIND: lemma
TITLE: Two-scale step: splitting of $\phi$ and componentwise displacement
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L57-L67
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L68-L74
CONTRACT_ID: bpP:p2:split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n, r,s>0, 0<alpha_2<=alpha_1, q>=1, Lambda={0}, K>=0, (Div_q^{(2)}): ¦k.omega(I)¦>=alpha_1/q for k_1 != 0 and >=alpha_2/q for k_1=0, k != 0, I in V_r D, k in Z_K; f in O(r,s), delta=¦f¦_{r,s}; 0<rho<r/2, 0<sigma<s/2; u=q delta/(alpha-bar_2 rho sigma)<=1/4; phi and Phi=X^1_phi as in Lemma direct; phi^{(1)}=sum_{k_1 != 0} phi^_k chi_k, phi^{(2)}=phi-phi^{(1)}
SOURCE_QUANTIFIERS: n_1, n_2, D, r, s, alpha_1, alpha_2, q, K, then f, then rho, sigma
SOURCE_CONCLUSION: (a) phi^{(2)} independent of theta_1, ¦phi^{(1)}¦_{r,s}<=q delta/alpha-bar_1 and ¦phi¦_{r,s}<=q delta/alpha-bar_2; (b) on D_{r-3 rho/2,s-3 sigma/2}: ¦Phi_{I_1}-I_1¦<=q delta/(e alpha-bar_1 sigma), ¦Phi_{I_2}-I_2¦<=q delta/(e alpha-bar_2 sigma), ¦Phi_theta-theta¦<=q delta/(alpha-bar_2 rho)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:sp-coef, stepP:p2:sp-field, stepP:p2:sp-int, bpP:p2:direct, bpP:p2:conv#data, N:bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:sp-coef | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L69-L69 | step: coefficients
EDGE: stepP:p2:sp-field | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L71-L71 | step: field
EDGE: stepP:p2:sp-int | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L73-L73 | step: integrate
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L60-L60 | phi, Phi=X^1_phi and the hypothesis u<=1/4 of Lemma direct
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L58-L58 | norm, D_{r,s}, alpha-bar_j, Z_K
EDGE: N:bpN:p5:setting | blueprint-P/parts/p2-averaging.tex#bpP:p2:split@L60-L60 | Phi=X_phi^1 and the Hamiltonian-field/flow notation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:sp-coef

```text
NODE: stepP:p2:sp-coef
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L70
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L70
CONTRACT_ID: stepP:p2:sp-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n, r,s>0, 0<alpha_2<=alpha_1, q>=1, Lambda={0}, K>=0, (Div_q^{(2)}): ¦k.omega(I)¦>=alpha_1/q for k_1 != 0 and >=alpha_2/q for k_1=0, k != 0, I in V_r D, k in Z_K; f in O(r,s), delta=¦f¦_{r,s}; 0<rho<r/2, 0<sigma<s/2; u=q delta/(alpha-bar_2 rho sigma)<=1/4; phi and Phi=X^1_phi as in Lemma direct; phi^{(1)}=sum_{k_1 != 0} phi^_k chi_k, phi^{(2)}=phi-phi^{(1)}
SOURCE_QUANTIFIERS: k in Z_K
SOURCE_CONCLUSION: ¦phi^_k¦<=q ¦f^_k¦/alpha-bar_1 for k_1 != 0 and <=q ¦f^_k¦/alpha-bar_2 for every k != 0; summing gives (a) (independence since phi^{(2)} has only modes with k_1=0); phi^{(i)} lie in O(r,s) with finite norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:homological, N:bpN:p4:coefficients, bpP:p2:direct, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:homological | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L69 | the formula for phi
EDGE: N:bpN:p4:coefficients | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L70-L70 | finite family of holomorphic coefficients in O(r,s) with finite norm
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L69 | the coefficient formula under Div_q, without the original Lipschitz/divisor premises of N
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-coef@L69-L69 | the split coordinates, alpha-bar and weighted norm conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:sp-field

```text
NODE: stepP:p2:sp-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L72
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L72
CONTRACT_ID: stepP:p2:sp-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n, r,s>0, 0<alpha_2<=alpha_1, q>=1, Lambda={0}, K>=0, (Div_q^{(2)}): ¦k.omega(I)¦>=alpha_1/q for k_1 != 0 and >=alpha_2/q for k_1=0, k != 0, I in V_r D, k in Z_K; f in O(r,s), delta=¦f¦_{r,s}; 0<rho<r/2, 0<sigma<s/2; u=q delta/(alpha-bar_2 rho sigma)<=1/4; phi and Phi=X^1_phi as in Lemma direct; phi^{(1)}=sum_{k_1 != 0} phi^_k chi_k, phi^{(2)}=phi-phi^{(1)}
SOURCE_QUANTIFIERS: z in D_{r-3 rho/2,s-3 sigma/2}
SOURCE_CONCLUSION: the trajectory X^t_phi(z), 0<=t<=1, stays in the closed ball B_nu(z,eps) inside Omega; first n_1 components of I-dot are -d_{theta_1}phi^{(1)} (since d_{theta_1}phi^{(2)}=0) bounded by q delta/(e alpha-bar_1 sigma); ¦d_{theta_2}phi¦<=q delta/(e alpha-bar_2 sigma), ¦d_I phi¦<=q delta/(alpha-bar_2 rho)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:setting, N:bpN:p5:flow, N:bpN:p5:canonical-map, N:bpN:p5:vf-bound, stepP:p2:sp-coef, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:setting | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L71 | the scaled norm nu_{rho,sigma}
EDGE: N:bpN:p5:flow | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L71 | the flow stays in the ball, N flow (a)
EDGE: N:bpN:p5:canonical-map | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L71 | step cm-ab: trajectory stays in the domain
EDGE: N:bpN:p5:vf-bound | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L72-L72 | componentwise field bounds
EDGE: stepP:p2:sp-coef | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L72-L72 | norm bounds of phi^{(1)} and phi
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-field@L71-L71 | the split coordinates, alpha-bar and weighted norm conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:sp-int

```text
NODE: stepP:p2:sp-int
KIND: step
TITLE: Integrate
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73
CONTRACT_ID: stepP:p2:sp-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n, r,s>0, 0<alpha_2<=alpha_1, q>=1, Lambda={0}, K>=0, (Div_q^{(2)}): ¦k.omega(I)¦>=alpha_1/q for k_1 != 0 and >=alpha_2/q for k_1=0, k != 0, I in V_r D, k in Z_K; f in O(r,s), delta=¦f¦_{r,s}; 0<rho<r/2, 0<sigma<s/2; u=q delta/(alpha-bar_2 rho sigma)<=1/4; phi and Phi=X^1_phi as in Lemma direct; phi^{(1)}=sum_{k_1 != 0} phi^_k chi_k, phi^{(2)}=phi-phi^{(1)}
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: the mean value inequality along gamma, 0<=t<=1, gives (b) with t=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, stepP:p2:sp-field, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73 | mean value inequality
EDGE: stepP:p2:sp-field | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73 | component bounds of the field along the trajectory
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:sp-int@L73-L73 | the split coordinates, alpha-bar and weighted norm conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:nfb-first

```text
NODE: stepP:p2:nfb-first
KIND: step
TITLE: Step 0
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L99-L105
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L99-L105
CONTRACT_ID: stepP:p2:nfb-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1+n_2; D subset R^n; r>0; s-bar>=0; s>0; K>0 with kappa=2 pi K s>=6; 0<alpha_2<=alpha_1; h holomorphic on V_r D, real on V_r D cap R^n, omega=d_I h; (A1) ¦k.omega(I)¦>=alpha_1 if k_1 != 0, >=alpha_2 if k_1=0, for all I in V_r D, k in Z_K minus {0}; (A2) f in O(r,s-bar+s) real on real points with E:=¦f¦_{r,s-bar+s}<=alpha_2 r/(128 K); put eps=E and use the Step 0 losses
SOURCE_QUANTIFIERS: cases A (e^{-kappa/6}<=y_0) and B (e^{-kappa/6}>y_0)
SOURCE_CONCLUSION: ¦f_1¦<=(1-2y_0)^{-1}(2y_0/e+e^{-kappa/6}) eps with (1-2y_0)^{-1}<=8/7; Case A: eps_1<=3 eps/(4 kappa)<=eps/8 (2.1); Case B (doubled losses): ¦f_1¦<=e^{-kappa/6} eps and the construction stops with Psi=Phi_0', g=f^_0, f_*=f_1, with displacements <3 eps/(alpha-bar_j s), <=4 eps/(alpha-bar r); from now on Case A
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:direct, bpP:p2:split, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L99-L99 | Lemma direct (d) with ¦g¦_*=0
EDGE: bpP:p2:split | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L104-L104 | Lemma split(b) for the displacements in Case B
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-first@L101-L101 | the weighted norm, widths, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:nfb-N

```text
NODE: stepP:p2:nfb-N
KIND: step
TITLE: Number of steps
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L111
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L111
CONTRACT_ID: stepP:p2:nfb-N
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1+n_2; D subset R^n; r>0; s-bar>=0; s>0; K>0 with kappa=2 pi K s>=6; 0<alpha_2<=alpha_1; h holomorphic on V_r D, real on V_r D cap R^n, omega=d_I h; (A1) ¦k.omega(I)¦>=alpha_1 if k_1 != 0, >=alpha_2 if k_1=0, for all I in V_r D, k in Z_K minus {0}; (A2) f in O(r,s-bar+s) real on real points with E:=¦f¦_{r,s-bar+s}<=alpha_2 r/(128 K); Case A of nfb-first; N=floor(kappa/(12 ln 2)); split N=0 and N>=1
SOURCE_QUANTIFIERS: N=floor(kappa/(12 ln 2))
SOURCE_CONCLUSION: N<kappa/8; if N=0 then e^{-kappa/6}>1/4 so eps_1<=eps/8<=e^{-kappa/6} eps and Psi=Phi_0, g=f^_0, f_*=f_1 on D_{3r/4,s-bar+2s/3} with the displacement bounds; for N>=1 the schedule rho_i=r/(8N), sigma_i=s/(4N), r_i=3r/4-2(i-1)rho, s_i=2s/3-2(i-1)sigma, so r_{N+1}=r/2, s_{N+1}=s/6, e^{-2 pi K sigma}<=1/8, rho sigma=rs/(32N^2) and eps<=alpha-bar r s/(2^10 N), eps_1<alpha-bar rho sigma/2^8 (2.2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:ext-numerics, stepP:p2:nfb-first, bpP:p2:direct, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | 12 ln 2>8
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | (2.1) and Step 0 bounds
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | displacement bound of Lemma direct for N=0
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | the weighted norm, widths, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:nfb-ind

```text
NODE: stepP:p2:nfb-ind
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L113-L117
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L113-L117
CONTRACT_ID: stepP:p2:nfb-ind
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1+n_2; D subset R^n; r>0; s-bar>=0; s>0; K>0 with kappa=2 pi K s>=6; 0<alpha_2<=alpha_1; h holomorphic on V_r D, real on V_r D cap R^n, omega=d_I h; (A1) ¦k.omega(I)¦>=alpha_1 if k_1 != 0, >=alpha_2 if k_1=0, for all I in V_r D, k in Z_K minus {0}; (A2) f in O(r,s-bar+s) real on real points with E:=¦f¦_{r,s-bar+s}<=alpha_2 r/(128 K); Case A and N>=1; use the inductive construction of g_i and f_i
SOURCE_QUANTIFIERS: 1<=i<=N
SOURCE_CONCLUSION: step i (Lemma direct on D_{r_i,S_i}, losses (rho,sigma)) is admissible and eps_{i+1}<=eps_i/4, hence eps_i<=4^{1-i} eps_1 for 1<=i<=N+1: u_i<=2^{-8}, ¦g_{i-1}¦_*<=alpha-bar rho sigma/2^4 (weights <=1/2 for j>=1, <=1/N for g_0), eps_{i+1}<=(128/127)(2/e(1/16+1/2^8)+1/8) eps_i<eps_i/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:direct, N:bpN:p4:projections, N:bpN:p6:setting, stepP:p2:nfb-N, stepP:p2:nfb-first, N:bpN:p6:ext-numerics, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L113-L113 | Lemma direct (d) with delta=eps_i
EDGE: N:bpN:p4:projections | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L114-L114 | ¦g_i-g_{i-1}¦<=eps_i
EDGE: N:bpN:p6:setting | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L115-L115 | weights ¦g¦_* of N
EDGE: stepP:p2:nfb-N | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L115-L115 | schedule and (2.2)
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L116-L116 | eps_1 bound (2.1)
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L116-L116 | sum 4^{1-i}=4/3
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-ind@L113-L113 | the weighted norm, widths, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:nfb-concl

```text
NODE: stepP:p2:nfb-concl
KIND: step
TITLE: Conclusion of the construction
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L121
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L121
CONTRACT_ID: stepP:p2:nfb-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1+n_2; D subset R^n; r>0; s-bar>=0; s>0; K>0 with kappa=2 pi K s>=6; 0<alpha_2<=alpha_1; h holomorphic on V_r D, real on V_r D cap R^n, omega=d_I h; (A1) ¦k.omega(I)¦>=alpha_1 if k_1 != 0, >=alpha_2 if k_1=0, for all I in V_r D, k in Z_K minus {0}; (A2) f in O(r,s-bar+s) real on real points with E:=¦f¦_{r,s-bar+s}<=alpha_2 r/(128 K); Case A and N>=1; compose the constructed maps
SOURCE_QUANTIFIERS: Psi=Phi_0 o ... o Phi_N
SOURCE_CONCLUSION: H o Psi=h+g+f_* with g=g_N=g(I1) (finite sum of theta-independent functions), f_*=f_{N+1}; (a) by the telescoping lemma (holomorphic, canonical, injective; periodicity and reality inherited from each Phi_i); (c) eps_{N+1}<=4^{-N} eps_1<=4^{-N-1} eps<=e^{-kappa/6} eps; (b) ¦g-g_0¦<=(4/3) eps_1<=eps/kappa<=eps/6 and the sup bound from sup<=weighted norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:telescope, N:bpN:p6:iterative, N:bpN:p4:sup-weighted, stepP:p2:nfb-ind, stepP:p2:nfb-N, N:bpN:p6:ext-numerics, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:telescope | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | composition of the Phi_i with domains U_i=D_{r_i,S_i}
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | reality and periodicity of each Phi_i
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L121-L121 | sup bound from the weighted norm
EDGE: stepP:p2:nfb-ind | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L120-L120 | eps_i<=4^{1-i} eps_1
EDGE: stepP:p2:nfb-N | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L120-L120 | N+1>kappa/(12 ln 2)
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L121-L121 | sum 4^{1-i}=4/3
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | the weighted norm, widths, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:nfb-disp

```text
NODE: stepP:p2:nfb-disp
KIND: step
TITLE: (d) Displacement
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L126
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L126
CONTRACT_ID: stepP:p2:nfb-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1+n_2; D subset R^n; r>0; s-bar>=0; s>0; K>0 with kappa=2 pi K s>=6; 0<alpha_2<=alpha_1; h holomorphic on V_r D, real on V_r D cap R^n, omega=d_I h; (A1) ¦k.omega(I)¦>=alpha_1 if k_1 != 0, >=alpha_2 if k_1=0, for all I in V_r D, k in Z_K minus {0}; (A2) f in O(r,s-bar+s) real on real points with E:=¦f¦_{r,s-bar+s}<=alpha_2 r/(128 K); Case A and N>=1; use the constructed maps and schedule
SOURCE_QUANTIFIERS: j=1,2
SOURCE_CONCLUSION: ¦Delta I_j¦<=(1/(e alpha-bar_j s))(6 eps+4N(4/3)eps_1)<=3 eps/(alpha-bar_j s) (6.5/e<2.4<=3) and ¦Delta theta¦<=(1/(alpha-bar r))(8 eps+8N(4/3)eps_1)<=9 eps/(alpha-bar r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:telescope, N:bpN:p6:iterative, bpP:p2:split, stepP:p2:nfb-ind, stepP:p2:nfb-first, stepP:p2:nfb-N, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:telescope | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L123 | seminorms of the composition
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L123 | (a): each step lands in the shrunken domain
EDGE: bpP:p2:split | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L123 | componentwise displacement (b) for each step
EDGE: stepP:p2:nfb-ind | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L124-L124 | eps_i<=4^{1-i} eps_1
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L124-L124 | step 0 displacement and (2.1)
EDGE: stepP:p2:nfb-N | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L126-L126 | N<kappa/8
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-disp@L123-L123 | the weighted norm, widths, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:av-dict

```text
NODE: stepP:p2:av-dict
KIND: step
TITLE: Dictionary
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:av-dict@L148-L148
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:av-dict@L148-L148
CONTRACT_ID: stepP:p2:av-dict
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: s-bar_N=s-bar/2 pi, s_N=s/2 pi (geometric); the Part 3 norm weight e^{(s-bar+s)¦k¦_1}
SOURCE_QUANTIFIERS: as in avg
SOURCE_CONCLUSION: T_{s-bar+s}=T_{s-bar_N+s_N}, E=¦f¦_{r,s-bar_N+s_N} in the notation of the proposition, kappa=2 pi K s_N=K s>=6, alpha-bar_j s_N=alpha_j s and alpha-bar_2 r=2 pi alpha_2 r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-dict@L148-L148 | dictionary of widths and kappa, alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:av-hyp

```text
NODE: stepP:p2:av-hyp
KIND: step
TITLE: Hypotheses
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149
CONTRACT_ID: stepP:p2:av-hyp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<alpha_2<=alpha_1; D subset R^n; r>0; s-bar,s>0; K>0 with K s>=6; h real analytic on D_r (holomorphic on V_r D, real), omega=d h; f holomorphic on D_r x T_{s-bar+s}, real analytic, 1-periodic in theta, with N-norm E:=sup_{I in D_r} sum_k ¦f^_k(I)¦ e^{(s-bar+s)¦k¦_1}<infinity; (A1) i.e. (N1) of Lemma p3:avg; 64 e K E<alpha_2 r
SOURCE_QUANTIFIERS: as in avg
SOURCE_CONCLUSION: E<=alpha_2 r/(128 K), the other hypotheses of the proposition are identical, so (a)-(d) of the proposition are the claims, with e^{-kappa/6}=e^{-K s/6}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:nfb, stepP:p2:av-dict, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:nfb | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149 | hypotheses (A1), (A2) and conclusions (a)-(d)
EDGE: stepP:p2:av-dict | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149 | dictionary to the proposition
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:av-hyp@L149-L149 | alpha-bar and geometric widths in the translated smallness condition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p2:osc-bracket

```text
NODE: bpP:p2:osc-bracket
KIND: lemma
TITLE: Extended bracket and field estimates
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L171-L175
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L176-L181
CONTRACT_ID: bpP:p2:osc-bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(v_0,S_0), w in O(v,S) with finite norms; 0<rho<r, 0<rho_p<r_p, 0<rho_q<r_q, 0<sigma<S; v-nu<v_0 componentwise; S-sigma<S_0; phi in O(v,S) for the field estimate
SOURCE_QUANTIFIERS: n, m, v_0, v, S_0, S, nu, u, w, phi
SOURCE_CONCLUSION: {u,w} in O(v-nu,S-sigma) and ¦{u,w}¦_{v-nu,S-sigma}<=(W/delta_nu)¦u¦_{v_0,S_0}¦w¦_{v,S} with W=(1/e)(rho/(r_0-r+rho)+sigma/(S_0-S+sigma))+m(rho_q/(r_{q0}-r_q+rho_q)+rho_p/(r_{p0}-r_p+rho_p))<=2 b R, R the largest of the four ratios; nu(X_phi)<=¦phi¦_{v,S}/delta_nu on D_{v-nu,S-sigma}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:ob-der, stepP:p2:ob-prod, stepP:p2:ob-field, bpP:p2:s-osc#data, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:ob-der | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L177-L177 | step: derivative bounds
EDGE: stepP:p2:ob-prod | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L178-L178 | step: products
EDGE: stepP:p2:ob-field | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L180-L180 | step: field
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L172-L172 | D_{v,S}, bracket, delta_nu, nu-norm, b
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-bracket@L172-L172 | the Fourier norm and alpha-bar/width conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:ob-der

```text
NODE: stepP:p2:ob-der
KIND: step
TITLE: Derivative bounds
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177
CONTRACT_ID: stepP:p2:ob-der
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(v_0,S_0), w in O(v,S) with finite norms; 0<rho<r, 0<rho_p<r_p, 0<rho_q<r_q, 0<sigma<S; v-nu<v_0 componentwise; S-sigma<S_0; phi in O(v,S) for the field estimate
SOURCE_QUANTIFIERS: each coordinate separately
SOURCE_CONCLUSION: at fixed x: sum_i ¦d_{theta_i}u¦_{x,S}<=¦u¦_{x,S_0}/(e(S_0-S)) and individually globally; ¦d_{I_i}u¦<=¦u¦/(r_0-r+rho), ¦d_{p_j}u¦<=¦u¦/(r_{p0}-r_p+rho_p), ¦d_{q_j}u¦<=¦u¦/(r_{q0}-r_q+rho_q) (global norms, each coordinate separately), likewise for w with losses rho,rho_p,rho_q
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:cauchy, bpP:p2:s-osc#data, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:cauchy | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177 | Cauchy estimates (a) angular, (b) in each parameter coordinate
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177 | x=(I,p,q) as parameter
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-der@L177-L177 | the Fourier norm and width conventions used in the derivative/product estimates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L177 evaluates the angular Cauchy bound at width S with denominator e(S_0-S), but the hypotheses only give S-sigma<S_0, not S<S_0. L179 uses the shrunken-width denominator e(S_0-S+sigma). Keep the literal L177 claim exposed; do not add S<S_0 to the hypotheses.
```

### stepP:p2:ob-prod

```text
NODE: stepP:p2:ob-prod
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L179
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L179
CONTRACT_ID: stepP:p2:ob-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(v_0,S_0), w in O(v,S) with finite norms; 0<rho<r, 0<rho_p<r_p, 0<rho_q<r_q, 0<sigma<S; v-nu<v_0 componentwise; S-sigma<S_0; phi in O(v,S) for the field estimate
SOURCE_QUANTIFIERS: fixed x then sup over x
SOURCE_CONCLUSION: ¦{u,w}¦_{x,S-sigma} is bounded by the sum of the (theta,I) and (q,p) products, the last sum at most m times the product of the maxima; the (theta,I) part is (1/e)(1/((r_0-r+rho)sigma)+1/((S_0-S+sigma)rho)), the (q,p) part m(1/((r_{q0}-r_q+rho_q)rho_p)+1/((r_{p0}-r_p+rho_p)rho_q)); hence W/delta_nu with W<=2 b R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:algebra, stepP:p2:ob-der, bpP:p2:s-osc#data, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:algebra | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L178 | norm is an algebra at fixed x
EDGE: stepP:p2:ob-der | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L179-L179 | inserted derivative bounds
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L178 | bracket, delta_nu, b
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-prod@L178-L178 | the Fourier norm and width conventions used in the derivative/product estimates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:ob-field

```text
NODE: stepP:p2:ob-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180
CONTRACT_ID: stepP:p2:ob-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(v_0,S_0), w in O(v,S) with finite norms; 0<rho<r, 0<rho_p<r_p, 0<rho_q<r_q, 0<sigma<S; v-nu<v_0 componentwise; S-sigma<S_0; phi in O(v,S) for the field estimate
SOURCE_QUANTIFIERS: phi in O(v,S)
SOURCE_CONCLUSION: ¦d_I phi¦/sigma<=¦phi¦/(rho sigma), ¦d_theta phi¦/rho<=¦phi¦/(e sigma rho), ¦d_p phi¦/rho_q<=¦phi¦/(rho_p rho_q), ¦d_q phi¦/rho_p<=¦phi¦/(rho_q rho_p), i.e. nu(X_phi)<=¦phi¦/delta_nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:s-osc#data, N:bpN:p4:cauchy, N:bpN:p4:sup-weighted, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180 | the scaled norm nu and the field X_phi
EDGE: N:bpN:p4:cauchy | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180 | coordinate Cauchy bounds with losses rho, sigma, rho_p and rho_q
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180 | pointwise derivative sizes from the weighted norm
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ob-field@L180-L180 | the Fourier norm and width conventions used in the derivative/product estimates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p2:osc-iter

```text
NODE: bpP:p2:osc-iter
KIND: lemma
TITLE: Iterative Lemma with an oscillator pair
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L183-L189
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L190-L195
CONTRACT_ID: bpP:p2:osc-iter
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the direct-divisor data of bpP:p2:setting with q=1, Lambda={0}, h independent of p,q; the remaining source hypotheses of N iterative, with the oscillator domains and all positive losses nu of s-osc#data, rho sigma replaced by delta_nu, and ¦g¦_R=sum_j R_j ¦g_j¦; ¦f¦_{v,S}=delta<=alpha-bar delta_nu/(16 b)
SOURCE_QUANTIFIERS: n, m, v, S, nu, K, alpha-bar, f, g_j, R_j
SOURCE_CONCLUSION: All conclusions of N iterative in direct form on the oscillator domains, including the holomorphic injective periodic map Phi=X_phi^1, reality under the inherited realness premises, symplectic for dtheta^dI+dq^dp, and the transformed normal form, with the replacements at L184; (a) ¦Phi_theta-theta¦<=delta/(alpha-bar rho), ¦Phi_I-I¦<=delta/(e alpha-bar sigma), ¦Phi_q-q¦<=delta/(alpha-bar rho_p), ¦Phi_p-p¦<=delta/(alpha-bar rho_q); (b) ¦f_+¦_{v-2nu,S-2 sigma}<=(1-2 e b delta/(alpha-bar delta_nu))^{-1}((2b/(alpha-bar delta_nu))(¦g¦_R+delta)+e^{-2 pi K sigma}) delta
CONSTANT_SCOPE: constants as in N iterative with 2/e replaced by 2b
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:oi-transfer, stepP:p2:oi-ratio, stepP:p2:oi-range, stepP:p2:oi-disp, bpP:p2:direct, N:bpN:p6:iterative, bpP:p2:s-osc#data, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:oi-transfer | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L191-L191 | step: transfer
EDGE: stepP:p2:oi-ratio | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L192-L192 | step: adjoint ratio
EDGE: stepP:p2:oi-range | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L193-L193 | step: smallness range
EDGE: stepP:p2:oi-disp | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L194-L194 | step: displacement
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L184-L184 | direct form of the iterative lemma
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L184-L184 | the lemma extended
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L184-L184 | delta_nu, b, R_j, the oscillator domains
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:osc-iter@L184-L184 | the Fourier norm and alpha-bar/width conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: source-gap L196 (the extension is stated by a short list of changes, not rewritten in N) is bridged by the four steps; the proof is a transfer argument and the reviewer should check it is complete
```

### stepP:p2:oi-transfer

```text
NODE: stepP:p2:oi-transfer
KIND: step
TITLE: Transfer
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191
CONTRACT_ID: stepP:p2:oi-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the direct-divisor data of bpP:p2:setting with q=1, Lambda={0}, h independent of p,q; the remaining source hypotheses of N iterative, with the oscillator domains and all positive losses nu of s-osc#data, rho sigma replaced by delta_nu, and ¦g¦_R=sum_j R_j ¦g_j¦; ¦f¦_{v,S}=delta<=alpha-bar delta_nu/(16 b); transfer the homological solution, bracket and field constructions to the enlarged phase space
SOURCE_QUANTIFIERS: each cited N statement
SOURCE_CONCLUSION: N homological is unchanged (¦phi¦<=delta/alpha-bar); N flow holds for an arbitrary norm and open set; N symplectic uses only D F=J S with S symmetric and J^T=-J, true for the enlarged J, and N canonical follows; N adjoint, composition, transform, canonical-map use the geometry only through the bracket and field bounds: replace N bracket and vf-bound by Lemma osc-bracket and rho sigma by delta_nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-bracket, N:bpN:p6:homological, N:bpN:p5:flow, N:bpN:p5:symplectic, N:bpN:p5:canonical, N:bpN:p5:adjoint, N:bpN:p5:composition, N:bpN:p5:transform, N:bpN:p5:canonical-map, bpP:p2:s-osc#data, bpP:p2:direct, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-bracket | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | replacement bracket and field bounds
EDGE: N:bpN:p6:homological | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | unchanged
EDGE: N:bpN:p5:flow | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | arbitrary norm and open set
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | D F=J S with S symmetric
EDGE: N:bpN:p5:canonical | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | follows from symplectic
EDGE: N:bpN:p5:adjoint | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | transfer
EDGE: N:bpN:p5:composition | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | transfer
EDGE: N:bpN:p5:transform | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | transfer
EDGE: N:bpN:p5:canonical-map | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | transfer
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | delta_nu, the enlarged J
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | the homological equation under Div_1 rather than the original N hypotheses
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-transfer@L191-L191 | weighted norms, alpha-bar and Fourier widths
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:oi-ratio

```text
NODE: stepP:p2:oi-ratio
KIND: step
TITLE: The adjoint ratio
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192
CONTRACT_ID: stepP:p2:oi-ratio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the direct-divisor data of bpP:p2:setting with q=1, Lambda={0}, h independent of p,q; the remaining source hypotheses of N iterative, with the oscillator domains and all positive losses nu of s-osc#data, rho sigma replaced by delta_nu, and ¦g¦_R=sum_j R_j ¦g_j¦; ¦f¦_{v,S}=delta<=alpha-bar delta_nu/(16 b); use the generator constructed by oi-transfer
SOURCE_QUANTIFIERS: h>=0
SOURCE_CONCLUSION: each bracket costs a factor e b more, the ratio becomes e^2 b eta/4<=e b eta with eta:=2¦phi¦/delta_nu; theta_phi:=2 e b ¦phi¦/delta_nu; the Lie series converges with ¦ad^h_phi u¦/h!<=theta_phi^h ¦u¦ and ¦u o X^1_phi¦<=(1-theta_phi)^{-1}¦u¦, same for the integral remainders (the ratio b eta is not claimed since e^2/4>1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:transform, N:bpN:p5:composition-integral, bpP:p2:osc-bracket, stepP:p2:oi-transfer, N:bpN:p5:adjoint, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:transform | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | Lie transform estimate
EDGE: N:bpN:p5:composition-integral | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | integral remainder
EDGE: bpP:p2:osc-bracket | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | bracket constant 2b/delta'
EDGE: stepP:p2:oi-transfer | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | transferred iterated-bracket estimate
EDGE: N:bpN:p5:adjoint | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | the iterated-bracket estimate with ratio e eta/4
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | weighted norms, alpha-bar and Fourier widths
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-ratio@L192-L192 | oscillator field, losses, delta_nu and b
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:oi-range

```text
NODE: stepP:p2:oi-range
KIND: step
TITLE: Smallness range
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193
CONTRACT_ID: stepP:p2:oi-range
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the direct-divisor data of bpP:p2:setting with q=1, Lambda={0}, h independent of p,q; the remaining source hypotheses of N iterative, with the oscillator domains and all positive losses nu of s-osc#data, rho sigma replaced by delta_nu, and ¦g¦_R=sum_j R_j ¦g_j¦; ¦f¦_{v,S}=delta<=alpha-bar delta_nu/(16 b); use the source smallness delta<=alpha-bar delta_nu/(16 b)
SOURCE_QUANTIFIERS: as in osc-iter
SOURCE_CONCLUSION: theta_phi<=2 e b delta/(alpha-bar delta_nu)<=e/8<0.34 and (16/9) theta_phi<0.61<1, so the Lie series equals the composition at shrunken losses; (a) and (b) follow as in N iterative with 2/e->2b and 1-2 q delta/(alpha-bar rho sigma)->1-theta_phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:composition, N:bpN:p6:iterative, stepP:p2:oi-ratio, stepP:p2:oi-transfer, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:composition | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | equality of the Lie series with the composition, remainder factor 16/9
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | (a) and (b) as in N iterative
EDGE: stepP:p2:oi-ratio | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | theta_phi
EDGE: stepP:p2:oi-transfer | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | the bound on phi needed to derive eps_phi<=1/4
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | weighted norms, alpha-bar and Fourier widths
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-range@L193-L193 | oscillator field, losses, delta_nu and b
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the forward mention that the assumption holds at every step of Prop osc-averaging is a consistency pointer and not an edge (osc-averaging uses osc-iter)
```

### stepP:p2:oi-disp

```text
NODE: stepP:p2:oi-disp
KIND: step
TITLE: Displacement
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194
CONTRACT_ID: stepP:p2:oi-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the direct-divisor data of bpP:p2:setting with q=1, Lambda={0}, h independent of p,q; the remaining source hypotheses of N iterative, with the oscillator domains and all positive losses nu of s-osc#data, rho sigma replaced by delta_nu, and ¦g¦_R=sum_j R_j ¦g_j¦; ¦f¦_{v,S}=delta<=alpha-bar delta_nu/(16 b); use the generator and flow constructed in oi-transfer and oi-range
SOURCE_QUANTIFIERS: as in osc-iter
SOURCE_CONCLUSION: ¦d_I phi¦<=¦phi¦/rho, ¦d_theta phi¦<=¦phi¦/(e sigma), ¦d_p phi¦<=¦phi¦/rho_p, ¦d_q phi¦<=¦phi¦/rho_q, giving the displacement bounds (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-bracket, stepP:p2:sp-field, stepP:p2:oi-transfer, stepP:p2:oi-range, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-bracket | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | field estimate
EDGE: stepP:p2:sp-field | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | the componentwise trajectory argument explicitly reused here
EDGE: stepP:p2:oi-transfer | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | the generator norm bound delta/alpha-bar
EDGE: stepP:p2:oi-range | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | the established flow domain and smallness range
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | weighted norms, alpha-bar and Fourier widths
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oi-disp@L194-L194 | oscillator field, losses, delta_nu and b
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:oa-first

```text
NODE: stepP:p2:oa-first
KIND: step
TITLE: Step 0
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L215
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L215
CONTRACT_ID: stepP:p2:oa-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of s-osc#data; h holomorphic on V_r D, real, omega=d h (h independent of p,q); alpha>0; K>0; kappa=2 pi K s>=6; (O1) ¦k.omega(I)¦>=alpha for I in V_r D, 0<¦k¦_1<=K; (O2) f in O(v,s-bar+s) real, E:=¦f¦_{v,s-bar+s} with 2^12 b K E s<=alpha d; eps=E; put rho_0=r/8, rho_p0=r_p/8, rho_q0=r_q/8, sigma_0=s/6
SOURCE_QUANTIFIERS: cases A (e^{-kappa/6}<=2 b y_0), B
SOURCE_CONCLUSION: eps_1<=(1-2 e b y_0)^{-1}(2 b y_0+e^{-kappa/6}) eps; Case A: eps_1<=0.08 eps/kappa and eps_1<=294 b eps^2/(alpha-bar d); Case B (doubled losses): ¦f_1¦<=e^{-kappa/6} eps, stop with g=f^_0, displacements <3 eps/(alpha-bar s), <=4 eps/(alpha-bar r), <=4 eps/(alpha-bar r_q), <=4 eps/(alpha-bar r_p)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-iter, bpP:p2:s-osc#data, bpP:p2:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-iter | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L213 | (b) with ¦g¦_R=0
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L213 | delta_nu, b
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-first@L213-L213 | the norm, kappa and alpha-bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:oa-iter

```text
NODE: stepP:p2:oa-iter
KIND: step
TITLE: Iteration (Case A)
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L218
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L218
CONTRACT_ID: stepP:p2:oa-iter
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of s-osc#data; h holomorphic on V_r D, real, omega=d h (h independent of p,q); alpha>0; K>0; kappa=2 pi K s>=6; (O1) ¦k.omega(I)¦>=alpha for I in V_r D, 0<¦k¦_1<=K; (O2) f in O(v,s-bar+s) real, E:=¦f¦_{v,s-bar+s} with 2^12 b K E s<=alpha d; Case A of oa-first; N=floor(kappa/(12 ln 2)); split N=0 and N>=1
SOURCE_QUANTIFIERS: 1<=i<=N
SOURCE_CONCLUSION: N=0: stop; N>=1: losses rho=r/8N, rho_p=r_p/8N, rho_q=r_q/8N, sigma=s/4N, delta_nu>=d/(64N^2), eps/N<=alpha-bar d/(2^15 b N^2) (2.3), eps_1<=0.08 eps/(8N); ¦g_{i-1}¦_R+eps_i<=1.02 eps/N, x<=0.004, 2 e b u_i<1.1e-4 and eps_{i+1}<=(128/127)(0.004+1/8) eps_i<eps_i/4, so eps_i<=4^{1-i} eps_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:nfb-N, bpP:p2:osc-iter, stepP:p2:oa-first, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:nfb-N | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L216 | the schedule of radii and budget
EDGE: bpP:p2:osc-iter | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L218-L218 | (b) at each step
EDGE: stepP:p2:oa-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L217-L217 | eps_1 bounds of Case A
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L216 | the norm, kappa and alpha-bar
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-iter@L216-L216 | oscillator radii, b, d and delta_nu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:oa-concl

```text
NODE: stepP:p2:oa-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219
CONTRACT_ID: stepP:p2:oa-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of s-osc#data; h holomorphic on V_r D, real, omega=d h (h independent of p,q); alpha>0; K>0; kappa=2 pi K s>=6; (O1) ¦k.omega(I)¦>=alpha for I in V_r D, 0<¦k¦_1<=K; (O2) f in O(v,s-bar+s) real, E:=¦f¦_{v,s-bar+s} with 2^12 b K E s<=alpha d; Case A and N>=1; use the constructed finite sequence of maps
SOURCE_QUANTIFIERS: as in osc-averaging
SOURCE_CONCLUSION: ¦f_*¦<=4^{-(N+1)} eps<=e^{-kappa/6} eps; ¦g-f^_0¦<=(4/3) eps_1<=400 b eps^2/(alpha-bar d); displacements I: (1/(e alpha-bar s))(6 eps+4N(4/3)eps_1)<=2.3 eps/(alpha-bar s), theta: <=8.2 eps/(alpha-bar r) (N eps_1<=0.01 eps), same for p, q with r_q, r_p
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:nfb-concl, bpP:p2:osc-iter, N:bpN:p6:telescope, stepP:p2:oa-iter, stepP:p2:oa-first, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:nfb-concl | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | same conclusion argument as for the proposition
EDGE: bpP:p2:osc-iter | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | (a) for the displacements
EDGE: N:bpN:p6:telescope | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | telescoping displacements
EDGE: stepP:p2:oa-iter | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | eps_i<=4^{1-i} eps_1
EDGE: stepP:p2:oa-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | eps_1 bound
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | the norm, kappa and alpha-bar
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:oa-concl@L219-L219 | oscillator radii, b, d and delta_nu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:ar-apply

```text
NODE: stepP:p2:ar-apply
KIND: step
TITLE: Apply
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236
CONTRACT_ID: stepP:p2:ar-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=n_1>=1, m=n_2>=1; D-bar subset R^n; rho-bar, eps_0>0; s_0>0 (geometric); 0<epsilon<e^{-1/5}; mu>0; v_0=(rho-bar,eps_0,eps_0); H=H_0(I)+mu P(theta,I,p,q), H_0 holomorphic on V_{rho-bar}D-bar and real, P in O(v_0,s_0) real with ¦P¦_{v_0,s_0}<=1; <P>:=int_{T^n}P d theta=P^_0; K chosen by e^{-2 pi K s_0/6}=epsilon^5 (K=(15/(pi s_0)) log(1/epsilon), kappa=30 log(1/epsilon)>=6); alpha-bar=2 pi alpha, d=min{rho-bar s_0,eps_0^2}; (R1) ¦k.dH_0(I)¦>=alpha for I in V_{rho-bar}D-bar, 0<¦k¦_1<=K; (R2) 2^12(1+m) K s_0 mu<=alpha d; specialize f=mu P, s-bar=0, s=s_0, r=rho-bar, r_p=r_q=eps_0, h=H_0; use mu as the upper bound for the actual E=¦mu P¦<=mu
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: Proposition osc-averaging gives H o phi-bar=H_0+g+f_*, and f^_0=mu <P>
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-averaging, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-averaging | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236 | applied with (O1), (O2) given by (R1), (R2)
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236 | the norm, kappa and alpha-bar
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-apply@L236-L236 | the oscillator radii, b and d
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p2:ar-collect

```text
NODE: stepP:p2:ar-collect
KIND: step
TITLE: Collect
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237
CONTRACT_ID: stepP:p2:ar-collect
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P~:=(g-mu<P>)+f_*; choice e^{-kappa/6}=epsilon^5
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: ¦P~¦ is at most the sum of the two bounds of the proposition and e^{-kappa/6} mu=mu epsilon^5
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-averaging, stepP:p2:ar-apply, bpP:p2:conv#data, bpP:p2:s-osc#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-averaging | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237 | bounds on ¦g-f^_0¦ and ¦f_*¦
EDGE: stepP:p2:ar-apply | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237 | H o phi-bar=H_0+g+f_* and f^_0=mu<P>
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237 | the norm, kappa and alpha-bar
EDGE: bpP:p2:s-osc#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:ar-collect@L237-L237 | the oscillator radii, b and d
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p2:use5

```text
NODE: bpP:p2:use5
KIND: claim
TITLE: How Part~5 uses this
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L240-L246
PROOF_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L240-L246
CONTRACT_ID: bpP:p2:use5
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the conversion of Proposition averaged-remainder from the CP angle-action variables (phi_CP,I_CP) with 2 pi-periodic angles and Cartesian oscillators remaining
SOURCE_QUANTIFIERS: (theta,I,p,q)=(phi_CP/2 pi, 2 pi I_CP, p_CP, q_CP)
SOURCE_CONCLUSION: the pure all-angle conversion of Lemma period-dictionary must not be applied to (phi,I,p,q); use instead the canonical chart (a c-chart of period-convert with c=1 acting on the angle-action block only): the Hamiltonian is the same function, omega=omega_CP/2 pi, alpha=alpha_CP/2 pi, rho-bar=2 pi rho-bar_CP, s_0=s_CP/2 pi, eps_0 unchanged; invariants alpha-bar=alpha_CP, d=min{rho-bar s_0,eps_0^2}, K s_0/alpha=K s_CP/alpha_CP, so (R2) is the same inequality in both conventions; displacement bounds alpha_CP s_CP¦Delta I_CP¦<=6 mu, alpha_CP rho-bar_CP¦Delta phi¦<=9 mu, alpha_CP eps_0¦Delta p¦,¦Delta q¦<=9 mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:averaged-remainder, bpP:p2:conv#data, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L243-L243 | (R2), d and the displacement bounds being converted
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L243-L243 | norm and widths
EDGE: bpP:p1:chart | blueprint-P/parts/p2-averaging.tex#bpP:p2:use5@L243-L243 | the displayed chart has conformal factor 1; L244 computes preservation of the angle/action form
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Retain the mathematical dictionary (3): Part 5 steps av-dict and av-id consume it at L176 and L179. SPEC administrative exclusions have an explicit consumed-fact exception. The reference to period-convert with c=1 is a misleading pointer: the chart here rescales the angle and action reciprocally. Paragraph (1) delegates its estimate to Part 5 and creates no dependency on a Part 5 theorem.
```

### bpP:p1:conv#data

```text
NODE: bpP:p1:conv#data
KIND: definition
TITLE: Conventions of Part 1: phase space, form, X_ell, iota_k, S_c
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:conv#data@L17-L17
PROOF_SOURCE: -
CONTRACT_ID: bpP:p1:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (conventions; typing data: d, the frozen phase space, form and field of Part 0)
SOURCE_QUANTIFIERS: d in N; z=(z_1,z_2) in Ph_d=R^d x R^d (positions, momenta), max norms, Lebesgue measure; k in Z^d; c>0
SOURCE_CONCLUSION: defines M_0=((0,-1),(1,0)), J_0=-M_0; the frozen form Omega(v,w)=sum_i(v_{2,i}w_{1,i}-v_{1,i}w_{2,i})=v^T M_0 w; X_ell:=((ell(0,e_i))_i,(-ell(e_i,0))_i) for a linear form ell, so X_H(z)=X_{DH(z)} and X_H(z)=0 where H is not differentiable (Lean totality); iota_k:=((k_i)_i,0); S_c(z_1,z_2):=(c z_1,z_2)
CONSTANT_SCOPE: M_0, J_0 absolute; X_ell depends on ell only; iota_k on k only; S_c on c>0 only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:phase#Phase, bpP:p0:hamsymp#symplecticForm, bpP:p0:hamsymp#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:conv#data@L17-L17 | the phase space Ph_d and its max-norm and Lebesgue conventions
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:conv#data@L17-L17 | the frozen form Omega is restated as v^T M_0 w
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:conv#data@L17-L17 | X_H(z)=X_{DH(z)} and X_H=0 off differentiability points
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data of Part 1 (prose L17); bpP:p0:totality is the Lean-totality explanation and is not consumed beyond the definition of the frozen field
```

### bpP:p2:conv#data

```text
NODE: bpP:p2:conv#data
KIND: definition
TITLE: Conventions of Part 2: norm, widths, dictionary, index splitting
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:conv#data@L24-L36
PROOF_SOURCE: -
CONTRACT_ID: bpP:p2:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (conventions; typing data: n, D subset C^n, geometric strip half-width s, radius r)
SOURCE_QUANTIFIERS: n=n_1+n_2; k=(k_1,k_2), theta=(theta_1,theta_2), I=(I_1,I_2); s>0 geometric; r>0; K>=0; alpha_j>0
SOURCE_CONCLUSION: defines the norm of track N: for u holomorphic on D_{r,s}=T_s x V_r D and 1-periodic in theta, ¦u¦_{r,s}=sup_{I in V_r D} sum_k ¦u^_k(I)¦ e^{2 pi ¦k¦_1 s}, with T_s={¦Im theta¦_inf<s}, V_r D={I in C^n: dist_inf(I,D)<r}, O(r,s) the class of such u; the dictionary to Part 3 (coefficient-radius widths sigma, T_sigma^{P3}=T_{sigma/2 pi}, (s-bar,s) of Part 3 correspond to (s-bar/2 pi,s/2 pi) here, same frequencies, divisors, Hamilton equations); kappa:=2 pi K s, alpha-bar_j:=2 pi alpha_j, Z_K={k in Z^n: ¦k¦_1<=K}; a function is independent of theta_1 iff all its modes have k_1=0; external facts 12 ln 2>8, sum_{i>=1}4^{1-i}=4/3, ¦k.v¦<=¦k¦_1 ¦v¦_inf
CONSTANT_SCOPE: none (notation; norm is N norm, not the sum_k sup_I norm of Part 3 as printed: only ¦.¦_{r,s}<=sum_k sup_I holds)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:norm, N:bpN:p4:domains, N:bpN:p6:ext-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:norm | blueprint-P/parts/p2-averaging.tex#bpP:p2:conv#data@L25-L25 | the norm ¦u¦_{r,s} is that of track N
EDGE: N:bpN:p4:domains | blueprint-P/parts/p2-averaging.tex#bpP:p2:conv#data@L26-L26 | the domains T_s and V_r D
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#bpP:p2:conv#data@L36-L36 | the explicitly inherited numerical facts 12 ln 2>8 and sum 4^{1-i}=4/3
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data of Part 2 (prose L24-L36); the N-dictionary remark bpN:p4:dictionary is cited at L28 as a pointer and is not consumed (the dictionary is stated here); the N section-level external lists (s-ext of Parts 4 and 6) are not importable nodes (SPEC report: 2 skipped section labels)
```

### Added bridge for the hol-chart failure

```text
NODE: stepP:p1:hc-real-derivative
KIND: step
TITLE: Real derivative on the real slice of an arbitrary complex open set
STATEMENT_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L73-L76
PROOF_SOURCE: blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76
CONTRACT_ID: stepP:p1:hc-real-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c>0; V subset C^{2d} open; Psi:V->C^{2d} holomorphic, real at real points; D Psi(z)^T M_0 D Psi(z)=c M_0 (complex matrices) for z in V cap R^{2d}; O=V cap R^{2d}
SOURCE_QUANTIFIERS: each real z in V
SOURCE_CONCLUSION: D_R(Psi restricted to V cap R^{2d})(z) equals the restriction of D_C Psi(z), so the complex matrix identity restricts to the real chart identity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p1-hamiltonian-tools.tex#bpP:p1:hol-chart@L76-L76 | part (b) supplies real analyticity on the real slice, but not the explicitly needed derivative identification
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The source invokes K real-restriction for arbitrary open V. Its statement at blueprint/parts/p1-analysis.tex L1047-L1051 only treats a whole strip T_rho. K holomorphic-analytic(b), L296-L312, supplies real analyticity on arbitrary open sets, but does not state the derivative identification used here. No general-domain derivative bridge is supplied by an allowed external or an applicable imported statement; retain this obligation without strengthening the hypotheses.
```

## for slice P-xown

Create the ordinary P-owned node `bpN:p6:iterative-special` from the current N source L140–144; include the source file in CORPUS.sha256 under the SPEC ownership rule. This is the replacement for the invalid imported candidate, not an extra external. Its source assumptions remain the original N assumptions; p2:direct explicitly extends them to Div_q.

```text
NODE: bpN:p6:iterative-special
KIND: lemma
TITLE: Special cases for track P
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
CONTRACT_ID: bpN:p6:iterative-special
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source hypotheses and data of N iterative, including its original nonresonance/Lipschitz hypotheses, p>1, 1/p+1/q=1 and smallness u=q delta/(alpha-bar rho sigma)<=1/4; (1) g=0; (2) Lambda={0}; the numbered cases are separate specializations
SOURCE_QUANTIFIERS: the data (n,r,s,rho,sigma,K,alpha,L,p), then f and the normal-form data as in N iterative
SOURCE_CONCLUSION: (1) for g=0, ¦g¦_*=0 and ¦f_+¦<=(1-2q delta/(alpha-bar rho sigma))^{-1}(2q delta/(e alpha-bar rho sigma)+exp(-2pi K sigma)) delta; (2) for Lambda={0}, P_Lambda T_K f=f^_0=avg f, cond-nr is ¦k.omega(I)¦>=alpha for 0<¦k¦_1<=K, and the transformed Hamiltonian is h+g+avg f+f_+; (3) no constant depends on f or H beyond delta and ¦g¦_*, with the data and smallness dependence stated at L144
CONSTANT_SCOPE: as stated in (3): data (n,r,s,rho,sigma,K,alpha,L,p); f and H enter only through delta and ¦g¦_*
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:iterative, N:bpN:p6:setting, N:bpN:p4:projections, N:bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | specialize (d) and the transformed Hamiltonian
EDGE: N:bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | original N hypotheses, alpha-bar and ¦g¦_*
EDGE: N:bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | P_Lambda T_K f=f^_0 for Lambda={0}
EDGE: N:bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | weighted remainder norm and Fourier coefficients
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: N excludes this remark from its own root closure; P consumes its first-step and averaging facts through p2:direct. Source remains the N blueprint; do not label it an N import.
```

```text
ITEM: bpN:p6:iterative-special
KIND: remark
SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
DISPOSITION: NODE bpN:p6:iterative-special
REASON: P-owned consumed special cases, explicitly extended by bpP:p2:direct at Part 2 L46
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-d
REVIEWER: -
```

## for slice P-imports

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| N:bpN:p6:iterative-special | FAIL | blueprint-N/parts/p6-normal-form.tex L140–144; P Part 2 L46 | N excludes it; convert to the P-xown ordinary node above, rather than retaining a TODO external import. |

Replacement operation: remove the complete `NODE: N:bpN:p6:iterative-special` block and its import-only coverage item after the native P-xown block/coverage above is installed. No replacement import is valid. The p2:direct replacement retargets its only in-slice consumer.

```diff
-NODE: N:bpN:p6:iterative-special
+NODE: bpN:p6:iterative-special
```

The line above denotes the ownership conversion, **not** an instruction to retain the remaining external fields: the complete new ordinary block above replaces the complete old imported block. Preserve unrelated imports.


| Coverage item | Verdict | Reason |
|---|---|---|
| N:bpN:p6:iterative-special | FAIL | Import ownership is invalid; replace by the native P-xown coverage item above. |

Exact blocks to delete from P-imports after installing the P-xown replacements:

```diff
-NODE: N:bpN:p6:iterative-special
-KIND: external
-TITLE: [N] Special cases for track~P
-STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
-PROOF_SOURCE: -
-CONTRACT_ID: N:bpN:p6:iterative-special
-CONTRACT_VERSION: 1
-SOURCE_HYPOTHESES: TODO
-SOURCE_QUANTIFIERS: TODO
-SOURCE_CONCLUSION: TODO
-CONSTANT_SCOPE: TODO
-FROZEN_FILE: -
-FROZEN_DECL: -
-FROZEN_ANCHOR_ID: -
-FROZEN_ABI_SHA256: -
-DEPS: -
-ROUTES: -
-ROUTE_FOR: -
-TOPOLOGY_STATUS: PROPOSED
-EXTRACTOR: claude-suborch-INP
-REVIEWER: -
-LEAN_STATUS: EXTERNAL
-LEAN_REF: -
-LEAN_NOTE: -
-NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:iterative-special; shared Lean provider. Cited as \Nref{bpN:p6:iterative-special}. WARNING: EXCLUDED in the N graph: remark of special cases for track P (first step g=0, averaging Lambda={0}, constants). outside every root closure; owned by the importing graph (track I/P). Check: grep over Parts 7-11 (and 1-5) finds no reference to bpN:p6:iterative-special; the only in-corpus mention is the statement of iterative-direct ("and Remark iterative-special hold verbatim"), a claim not consumed by any proof; Part 11 re-derives its own estimates (bpN:p11:iterative, nf). Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.


-ITEM: N:bpN:p6:iterative-special
-KIND: external
-SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
-DISPOSITION: NODE N:bpN:p6:iterative-special
-REASON: imported node (track N): its statement is proved, or is an external input, in the track-N graph; not extracted here
-COVERAGE_STATUS: PROPOSED
-EXTRACTOR: claude-suborch-INP
-REVIEWER: -
```

## Suspected blueprint defects

- Part 1 L76: “real restriction gives analyticity and the real derivative” cites K real-restriction. The cited K theorem is on the whole strip T_rho (K L1047–1051); the P statement allows arbitrary open V. The general real-analytic restriction is available in K holomorphic-analytic(b), but the derivative identification remains an exposed source bridge in the added step. This finding is about the cited contract, not a claim that the mathematical restriction principle is false.
- Part 2 L177: the angular bound is evaluated at width S with denominator `e(S_0-S)`, while L172 only assumes `S-sigma<S_0`. For example S_0=S-sigma/2 satisfies the stated premise but gives a negative denominator. L179 uses `S_0-S+sigma`, matching the shrunken width; do not repair the source silently by adding S<S_0.
- Part 2 L243: “a c-chart of … period-convert with c=1” is misleading: S_1 in that lemma is the identity. The displayed reciprocal angle/action scaling at L244 is canonical by its displayed form calculation and the chart definition; it is not that specific S_1. Retain the consumed dictionary and drop the inapplicable period-convert edge.
- Part 2 L236: “E=mu” should be read as the chosen upper budget; the statement only assumes ¦P¦<=1, so the actual norm E=¦mu P¦ need only satisfy E<=mu. The replacement records the upper-bound use rather than adding equality as a premise.

No source text or packet was edited. No new paper erratum is asserted beyond the source-local issues above; the Part 2 errata inventory remains provenance/excluded.
