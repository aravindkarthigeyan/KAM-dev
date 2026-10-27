# N-p11ab delta topology review

Reviewer: sol-delta-N-f. Original slice reviewer: sol-review-N-f.

Verdict: FAIL. Reviewed all 31 nodes and 52 coverage records still PROPOSED in this snapshot: 18 nodes PASS, 13 nodes FAIL; all 52 coverage records PASS. The earlier source-premise repairs are accepted except for the lost local branch scope in nf-concl. The added standing-package edges are accepted except where the tables identify a remaining omission or an unsupported numerical substitution. No pending route node or mechanically filled “inherits ... no new binders” quantifier field occurs in this inventory.

Scope: Parts 11a L1–85 and 11b L1–148; every pending record's statement, proof and EDGE spans were re-read. Prerequisite statements in Parts 0, 4–6, the Part 11 packages and track K's analysis externals were checked at their source locators. Frozen exponent definitions and manifest identity fields were checked without consulting implementation modules or proof status. Convergence rule applied: retained accurate wording and accepted faithful SOURCE_GAP records; replacements change only the failing fields.

Snapshot SHA256:

- `docs/graph/N/packets/N-p11ab.nodes.md`: `46c5ddec7082920239fc65fb388030638829343b48f70ca0eef574d40f6821cf`
- `docs/graph/N/packets/N-p11ab.coverage.md`: `24f36c3631d7afd0ce596486d1cdca771e8121e86e32ab1941ff2737b4bc624e`

Source spans below are raw blueprint locators. For each node the table includes its statement/proof and every distinct EDGE locator; prerequisite statements are listed after the coverage table.

## Pending nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepN:p11:ex-cmp | FAIL | `blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72` | The conclusion uses the frozen a_n as well as b_n; its definition anchor is only transitively present through ex-den. Add the direct partialTimeExponent identity edge required by the package/anchor rule. |
| stepN:p11:br-fast | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:br-slow | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| bpN:p11:bracket-g | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L31-L33`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L34-L36`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L35-L35`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L32-L32` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| bpN:p11:vf | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L44-L46`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L47-L49`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L45-L48`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L45-L45` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| bpN:p11:flow | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L51-L53`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L54-L56`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L52-L52` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| bpN:p11:symplectic | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L58-L60`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L61-L63`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L59-L59`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L62-L62` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:ad-setup | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:ad-step | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:ad-prod | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72` | Earlier FAIL resolved; preserved source conclusion with an explicit, faithful SOURCE_GAP, without an added premise. |
| stepN:p11:co-field | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:co-series | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83` | The newly added Part 6 numerical edge is not a direct use of the printed proof: L83 uses e^2/8<0.93, explicitly left as SOURCE_GAP, rather than the weaker e^2<8. Remove that alternative numerical input; retain the faithful gap. |
| stepN:p11:co-remainder | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84` | L84 identifies the remainder limit with S constructed at L83, but has no edge to co-series. Its newly added Part 6 numerical edge likewise supplies no printed e^2/9<0.83 input. Add the S-construction edge and remove the substitute numerical input; keep SOURCE_GAP. |
| bpN:p11:transform | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L89`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L91-L91`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L92-L92`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L87`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L88`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88` | The composition-setting edge points only to the proposition title at L87; the setting is assumed at L88. Correct that EDGE locator. |
| stepN:p11:tr-taylor | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91` | L91 reuses the hatted-loss remainder estimate and its decay from the composition remainder argument at L84; those quantities and the decay are absent from the adjoint and composition statements. Link co-remainder directly. |
| stepN:p11:tr-int | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92` | L92 uses the domain D^e_{R-rho,s-sigma} and joint continuity of X^t and D_z X^t. Add the direct domains package and flow(b) regularity edges; composition(iii) supplies the norm estimate, not joint derivative continuity. |
| bpN:p11:canonical-map | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L97`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L96`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L95`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96` | The finite-norm EDGE points only at the title L95. The finite-norm hypothesis occurs at L96. |
| bpN:p11:hom | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L108`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L107-L107`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L106`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L104-L107`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L107` | The norm, extended-class and extended-coordinate EDGE locators point only at the title L106. Locate the first two at the hypotheses L107 and the extended-coordinate use at L110. |
| bpN:p11:iterative | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L120`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L122-L122`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L123-L123`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L124-L124`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L125-L125`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L114`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L113` | The section-data EDGE points only at the title L113; X^{1,c}_phi and the fixed extended coordinates are used in the statement at L114. |
| stepN:p11:it-gen | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:it-map | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123` | The recorded epsilon=¦phi¦/(rho sigma) and its bound use the weighted norm directly, but this package is reachable only through other lemmas. Add bpN:p4:norm. |
| stepN:p11:it-taylor | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124` | L124 constructs f_0 using T_{K_a} and invokes the finite g_j decomposition to bound its norm. Add direct projections and p6:setting edges for those constructions. |
| stepN:p11:it-est | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| bpN:p11:nf | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L128-L134`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L135-L147`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L137-L137`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L138-L138`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L139-L141`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L142-L142`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L143-L143`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L144-L144`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L145-L145`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L146-L146`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L136-L136`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L132`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L131-L131`; `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L130-L130` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:nf-first | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138` | The iterative EDGE explicitly says it only names the hypothesis being verified. SPEC excludes mentions of a hypothesis being checked; this scalar smallness calculation does not apply the Iterative Lemma. Remove that edge. |
| stepN:p11:nf-case | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141`; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L139`; `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L141-L141` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:nf-N | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:nf-induct | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |
| stepN:p11:nf-concl | FAIL | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144` | The restored hypotheses lost the local Case A, N>=1 restriction: L141 stops Case B, and L142 stops N=0 before this conclusion. Preserve that branch scope. L144 also directly uses the geometric-series constant 4/3 from p6:ext-numerics; add its edge. The existing extended-telescoping SOURCE_GAP remains faithful. |
| stepN:p11:nf-disp | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145` | Earlier FAIL resolved; preserved source conclusion with an explicit, faithful SOURCE_GAP, without an added premise. |
| stepN:p11:nf-real | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146` | Earlier FAIL resolved; statement, direct uses and locators agree with the source. |

## Pending coverage

| ID | Verdict | Span re-read | Reason |
|---|---|---|---|
| bpN:p11:route | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:route@L16-L32` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| bpN:p11:omega-unbounded | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:omega-unbounded@L34-L36` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| stepN:p11:ex-cmp | PASS | `blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72` | Mapped labelled unit; the node verdict is assessed separately. |
| heading:bpN:p11 | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11@L1-L1` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-route | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:s-route@L14-L14` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-ext | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:s-ext@L38-L38` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-conv | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:s-conv@L46-L46` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-const | PASS | `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:s-const@L75-L75` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11a:sourcegap-L23 | PASS | `blueprint-N/parts/p11a-partial-route.tex#sourcegap@L23-L23` | The replacement maps the route-(ii) bridge without claiming proof closure and acknowledges its exposed proof-step gaps. |
| p11a:sourcegap-L35 | PASS | `blueprint-N/parts/p11a-partial-route.tex#sourcegap@L35-L35` | Mapped to the new omega-free energy lemma; the source explicitly announces this replacement, subject to audit. |
| p11a:source-L55 | PASS | `blueprint-N/parts/p11a-partial-route.tex#source@L55-L55` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11a:source-L60 | PASS | `blueprint-N/parts/p11a-partial-route.tex#source@L60-L60` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11a:source-L83 | PASS | `blueprint-N/parts/p11a-partial-route.tex#source@L83-L83` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11a:prose-L12-L12 | PASS | `blueprint-N/parts/p11a-partial-route.tex#prose@L12-L12` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11a:prose-L43-L44 | PASS | `blueprint-N/parts/p11a-partial-route.tex#prose@L43-L44` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| stepN:p11:br-fast | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:br-slow | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:bracket-g | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L31-L33` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:vf | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L44-L46` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:flow | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L51-L53` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:symplectic | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L58-L60` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:ad-setup | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:ad-step | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:ad-prod | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:co-field | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:co-series | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:co-remainder | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:transform | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L89` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:tr-taylor | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:tr-int | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:canonical-map | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L97` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:hom | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L108` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:iterative | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L120` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:it-gen | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:it-map | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:it-taylor | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:it-est | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125` | Mapped labelled unit; the node verdict is assessed separately. |
| bpN:p11:nf | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L128-L134` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-first | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-case | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-N | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-induct | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-concl | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-disp | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145` | Mapped labelled unit; the node verdict is assessed separately. |
| stepN:p11:nf-real | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146` | Mapped labelled unit; the node verdict is assessed separately. |
| heading:bpN:p11:s-ext-class | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-ext-class@L2-L2` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-lie | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-lie@L38-L38` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| heading:bpN:p11:s-nf | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-nf@L102-L102` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11b:source-L13 | PASS | `blueprint-N/parts/p11b-partial-nf.tex#source@L13-L13` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11b:source-L133 | PASS | `blueprint-N/parts/p11b-partial-nf.tex#source@L133-L133` | Valid heading, administrative, provenance or convention/pointer exclusion. |
| p11b:prose-L4-L6 | PASS | `blueprint-N/parts/p11b-partial-nf.tex#prose@L4-L6` | Standing section data retained and mapped to its data node. |
| p11b:prose-L104-L104 | PASS | `blueprint-N/parts/p11b-partial-nf.tex#prose@L104-L104` | Standing section data retained and mapped to its data node. |

All other coverage items are outside this delta inventory and are not re-adjudicated. A PASS coverage mapping does not pass a FAIL node with the same ID.

## Prerequisite statements and applicability

- `K:bp:p1:ext-integral`: `blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86`.
- `K:bp:p1:ext-mvt`: `blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L75-L78`.
- `K:bp:p1:ext-schwarz`: `blueprint/parts/p1-analysis.tex#bp:p1:ext-schwarz@L79-L81`.
- `bpN:p0:partial-exponents#partialDriftExponent`: `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317`.
- `bpN:p0:partial-exponents#partialTimeExponent`: `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317`.
- `bpN:p11:adjoint`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:adjoint@L65-L68`.
- `bpN:p11:bracket`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket@L20-L24`.
- `bpN:p11:composition`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:composition@L75-L80`.
- `bpN:p11:ext-chain`: `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:ext-chain@L42-L42`.
- `bpN:p11:ext-class`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-class@L8-L14`.
- `bpN:p11:ext-num`: `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:ext-num@L40-L40`.
- `bpN:p11:ext-part4`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-part4@L16-L18`.
- `bpN:p11:s-ext-class#data`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-ext-class#data@L4-L6`.
- `bpN:p11:s-nf#data`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-nf#data@L104-L104`.
- `bpN:p11:scaled`: `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:scaled@L40-L42`.
- `bpN:p11:wfield`: `blueprint-N/parts/p11a-partial-route.tex#bpN:p11:wfield@L48-L56`.
- `bpN:p4:algebra`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L105-L109`.
- `bpN:p4:bracket`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150`.
- `bpN:p4:cauchy`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L122-L130`.
- `bpN:p4:domains`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39`.
- `bpN:p4:ext-param`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-param@L23-L25`.
- `bpN:p4:ext-series`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-series@L28-L29`.
- `bpN:p4:ext-weier`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27`.
- `bpN:p4:norm`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54`.
- `bpN:p4:projections`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L181-L187`.
- `bpN:p4:sup-weighted`: `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L85-L93`.
- `bpN:p5:canonical-map`: `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225`.
- `bpN:p5:flow`: `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54`.
- `bpN:p5:taylor`: `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132`.
- `bpN:p5:vf-bound`: `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34`.
- `bpN:p6#data`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6#data@L11-L16`.
- `bpN:p6:divisor`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53`.
- `bpN:p6:ext-numerics`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22`.
- `bpN:p6:homological`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70`.
- `bpN:p6:iterative-direct`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L129-L134`.
- `bpN:p6:normal-form`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L157-L174`.
- `bpN:p6:setting`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40`.
- `bpN:p6:telescope`: `blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150`.
- `stepN:p11:ex-den`: `blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-den@L71-L71`.
- `stepN:p11:nf-sl`: `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-sl@L137-L137`.
- `stepN:p6:hom-real`: `blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78`.
- `stepN:p6:it-real`: `blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126`.
- `stepN:p6:nf-disp`: `blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L206`.

The extended Part 4 adapter applies to arbitrary action dimension with the same constants; the fast bracket is rerun from its proof, rather than applied with the forbidden m=n specialization. The homological equation's direct-divisor variant replaces (N1)/(N2), with the real-frequency condition retained for reality. The fixed slow scaling is not recomputed during iteration. The NF branch hypotheses supply the divisor bound and SL losses through the recorded proof steps. Template uses explicitly asserted by the source remain edges; the scalar check in nf-first is not such an application.

## Suspected blueprint defects retained

These are source-input gaps, not findings that the displayed estimates are false, and no missing mathematics is supplied here.

- Part 11b L72: “using $(2h)!\ge(2h/e)^{2h}$” cites Part 11a ext-num L40, which has no factorial bound. The ad-prod SOURCE_GAP faithfully exposes the missing attachment and passes.
- Part 11b L83–84: “$e^2/8<0.93$” and “$e^2/9<0.83$” are absent from the permitted numerical inputs. The co-series/co-remainder SOURCE_GAP notes are accurate; their added weaker Part 6 numerical edges are removed without replacing the source's printed argument.
- Part 11b L144–145: “Lemma ... telescope” is applied in the extended space with Omega_c, whereas Part 6 L148–152 states the canonical-J version and does not state translation equivariance of the composite. The existing SOURCE_GAP notes faithfully expose the missing extension and are retained. The displacement step passes as a source-gap record.

No new paper erratum is asserted. No deviations from the requested review scope were introduced.

## Complete minimal replacements

Only DEPS/associated EDGE fields, the listed EDGE locators, and nf-concl's SOURCE_HYPOTHESES change. Every other field is copied verbatim from the reviewed packet.

```text
NODE: stepN:p11:ex-cmp
KIND: step
TITLE: Comparison
STATEMENT_SOURCE: blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72
PROOF_SOURCE: blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72
CONTRACT_ID: stepN:p11:ex-cmp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:exponents; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: 2 b_n<1/(2n) iff 6n^2-15n+14>0 (true); hence a_n<b_n<2b_n<1/(2n)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ex-den, bpN:p0:partial-exponents#partialDriftExponent, bpN:p0:partial-exponents#partialTimeExponent
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ex-den | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | q_n>0 and a_n<b_n
EDGE: bpN:p0:partial-exponents#partialDriftExponent | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | b_n
EDGE: bpN:p0:partial-exponents#partialTimeExponent | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | a_n in the concluding comparison is the frozen time exponent 2/(6n^2-3n+14)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:co-series
KIND: step
TITLE: Series
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83
CONTRACT_ID: stepN:p11:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:composition; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: u
SOURCE_CONCLUSION: (1/h!)ad^h_phi u in O(R-rho,s-sigma)^e has norm <=(e^2 eta/8)^h¦u¦, sum<=(1-e^2 eta/8)^{-1}<=(1-eta)^{-1} (e^2/8<0.93); partial sums converge uniformly (B.1(a)), the limit S is holomorphic and periodic, its Fourier coefficients are the sums of the coefficients (termwise integration), and the norm bound follows by the triangle inequality
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:adjoint, bpN:p4:sup-weighted, bpN:p11:ext-part4, bpN:p4:ext-weier, bpN:p4:ext-series, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | direct use of bpN:p11:ext-class in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | the term bounds (e^2 eta/8)^h
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | B.1(a): uniform convergence
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | B.1(a) for the extended class
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | limit holomorphic and periodic
EDGE: bpN:p4:ext-series | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | termwise integration of the Fourier coefficients
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | Fourier coefficients and norm of the limit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the source additionally uses e^2/8<0.93, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
```

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
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the source additionally uses e^2/9<0.83, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
```

```text
NODE: bpN:p11:transform
KIND: proposition
TITLE: Lie transform with first-order remainder; integral remainders
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L89
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93
CONTRACT_ID: bpN:p11:transform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Theorem composition; h in O(R,s)^e (norm possibly infinite) with w={h,phi}_c in O(R,s)^e of finite norm; f_0 in O(R,s)^e of finite norm; v_t in O(R,s)^e (0<=t<=1) with sup_t ¦v_t¦=V<infinity and (t,z)->v_t(z),Dv_t(z) continuous
SOURCE_QUANTIFIERS: R,s,rho,sigma; phi; h; f_0; (v_t)
SOURCE_CONCLUSION: on D^e_{R-rho,s-sigma}: (h+f_0) o X^1=h+w+f_0+R with R=int_0^1{(1-t)w+f_0,phi}_c o X^t dt and ¦R¦_{R-rho,s-sigma}<=eta/(1-eta)((1/2)¦w¦+¦f_0¦); G=int_0^1 v_t o X^t dt in O(R-rho,s-sigma)^e with ¦G¦<=(1-eta)^{-1}V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-taylor, stepN:p11:tr-int, bpN:p11:composition, bpN:p11:ext-class, bpN:p11:wfield, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-taylor | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L91-L91 | proof step (Taylor)
EDGE: stepN:p11:tr-int | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L92-L92 | proof step (integral remainder)
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | setting and the flow bounds
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L88 | O^e
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | w={h,phi}_c
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | finite norm
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
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
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:tr-int
KIND: step
TITLE: Integral remainder
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92
CONTRACT_ID: stepN:p11:tr-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v_t as in the statement
SOURCE_QUANTIFIERS: t,z
SOURCE_CONCLUSION: g_t=v_t o X^t in O(R-rho,s-sigma)^e with ¦g_t¦<=(1-eta)^{-1}V; (t,z)->g_t(z) and D_z g_t=Dv_t(X^t z)D_z X^t(z) are continuous; G holomorphic (parameter integral) and ¦G¦_{I,s-sigma}<=int_0^1¦g_t¦_{I,s-sigma}dt by Fubini and Tonelli
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:composition, bpN:p4:ext-param, bpN:p4:ext-series, bpN:p4:norm, bpN:p11:ext-class, K:bp:p1:ext-integral, bpN:p4:domains, bpN:p11:flow
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of K:bp:p1:ext-integral in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | (iii): ¦g_t¦<=(1-eta)^{-1}V
EDGE: bpN:p4:ext-param | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | holomorphy of G (holomorphic parameter integral)
EDGE: bpN:p4:ext-series | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | Fubini and Tonelli for the Fourier-coefficient integrals
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | the integration domain D^e_{R-rho,s-sigma} is the extended instance of the Part 4 domain
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | flow(b) supplies joint continuity of X^t and D_z X^t used in the parameter-integral hypothesis
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:canonical-map
KIND: proposition
TITLE: Canonical map package
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L97
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100
CONTRACT_ID: bpN:p11:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi in O(R,s)^e of finite norm; 0<rho<R/2, 0<sigma<s/2; (SL)_{rho,sigma}; eps:=¦phi¦/(rho sigma)<=1/2; Omega=D^e_{R-rho,s-sigma}; Phi=X^1_phi, Psi=X^{-1}_phi
SOURCE_QUANTIFIERS: R,s,rho,sigma; phi
SOURCE_CONCLUSION: (a) Phi,Psi holomorphic on D^e_{R-3rho/2,s-3sigma/2} with values in Omega, nu(Phi-id)<=eps, ¦Phi_theta-theta¦<=¦phi¦/rho, ¦Phi_I-I¦<=¦phi¦/(e sigma), ¦Phi_{x-tilde}-x-tilde¦<=c¦phi¦/rho<=(1/(16k))¦phi¦/sigma; (b) Phi(theta+l,I,x-tilde)=Phi+(l,0,0), real points to real points if phi real; (c) ¦DPhi-1¦_nu<=2 eps on D^e_{R-2rho,s-2sigma}; (d) DPhi Omega_c DPhi^T=Omega_c; (e) Psi o Phi=id=Phi o Psi on D^e_{R-2rho,s-2sigma} and Phi maps it into D^e_{R-3rho/2,s-3sigma/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:canonical-map, bpN:p11:vf, bpN:p11:scaled, bpN:p11:flow, bpN:p11:symplectic, K:bp:p1:ext-mvt, bpN:p11:ext-class, bpN:p4:norm, bpN:p4:domains, bpN:p11:s-ext-class#data, bpN:p11:wfield
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100 | direct use of bpN:p11:wfield in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | as Proposition p5:canonical-map, step by step (same conclusions (a)-(e) for the extended class)
EDGE: bpN:p11:vf | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | nu(X^c_phi)<=eps on Omega
EDGE: bpN:p11:scaled | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | nu-ball inclusions
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | Lemma flow(a)-(e) give (a),(b),(c),(e)
EDGE: bpN:p11:symplectic | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | (d)
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | componentwise displacements: mean value inequality along the trajectory
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L96 | O^e, (SL)_{rho,sigma}, D^e
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96 | finite norm
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96 | D^e_{R-rho,s-sigma}
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the edge to bpN:p5:canonical-map is the "as ..., step by step" template whose conclusions (a)-(e) are reproved here from the extended flow, vf and symplectic lemmas
```

```text
NODE: bpN:p11:hom
KIND: proposition
TITLE: Homological equation with parameters
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L108
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111
CONTRACT_ID: bpN:p11:hom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f in O(R,s)^e, delta=¦f¦_{R,s}<infinity; Lambda subset Z^n; K_a>=0; (N-dir): ¦k.omega(I)¦>=alpha/q on V_R(I_c) for k in Z_{K_a}\Lambda; xi=P_Lambda T_{K_a}f; phi=sum_{k in Z_{K_a}\Lambda} f-hat_k(I,x-tilde)/(2 pi i k.omega(I)) chi_k(theta); for the reality clause Lambda=-Lambda, f real on real points and omega(I) real for every real I in V_R(I_c)
SOURCE_QUANTIFIERS: R,s; Lambda; K_a; alpha; q; h; f
SOURCE_CONCLUSION: xi,phi in O(R,s)^e, {phi,h}_c+xi=T_{K_a}f, ¦xi¦,¦T_{K_a}f¦<=delta, ¦phi¦<=q delta/abar, P_Lambda phi=0; under the reality hypotheses xi,phi are real on real points (false without real omega: h=iI, f=a cos 2 pi theta, Lambda={0})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p6:iterative-direct, stepN:p6:hom-real, bpN:p11:ext-part4, bpN:p4:projections, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-nf#data, bpN:p6#data, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | identical to Proposition homological (Fourier coefficients at fixed I-hat; same formulas and the norm bounds q delta/abar)
EDGE: bpN:p6:iterative-direct | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | with Corollary iterative-direct: (N-dir) replaces (N1),(N2),K L r<=alpha/p
EDGE: stepN:p6:hom-real | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | reality as Step hom-real
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | statement about Fourier coefficients in theta at fixed I-hat (Lemma ext-part4)
EDGE: bpN:p4:projections | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L107-L107 | P_Lambda, T_{K_a}
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L107-L107 | O^e, W^e real points
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | {phi,h}_c=d_theta phi.omega since h depends on neither theta nor x-tilde
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L104-L107 | dictionary: K_a, q, abar, omega=d_I h, h on V_R(I_c)
EDGE: bpN:p6#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L107 | Z_{K_a}, q, abar
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L107-L107 | weighted norm and Fourier coefficients
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | I-hat=(I,x-tilde)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped template: bpN:p6:setting (N1),(N2) are replaced by (N-dir) here
```

```text
NODE: bpN:p11:iterative
KIND: theorem
TITLE: Iterative Lemma$^e$
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L120
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126
CONTRACT_ID: bpN:p11:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N-dir); s,rho,sigma>0, 2 rho<R, 2 sigma<s, (SL)_{rho,sigma}; H=h+g+f on D^e_{R,s}; g=sum_{j in J} g_j as in Definition p6:setting (extended norms); f in O(R,s)^e, delta=¦f¦_{R,s}<=abar rho sigma/(4q); phi that of Proposition hom; Phi=X^{1,c}_phi
SOURCE_QUANTIFIERS: R,s,rho,sigma; h,g,f; phi
SOURCE_CONCLUSION: (a) Phi holomorphic on D^e_{R-3rho/2,s-3sigma/2} with values in D^e_{R-rho,s-sigma}, theta-translation equivariant, symplectic (DPhi Omega_c DPhi^T=Omega_c), injective on D^e_{R-2rho,s-2sigma} (left inverse X^{-1}_phi); (b) ¦Phi_theta-theta¦<=q delta/(abar rho), ¦Phi_I-I¦<=q delta/(e abar sigma), ¦Phi_{x-tilde}-x-tilde¦<=(e/(16k))q delta/(e abar sigma); (c) H o Phi=h+g_+ +f_+ on D^e_{R-2rho,s-2sigma}, g_+=g+P_Lambda T_{K_a}f, ¦g_+-g¦<=delta; (d) ¦f_+¦_{R-2rho,s-2sigma}<=(1-2q delta/(abar rho sigma))^{-1}(q/(abar rho sigma)(¦g¦_*+delta)+e^{-2 pi K_a sigma})delta; (e) if Lambda=-Lambda and h,g,f real on real points, so are phi,g_+,f_+ and Phi preserves real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:it-gen, stepN:p11:it-map, stepN:p11:it-taylor, stepN:p11:it-est, bpN:p6:setting, bpN:p11:hom, bpN:p11:s-nf#data, bpN:p11:ext-class, bpN:p11:wfield, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L122-L122 | proof step (generating function)
EDGE: stepN:p11:it-map | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L123-L123 | proof step ((a),(b))
EDGE: stepN:p11:it-taylor | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L124-L124 | proof step (Taylor identity)
EDGE: stepN:p11:it-est | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L125-L125 | proof step (estimates; (d),(e))
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | g=sum g_j and ¦g¦_* of Definition p6:setting
EDGE: bpN:p11:hom | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | phi of Proposition hom
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L114 | h on V_R(I_c), omega, K_a, q, abar
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L114 | O^e, (SL)_{rho,sigma}
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | Phi=X^{1,c}_phi
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | weighted norm
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-map
KIND: step
TITLE: (a), (b)
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123
CONTRACT_ID: stepN:p11:it-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: phi
SOURCE_CONCLUSION: (a),(b): eps=¦phi¦/(rho sigma)<=eta/2<=1/4 and rho<R/2, sigma<s/2 so Proposition canonical-map gives the map properties and displacement bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:canonical-map, stepN:p11:it-gen, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:canonical-map | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | Proposition canonical-map applies (rho<R/2, sigma<s/2, eps<=1/4)
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | eta<=1/2 and ¦phi¦<=q delta/abar
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | epsilon=¦phi¦/(rho sigma) is the weighted-norm quantity in the canonical-map hypotheses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-taylor
KIND: step
TITLE: Taylor identity
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124
CONTRACT_ID: stepN:p11:it-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: phi
SOURCE_CONCLUSION: on D^e_{R-2rho,s-2sigma}: (h+f_0) o Phi=h+g+xi+R=h+g_+ +R, R=int_0^1{g+f_t,phi}_c o X^t dt, f_t=(1-t)xi+t T_{K_a}f; hence H o Phi=h+g_+ +f_+ with f_+=R+(f-T_{K_a}f) o Phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:transform, bpN:p11:hom, stepN:p11:it-gen, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:s-nf#data, bpN:p4:projections, bpN:p6:setting
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:transform | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | Proposition transform with data (R-rho,s-sigma;R,s)
EDGE: bpN:p11:hom | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | w={h,phi}_c=xi-T_{K_a}f and xi=P_Lambda T_{K_a}f
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | eta<=1/2, the hypotheses of the transform
EDGE: bpN:p4:projections | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | f_0=g+T_{K_a}f and f-T_{K_a}f use the Fourier truncation operator
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | the finite decomposition g=sum_j g_j supplies the stated finite-norm bound for f_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:nf-first
KIND: step
TITLE: Step 0: hypotheses
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138
CONTRACT_ID: stepN:p11:nf-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: eps<=alpha R/(2^7 q K_a)<=abar rho_0 sigma_0/(16 q) so y_0:=q eps/(abar rho_0 sigma_0)<=1/16 and the hypothesis delta<=abar rho sigma/(4q) of Theorem iterative holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:s-nf#data
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:nf-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144
CONTRACT_ID: stepN:p11:nf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; inside Case A with N>=1 after the stopping cases at L141-L142; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N
SOURCE_CONCLUSION: H o Psi=h+g+f_*, holomorphy, symplecticity (D Phi_i Omega_c D Phi_i^T=Omega_c), periodicity, injectivity from the telescoping lemma; (b) eps_{N+1}<=4^{-N-1}eps<=e^{-kappa/6}eps; (a) ¦g-g_0¦<=(4/3)eps_1<=16 c_1 eps^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p11:iterative, stepN:p11:nf-induct, stepN:p11:nf-N, stepN:p11:nf-case, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-nf#data, bpN:p6:ext-numerics
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | Lemma telescope for subsets of C^{2n+2k} and maps with D Phi_i Omega_c D Phi_i^T=Omega_c
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | H_{i+1}=H_i o Phi_i and the properties of each Phi_i from Theorem iterative
EDGE: stepN:p11:nf-induct | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | eps_i<=4^{1-i}eps_1
EDGE: stepN:p11:nf-N | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | N, kappa>8, N+1>kappa/(12 ln 2)
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | eps_1<=2^7 q eps^2/(abar R s)
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | sum of the geometric increment bounds gives the printed factor 4/3
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Part 11b L144-L145 asserts the extended telescoping application. Part 6 telescope is stated on C^{2n} with (DPhi)^T J DPhi=J, not for the arbitrary constant form Omega_c in the extended space. Its proof is a template; the required extension (and, at L144, translation equivariance under composition) is not stated there. No additional symplectic premise is imposed on nf.
```

## Validation

- `sha256sum -c docs/graph/N/CORPUS.sha256`: all 15 corpus files OK.
- `sha256sum -c docs/graph/N/IMPORTS.sha256`: all four imported-source files OK.
- Pending inventory: exactly 31 node rows and 52 coverage rows; every FAIL has one complete replacement, with all unchanged fields preserved verbatim.
- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p11ab docs/graph/N/reviews/N-p11ab-delta.md sol-delta-N-f --dry-run`: `13 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 36 PASS nodes`. Its PASS counter counts the matching node and coverage rows separately; the independently checked unique node count is 18. No packets or git state are changed.
- In-memory replacement validation: all dependency targets exist; no dependency cycle is reachable from a replacement; changed fields are restricted to DEPS/EDGE and the one stated SOURCE_HYPOTHESES correction. Both packet SHA256 values still match the reviewed snapshot.
- `git diff --check -- docs/graph/N/reviews/N-p11ab-delta.md`: exit 0, no output.
- No Lean command, build or implementation-file inspection was performed, as required by the review brief.
