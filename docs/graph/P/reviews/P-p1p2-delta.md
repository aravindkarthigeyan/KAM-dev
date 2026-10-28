# P-p1p2 and P-xown: delta topology review

Reviewer: `sol-delta-P-d`. Marker: `delta-P-d`.

**P-p1p2: FAIL — 50 proposed nodes PASS, 2 FAIL; all 102 proposed coverage items PASS. P-xown: PASS — its proposed node and coverage item both PASS.**

Read the full P DELTA-BRIEF and REVIEW-BRIEF and applied SPEC, including its cross-ownership and convergence rules. The prior review is `P-p1p2-review.md` by `sol-review-P-d`; this reviewer did not write its replacements. Only records still PROPOSED in the assigned packets are judged here. Reviewed HEAD `80b3da9fe0467f3cd18537c057bab0971bb1aac8`; hashes below pin the inputs.

The preceding repairs largely resolve their recorded FAILs. The two failures below are missing direct proof inputs, not requests to improve wording or to change a mathematical source. This is source topology review, not blueprint proof closure or Lean certification.

## P-p1p2

### Proposed nodes

| ID | Verdict | Source and EDGE spans re-read | Finding / disposition |
| --- | --- | --- | --- |
| stepP:p1:oa-b | PASS | p1 L37 | The source nonzero-factor hypothesis is retained; uniqueness is obtained from oa-mat, and the matrix/form package is linked. |
| bpP:p1:order | PASS | p1 L40–42; p1 L41 | The frozen field, form and coordinate conventions supply the relabelling; the added convention edge is direct. |
| stepP:p1:cf-field | PASS | p1 L58 | Differentiability equivalence and chain rule are dependencies, with the chart and X_ell conventions explicitly linked. |
| bpP:p1:hol-chart | PASS | p1 L72–74; p1 L75–77; p1 L76; p1 L73 | The whole-strip restriction import is replaced by general real analyticity plus an explicit derivative-identification bridge; no stronger V premise is added. |
| bpP:p1:torus-transport | PASS | p1 L94–108; p1 L109–117; p1 L111; p1 L112; p1 L113; p1 L114; p1 L115; p1 L116; p1 L95; p1 L102; p1 L103; p1 L97 | Q1/Q2, the two conditional conclusions, torus clauses and iota_k convention match the source. |
| stepP:p1:tt-lat | PASS | p1 L112 | The lattice clause, fastShift and full-position lattice definition are direct inputs. |
| stepP:p1:tt-inj | PASS | p1 L113 | Q2 remains a source premise; L2/L3 and the shift/lattice definitions supply the quotient argument. |
| stepP:p1:tt-lag | PASS | p1 L114 | Invertibility, chart pullback, L4/L5 and chain rule are dependencies rather than assumed results. |
| stepP:p1:tt-flow | PASS | p1 L115 | The chart data are linked for the pointwise application of chart-orbit; L6 supplies the input curve. |
| stepP:p1:pc-a | PASS | p1 L137 | The derivative is computed, not assumed; chart and S_c/Omega conventions are supplied. |
| stepP:p1:pc-b | PASS | p1 L138 | pc-a supplies the chart property, chart-field the field identity, and the Hamiltonian/convention definitions are linked. |
| stepP:p1:pc-c | PASS | p1 L139 | Analyticity and derivative conversion consume ext-comp; the flow clause is the exact curve identity, with the stated parameter conversion understood from (c). |
| bpP:p1:dio-basic | PASS | p1 L163–171; p1 L172–174; p1 L164; p1 L169 | nu is an arbitrary positive comparison function on nonzero indices, not assumed to be a norm. |
| stepP:p1:li-det | PASS | p1 L195 | The chart supplies the matrix condition and positive c; omega-algebra supplies the determinant. |
| stepP:p1:li-meas | PASS | p1 L196 | Chart regularity and derivative invertibility supply the IFT premise; decomposition and null-image inputs remain explicit. |
| stepP:p1:li-borel | PASS | p1 L197 | The Borel branch keeps the enclosing source premises and obtains its countable local inverses from li-meas. |
| stepP:p1:li-vol | PASS | p1 L198 | The determinant, measurability and Borel/null decomposition are obtained through dependencies; equality remains conditional on injectivity. |
| bpP:p1:liouville-lattice | PASS | p1 L201–203; p1 L204–206; p1 L205; p1 L202 | Q1/Q2 are premises, not an application of the torus-transport conclusion; the chart, lattice, area and Borel inputs are linked. |
| stepP:p1:tu-meas | PASS | p1 L217 | The Lipschitz extension and decomposition are derived through tu-ext/ext-borel; the conclusion is completion measurability. |
| stepP:p1:tu-borel | PASS | p1 L218 | B1 and B2 are separate source cases; sigma-compact images and injective Borel images use ext-borel. |
| stepP:p1:tu-bounds | PASS | p1 L219 | The optional lower bound retains lambda>0; the image estimate and lattice convention supply the two measure bounds and saturated union. |
| bpP:p2:direct | PASS | p2 L45–50; p2 L51–55; p2 L52; p2 L47; p2 L46 | The special-case edge now targets the native P-owned node; the source still replaces only the divisor hypotheses and permits q=1. |
| stepP:p2:dr-use | PASS | p2 L52–54; p2 L52; p2 L54; p2 L53 | The false edges from non-use mentions of N flow/composition/bracket are gone; the actual divisor/homological/iterative argument remains. |
| bpP:p2:split | PASS | p2 L57–67; p2 L68–74; p2 L69; p2 L71; p2 L73; p2 L60; p2 L58 | The split, direct-divisor variant and Hamiltonian-flow notation package are linked. |
| stepP:p2:sp-coef | PASS | p2 L69–70; p2 L69; p2 L70 | The coefficient formula under Div_q is supplied by direct; the bounds are derived from the source two-scale divisors. |
| stepP:p2:sp-field | PASS | p2 L71–72; p2 L71; p2 L72 | The source premises are restored; coefficient bounds, flow domain, scaled norm and component field bounds are dependencies. |
| stepP:p2:sp-int | PASS | p2 L73 | The component trajectory bounds are obtained from sp-field, followed by the mean value inequality. |
| stepP:p2:nfb-first | PASS | p2 L99–105; p2 L99; p2 L104; p2 L101 | Case A and doubled-loss Case B are separate branches; the direct step, two-scale displacement and conventions are supplied. |
| stepP:p2:nfb-N | FAIL | p2 L107–111; p2 L107 | Missing direct split dependency: the N=0 branch at L107 uses 6*eps/(e*alpha-bar_j*s), including j=1. The scalar direct lemma with alpha_2 cannot supply that alpha_1 bound; nfb-first records displacements only for Case B, while this branch is Case A. Add split at L107. |
| stepP:p2:nfb-ind | PASS | p2 L113–117; p2 L113; p2 L114; p2 L115; p2 L116 | The induction keeps source premises and branch data; the schedule, Step-0 bound, projection increments and weighted-g definition are dependencies. |
| stepP:p2:nfb-concl | FAIL | p2 L119–121; p2 L119; p2 L121; p2 L120 | Missing direct nfb-first dependency: L121 explicitly invokes (2.1) to obtain (4/3)*eps_1 <= eps/kappa. The contraction and the schedule alone do not supply that Step-0 estimate. Add nfb-first at L121. |
| stepP:p2:nfb-disp | PASS | p2 L123–126; p2 L123; p2 L124; p2 L126 | The schedule, contraction, Step-0 estimate, two-scale displacement and telescoping inputs are explicit. |
| stepP:p2:av-dict | PASS | p2 L148 | Only the norm/width convention is consumed; a notation reference is no longer an edge to the averaging theorem. |
| stepP:p2:av-hyp | PASS | p2 L149 | The actual source smallness is retained and translated through av-dict before applying nfb. |
| bpP:p2:osc-bracket | PASS | p2 L171–175; p2 L176–181; p2 L177; p2 L178; p2 L180; p2 L172 | The enlarged-domain package and Fourier conventions are linked; the three explicit proof steps supply the estimate. |
| stepP:p2:ob-der | PASS | p2 L177 | The unavailable S<S_0 premise is not added. The literal source claim and its width defect are faithfully exposed by SOURCE_GAP. |
| stepP:p2:ob-prod | PASS | p2 L178–179; p2 L178; p2 L179 | Products are grouped at fixed x before the supremum; coordinate estimates come from ob-der, whose source gap remains visible. |
| stepP:p2:ob-field | PASS | p2 L180 | The oscillator coordinate Cauchy and sup-norm inputs replace the merely canonical vf-bound pointer. |
| bpP:p2:osc-iter | PASS | p2 L183–189; p2 L190–195; p2 L191; p2 L192; p2 L193; p2 L194; p2 L184 | The record retains the full transferred map/normal-form conclusions, actual smallness, and inherited reality conditions; symplecticity is a conclusion. |
| stepP:p2:oi-transfer | PASS | p2 L191 | The explicit enlarged-domain proof transfer consumes the N constructions, direct divisor variant and replacement bracket/field estimate; superseded N bounds are not suppliers. |
| stepP:p2:oi-ratio | PASS | p2 L192 | The actual adjoint estimate is linked; the e*b enlargement and delta_nu/b conventions are recorded, without the false b*eta majorant. |
| stepP:p2:oi-range | PASS | p2 L193 | Generator bounds and the adjoint ratio supply the shrunken-loss check; the forward application-consistency mention creates no cycle. |
| stepP:p2:oi-disp | PASS | p2 L194 | The generator/flow inputs and oscillator field bound are linked; sp-field supplies the componentwise trajectory argument explicitly reused by this transfer, not an asserted oscillator black-box theorem. |
| stepP:p2:oa-first | PASS | p2 L213–215; p2 L213 | The oscillator step retains b in the smallness and both denominators; the two stopping branches are separate. |
| stepP:p2:oa-iter | PASS | p2 L216–218; p2 L216; p2 L218; p2 L217 | The source reuses the loss schedule from nfb-N and the oscillator step, with its own Step-0 estimate and oscillator package. |
| stepP:p2:oa-concl | PASS | p2 L219 | The source explicitly reuses the summation construction and supplies oscillator displacements through osc-iter/telescope and its own error bounds. |
| stepP:p2:ar-apply | PASS | p2 L236 | mu is an upper budget for the actual norm, not an additional norm-equality premise; R1/R2 discharge the oscillator averaging assumptions. |
| stepP:p2:ar-collect | PASS | p2 L237 | The collected remainder uses ar-apply and both oscillator averaging bounds, with the chosen exponential identity. |
| bpP:p2:use5 | PASS | p2 L240–246; p2 L243 | The consumed reciprocal action/angle dictionary is retained. The inapplicable S_1 pointer edge is removed; the actual canonical chart definition and remainder bounds supply the conversion. |
| bpP:p1:conv#data | PASS | p1 L17 | d ranges over N without an invented d>=1 premise; the frozen phase, field and form definitions supply the package. |
| bpP:p2:conv#data | PASS | p2 L24–36; p2 L25; p2 L26; p2 L36 | The norm/domain and numerical inputs are linked; the width dictionary is stated locally rather than imported through an administrative remark. |
| stepP:p1:hc-real-derivative | PASS | p1 L73–76; p1 L76 | The general-domain derivative identification is explicitly exposed as SOURCE_GAP, with no strengthened source premise. General real analyticity is supplied by the applicable K statement. |

The inherited conditions in the new step hypotheses are source premises or branch/witness definitions. Previously obtained numerical estimates are supplied by dependencies. In particular B1/B2, Case A/B and N=0/N>=1 are not treated as simultaneous hypotheses. The preserved N=0 two-scale bound and the final use of (2.1) require the two additional direct edges specified above.

### Proposed coverage items

Each pending coverage record has its own row. A node verdict and a coverage verdict are separate: the two failing nodes still correctly own their source spans. All other coverage items PASS; already reviewed records are not re-reviewed here.

| Item ID | Verdict | Source span re-read | Disposition checked |
| --- | --- | --- | --- |
| stepP:p1:oa-b | PASS | p1 L37 | NODE stepP:p1:oa-b |
| bpP:p1:order | PASS | p1 L40–42 | NODE bpP:p1:order |
| stepP:p1:cf-field | PASS | p1 L58 | NODE stepP:p1:cf-field |
| bpP:p1:vs-N | PASS | p1 L68–70 | EXCLUDED: administrative remark (comparison with track N |
| bpP:p1:hol-chart | PASS | p1 L72–74 | NODE bpP:p1:hol-chart |
| bpP:p1:torus-transport | PASS | p1 L94–108 | NODE bpP:p1:torus-transport |
| stepP:p1:tt-lat | PASS | p1 L112 | NODE stepP:p1:tt-lat |
| stepP:p1:tt-inj | PASS | p1 L113 | NODE stepP:p1:tt-inj |
| stepP:p1:tt-lag | PASS | p1 L114 | NODE stepP:p1:tt-lag |
| stepP:p1:tt-flow | PASS | p1 L115 | NODE stepP:p1:tt-flow |
| stepP:p1:pc-a | PASS | p1 L137 | NODE stepP:p1:pc-a |
| stepP:p1:pc-b | PASS | p1 L138 | NODE stepP:p1:pc-b |
| stepP:p1:pc-c | PASS | p1 L139 | NODE stepP:p1:pc-c |
| bpP:p1:dio-basic | PASS | p1 L163–171 | NODE bpP:p1:dio-basic |
| bpP:p1:dio-d | PASS | p1 L185–187 | EXCLUDED: dimension remark (planar theorems use d=2n) |
| stepP:p1:li-det | PASS | p1 L195 | NODE stepP:p1:li-det |
| stepP:p1:li-meas | PASS | p1 L196 | NODE stepP:p1:li-meas |
| stepP:p1:li-borel | PASS | p1 L197 | NODE stepP:p1:li-borel |
| stepP:p1:li-vol | PASS | p1 L198 | NODE stepP:p1:li-vol |
| bpP:p1:liouville-lattice | PASS | p1 L201–203 | NODE bpP:p1:liouville-lattice |
| bpP:p1:cyl-scope | PASS | p1 L208–210 | EXCLUDED: scope remark: pointer to Part 12 Proposition transport and measure (which prove the cylinder transport and measure directly) |
| stepP:p1:tu-meas | PASS | p1 L217 | NODE stepP:p1:tu-meas |
| stepP:p1:tu-borel | PASS | p1 L218 | NODE stepP:p1:tu-borel |
| stepP:p1:tu-bounds | PASS | p1 L219 | NODE stepP:p1:tu-bounds |
| bpP:p1:measure-use | PASS | p1 L221–223 | EXCLUDED: administrative "Use" remark (SPEC lists bpP:p1:measure-use) |
| bpP:p1:torus-orbit | PASS | p1 L237–239 | EXCLUDED: outside every root closure of track P |
| bpP:p1:newton-transfer | PASS | p1 L243–245 | EXCLUDED: pointer to Part 6 (orbit transfer to Newton) |
| heading:bpP:p1 | PASS | p1 L1 | EXCLUDED: section heading |
| heading:bpP:p1:conv | PASS | p1 L15 | EXCLUDED: section heading |
| heading:bpP:p1:charts | PASS | p1 L44 | EXCLUDED: section heading |
| heading:bpP:p1:transport | PASS | p1 L79 | EXCLUDED: section heading |
| heading:bpP:p1:period | PASS | p1 L123 | EXCLUDED: section heading |
| heading:bpP:p1:dio | PASS | p1 L156 | EXCLUDED: section heading |
| heading:bpP:p1:measure | PASS | p1 L189 | EXCLUDED: section heading |
| heading:bpP:p1:ode | PASS | p1 L225 | EXCLUDED: section heading |
| heading:bpP:p1:notes | PASS | p1 L247 | EXCLUDED: section heading |
| p1:source-L107 | PASS | p1 L107 | EXCLUDED: provenance citation (standard change of canonical coordinates |
| p1:source-L160 | PASS | p1 L160 | EXCLUDED: provenance citation (CP10 (19) and definition of D_{gamma_1,gamma_2,tau}) |
| p1:prose-L4-L13 | PASS | p1 L4–13 | EXCLUDED: introduction and outline of the four tools of Part 1 (pointers, motivation) |
| p1:prose-L17-L17 | PASS | p1 L17 | NODE bpP:p1:conv#data |
| p1:prose-L26-L28 | PASS | p1 L26–28 | EXCLUDED: end of the external list and pointer line "Track K: ..." (the K results are cited at their use sites in hol-chart, li-meas, tu-ext, tu-meas, tu-bounds) |
| p1:prose-L49-L49 | PASS | p1 L49 | NODE stepP:p1:cf-diff, stepP:p1:li-meas, stepP:p1:tt-lag |
| p1:prose-L125-L125 | PASS | p1 L125 | EXCLUDED: introduction to period conversion (provenance: CP09 and CP10 use angles of period 2 pi) |
| p1:prose-L227-L236 | PASS | p1 L227–236 | EXCLUDED: pointer table of the track-N ODE layer (the cited N results are used at their use sites |
| p1:prose-L249-L249 | PASS | p1 L249 | EXCLUDED: sources paragraph (provenance) |
| p1:prose-L251-L251 | PASS | p1 L251 | EXCLUDED: remarks on the sources (errata and provenance) |
| p1:prose-L253-L253 | PASS | p1 L253 | EXCLUDED: forward references (pointers) |
| p1:prose-L255-L256 | PASS | p1 L255–256 | EXCLUDED: label index (administrative) |
| bpP:p2:direct | PASS | p2 L45–50 | NODE bpP:p2:direct |
| stepP:p2:dr-use | PASS | p2 L52–54 | NODE stepP:p2:dr-use |
| bpP:p2:split | PASS | p2 L57–67 | NODE bpP:p2:split |
| stepP:p2:sp-coef | PASS | p2 L69–70 | NODE stepP:p2:sp-coef |
| stepP:p2:sp-field | PASS | p2 L71–72 | NODE stepP:p2:sp-field |
| stepP:p2:sp-int | PASS | p2 L73 | NODE stepP:p2:sp-int |
| stepP:p2:nfb-first | PASS | p2 L99–105 | NODE stepP:p2:nfb-first |
| stepP:p2:nfb-N | PASS | p2 L107–111 | NODE stepP:p2:nfb-N |
| stepP:p2:nfb-ind | PASS | p2 L113–117 | NODE stepP:p2:nfb-ind |
| stepP:p2:nfb-concl | PASS | p2 L119–121 | NODE stepP:p2:nfb-concl |
| stepP:p2:nfb-disp | PASS | p2 L123–126 | NODE stepP:p2:nfb-disp |
| bpP:p2:nums | PASS | p2 L129–132 | EXCLUDED: administrative remark (SPEC lists bpP:p2:nums |
| stepP:p2:av-dict | PASS | p2 L148 | NODE stepP:p2:av-dict |
| stepP:p2:av-hyp | PASS | p2 L149 | NODE stepP:p2:av-hyp |
| bpP:p2:diff | PASS | p2 L152–160 | EXCLUDED: interface report (SPEC lists bpP:p2:diff) |
| bpP:p2:osc-bracket | PASS | p2 L171–175 | NODE bpP:p2:osc-bracket |
| stepP:p2:ob-der | PASS | p2 L177 | NODE stepP:p2:ob-der |
| stepP:p2:ob-prod | PASS | p2 L178–179 | NODE stepP:p2:ob-prod |
| stepP:p2:ob-field | PASS | p2 L180 | NODE stepP:p2:ob-field |
| bpP:p2:osc-iter | PASS | p2 L183–189 | NODE bpP:p2:osc-iter |
| stepP:p2:oi-transfer | PASS | p2 L191 | NODE stepP:p2:oi-transfer |
| stepP:p2:oi-ratio | PASS | p2 L192 | NODE stepP:p2:oi-ratio |
| stepP:p2:oi-range | PASS | p2 L193 | NODE stepP:p2:oi-range |
| stepP:p2:oi-disp | PASS | p2 L194 | NODE stepP:p2:oi-disp |
| stepP:p2:oa-first | PASS | p2 L213–215 | NODE stepP:p2:oa-first |
| stepP:p2:oa-iter | PASS | p2 L216–218 | NODE stepP:p2:oa-iter |
| stepP:p2:oa-concl | PASS | p2 L219 | NODE stepP:p2:oa-concl |
| stepP:p2:ar-apply | PASS | p2 L236 | NODE stepP:p2:ar-apply |
| stepP:p2:ar-collect | PASS | p2 L237 | NODE stepP:p2:ar-collect |
| bpP:p2:use5 | PASS | p2 L240–246 | NODE bpP:p2:use5 |
| heading:bpP:p2 | PASS | p2 L1 | EXCLUDED: section heading |
| heading:bpP:p2:conv | PASS | p2 L22 | EXCLUDED: section heading |
| heading:bpP:p2:s-direct | PASS | p2 L38 | EXCLUDED: section heading |
| heading:bpP:p2:s-nfb | PASS | p2 L76 | EXCLUDED: section heading |
| heading:bpP:p2:s-avg | PASS | p2 L134 | EXCLUDED: section heading |
| heading:bpP:p2:s-osc | PASS | p2 L162 | EXCLUDED: section heading |
| heading:bpP:p2:errata | PASS | p2 L248 | EXCLUDED: section heading |
| p2:sourcegap-L49 | PASS | p2 L49 | NODE bpP:p2:direct, stepP:p2:dr-use |
| p2:sourcegap-L196 | PASS | p2 L196 | NODE bpP:p2:osc-iter, stepP:p2:oi-transfer |
| p2:source-L48 | PASS | p2 L48 | EXCLUDED: provenance citation (ours |
| p2:source-L66 | PASS | p2 L66 | EXCLUDED: provenance citation (CP10 (70)-(71)) |
| p2:source-L92 | PASS | p2 L92 | EXCLUDED: provenance citation (CP10 Prop 1, Poeschel 1993 via N normal-form) |
| p2:source-L145 | PASS | p2 L145 | EXCLUDED: provenance citation (CP10 Prop 1) |
| p2:source-L209 | PASS | p2 L209 | EXCLUDED: provenance citation (CP10 Prop 1, Lemma A.1) |
| p2:source-L233 | PASS | p2 L233 | EXCLUDED: provenance citation (CP10 section 4 step 1) |
| p2:prose-L7-L9 | PASS | p2 L7–9 | EXCLUDED: introduction: what Part 2 proves (pointer, motivation) |
| p2:prose-L11-L20 | PASS | p2 L11–20 | EXCLUDED: motivation: the four reasons why N normal-form cannot be applied directly, and where each is repaired (outline) |
| p2:prose-L24-L26 | PASS | p2 L24–26 | NODE bpP:p2:conv#data |
| p2:prose-L28-L32 | PASS | p2 L28–32 | NODE bpP:p2:conv#data |
| p2:prose-L34-L34 | PASS | p2 L34 | NODE bpP:p2:conv#data |
| p2:prose-L36-L36 | PASS | p2 L36 | NODE bpP:p2:conv#data, stepP:p2:nfb-N, stepP:p2:nfb-ind, stepP:p2:nfb-concl |
| p2:prose-L164-L165 | PASS | p2 L164–165 | EXCLUDED: introduction to the oscillator extension (motivation |
| p2:prose-L167-L169 | PASS | p2 L167–169 | NODE bpP:p2:s-osc#data |
| p2:prose-L250-L257 | PASS | p2 L250–257 | EXCLUDED: suspected errata of CP10 (reported in the handoff) and the list of forward and cross-track references (pointers) |

### Complete replacements for P-p1p2

Only DEPS and the corresponding added EDGE change. Every other field, including source fields, extractor metadata, statuses and notes, is copied verbatim from the current packet. No source premise or conclusion is altered.

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
DEPS: N:bpN:p6:ext-numerics, stepP:p2:nfb-first, bpP:p2:direct, bpP:p2:conv#data, bpP:p2:split
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | 12 ln 2>8
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | (2.1) and Step 0 bounds
EDGE: bpP:p2:direct | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | displacement bound of Lemma direct for N=0
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | the weighted norm, widths, kappa and alpha-bar
EDGE: bpP:p2:split | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-N@L107-L107 | two-scale displacement bound (b) with sigma_0=s/6 for both action blocks in the N=0 Case-A branch, including alpha_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2+sol-review-P-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: N:bpN:p6:telescope, N:bpN:p6:iterative, N:bpN:p4:sup-weighted, stepP:p2:nfb-ind, stepP:p2:nfb-N, N:bpN:p6:ext-numerics, bpP:p2:conv#data, stepP:p2:nfb-first
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:telescope | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | composition of the Phi_i with domains U_i=D_{r_i,S_i}
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | reality and periodicity of each Phi_i
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L121-L121 | sup bound from the weighted norm
EDGE: stepP:p2:nfb-ind | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L120-L120 | eps_i<=4^{1-i} eps_1
EDGE: stepP:p2:nfb-N | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L120-L120 | N+1>kappa/(12 ln 2)
EDGE: N:bpN:p6:ext-numerics | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L121-L121 | sum 4^{1-i}=4/3
EDGE: bpP:p2:conv#data | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L119-L119 | the weighted norm, widths, kappa and alpha-bar
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p2-averaging.tex#stepP:p2:nfb-concl@L121-L121 | (2.1) gives eps_1<=3 eps/(4 kappa), hence (4/3) eps_1<=eps/kappa in the final average correction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p1p2+sol-review-P-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## P-xown

| Record ID | Verdict | Spans re-read | Finding / disposition |
| --- | --- | --- | --- |
| bpN:p6:iterative-special | PASS | N `p6-normal-form.tex` L29–40, L60–70, L93–108, L140–144; N `p4-weighted-norms.tex` L47–54, L184–190; P `p2-averaging.tex` L45–54 | The ordinary P-owned node retains the original N iterative hypotheses and the separate g=0 / Lambda={0} cases. All four dependencies are direct: iterative supplies the specialization, setting the original nonresonance and g-weight data, projections the zero-mode identity, and norm the Fourier/norm objects. The later P direct-divisor result extends this content rather than pretending the original remark already permits q=1. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding / disposition |
| --- | --- | --- | --- |
| bpN:p6:iterative-special | PASS | `blueprint-N/parts/p6-normal-form.tex` L140–144; consumer P Part 2 L46 | NODE bpN:p6:iterative-special is the correct ownership disposition. P consumes this mathematical specialization, while N excludes it from its root closure. |

No P-xown replacement is needed. The N source file is present in the P corpus pin. There is no remaining `N:bpN:p6:iterative-special` node or dependency in the current packets; the P consumer targets the native ID. The plain `bpN:` ID is intentional cross-ownership, not an imported-node status error.

## Source observations and convergence checks

- Retained the two accurately modeled SOURCE_GAP records. P1 L76 cites K real-restriction on arbitrary open V, while the cited K statement at L1047–1051 treats a whole strip. K holomorphic-analytic(b), L296–312, supplies real analyticity on general real slices; the derivative-identification obligation is separately exposed. P2 L177 uses width S and denominator e(S_0-S), although only S-sigma<S_0 is assumed. The replacement exposes this literal source defect and does not add S<S_0. Neither faithful gap is a topology FAIL.
- The extra imported suppliers were checked at their actual owning statements: K mean-value, holomorphic-analytic and Lipschitz-image statements; N4 domains, norm, coefficients, algebra, Cauchy, projections and sup bound; N5 setting, field, flow, symplectic/canonical, adjoint, composition/integral, transform and canonical-map statements; N6 setting, divisors, homological/iterative statements, numerics and telescoping. The oscillator proof explicitly transfers constructions and changes the bracket/field estimates; these are not blind applications of canonical statements on the larger carrier.
- In particular, oi-disp explicitly reuses the componentwise trajectory argument of sp-field together with the oscillator field estimate and transferred flow. oa-iter reuses the loss schedule, and oa-concl the summation construction. These are stated proof transfers with their oscillator inputs, rather than provenance or “not used” mentions. They need no further rewrite merely to change their wording.
- The use5 dictionary is a consumed mathematical fact at P5 L176/L179 despite its administrative-looking title; its exclusion would lose an actual input. Its erroneous reference to the period-convert chart with c=1 is already separated from the actual canonical-form calculation. ODE tables, comparative/interface remarks, headings and provenance have the exclusions shown above. No new pinned-paper erratum is asserted.

## Validation and snapshot

- Exact inventory: 53 proposed nodes and 103 proposed coverage items, each with a verdict row. Every pending DEPS/ROUTES entry has exactly one matching EDGE and an existing target; EDGE rationales have the required separator format. All source ranges resolve within their files. All NODE coverage mappings name current IDs. These structural checks passed; the two missing semantic edges are the separate FAILs above.
- All 53 pending nodes have `ROUTES: -`; no mechanically inserted alternative-route edge occurs in this assignment. None uses the mechanical “inherits the fixed data and quantifiers ... no new binders” filler. The coordinate/period/positivity guards and scalar versus oscillator settings were checked against the current text.
- Field comparison of the two replacement blocks confirms that only DEPS and one added EDGE per block differ from the packets. No source, packet, SPEC, corpus/import pin, manifest, frozen file or git state was changed. No Lean implementation was read; no Lean command or build was run. Only this report was authored. Concurrent unrelated review files were left untouched.

| Snapshot file | SHA-256 |
| --- | --- |
| `blueprint-P/parts/p1-hamiltonian-tools.tex` | `71125916b1c5316e440916dd15e22d267a891c2d2b97188a7afb46ba2ff6af33` |
| `blueprint-P/parts/p2-averaging.tex` | `d0ae8194e5e562a01289b2e53cad100a0ad197a0ff15fad6fa7ac9bb2c27764b` |
| `blueprint-N/parts/p6-normal-form.tex` | `1c9c5e640ba0825040f1a2ad1de3aac9b38df9dbfcc1b280245ed53c3f2533ac` |
| `docs/graph/P/packets/P-p1p2.nodes.md` | `ab4297027e522313c0e721883e606508cfaae275b82b7084ac5f7761fc871ef0` |
| `docs/graph/P/packets/P-p1p2.coverage.md` | `7c8294c6c450f8d302a09270e3c8e52b7f3037fb1126a1b3c82aecb129382692` |
| `docs/graph/P/packets/P-xown.nodes.md` | `b6ac8998702807b1f11087e7916dc8fa21d6bb3bfb8c68a5e9dce5494cdb84c8` |
| `docs/graph/P/packets/P-xown.coverage.md` | `1ea9491b792e8c0c06d41a63c095cb1861bec14f71e3ee4a4e2c5666eac2bf20` |

READY delta-P-d
