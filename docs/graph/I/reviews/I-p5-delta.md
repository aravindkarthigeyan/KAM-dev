# I-p5 delta topology review

Reviewer: sol-delta-I-d. Marker: delta-I-d.

**Verdict: FAIL.** 35 of 37 PROPOSED nodes PASS; 2 FAIL. All 56 PROPOSED coverage items PASS.

This is a source/topology delta review, not a proof-status audit. I read DELTA-BRIEF in full, REVIEW-BRIEF, the current SPEC including its final ownership ruling, and the project rules, plan and decisions. I am independent of sol-review-I-p5p8 and sol-delta-I-b; my previous task reviewed I-p67a/I-p7b. Every proposed record below was compared with its raw statement/proof and every EDGE use locator. Already REVIEWED records are context, not re-certified here. Coverage and node verdicts are separate: a correct mapping can PASS while its target node needs repair.

The three ownership changes were checked against I-nown and the raw N statements: bpN:p3:gen-invariant L352–356, gen-barrier L358–363 and newton-reduction L434–449 are now ordinary track-I nodes. Their consumer DEPS and EDGE targets use the unprefixed IDs. Remaining prose such as “N:gen-invariant” describes the source track, not an import edge. No stale N:bpN:p3:{gen-invariant,gen-barrier,newton-reduction} consumer edge is accepted. This checks the assigned consumers; it does not certify all I-nown or imports records.

The current corpus pin checks return nine OK lines, and the imports pin checks return seven OK lines (both exit 0). The earlier K p1 drift is resolved by the recorded re-pin/remap. Cited K and N source contracts were read at their current locators. K matrix/averages have their own matrix/integrability premises; the Part-2 standing bridge is used for actual K geometry applications. The owned restricted reduction supplies C^infty on the collision-free open set and works for arbitrary time sets, not only all of R. No Lean command, build, axiom query, packet edit, SPEC edit, or state-changing git command was run. Only the three requested reports are written.


Packet node snapshot SHA256: `284c81d31c6b571bef847a45444c8c9624300b473b876f4ba115bbb92fe0da9f`.

The three surviving literal “inherits ...; no new binders” fills are sp-open (L155), sp-closure (L157), cf-cont (L177). They PASS as quantifier fields: these steps assert facts for the already fixed sets/solution without choosing a new witness. Their nodes are checked independently below. The earlier compact-carrier fix now has the needed sec-patch edge; only its inaccurate cf-conf rationale remains to be corrected. sp-bdry retains the new openness input, but still needs the eps0 package to discharge energy-coordinate’s quantitative premise.

The ODE applications are local to the open cylinder W_B: rh-field uses U'=B, W=R^2 x U and C^2 regularity; invariance uses the globally defined torus trajectory and arbitrary-interval uniqueness; sp-barrier gets energy conservation, openness, initial inclusion/exclusion, invariant S and the boundary inclusion from distinct prerequisites; cf-cont has actions in Omega subset K with K compact inside B, allowing both time directions with unbounded lifted angles. The empty-B' branch is not supplied with Part 3’s nonempty standing package as a source premise.

## PROPOSED nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p5:real-ham | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L33-L44; blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L45-L50 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:rh-values | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-values@L46-L46 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:rh-smooth | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-smooth@L47-L47 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:rh-field | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48 | L48 now retains R^2 x U for (b), and uses rh-values/rh-smooth to pay K field equality and the open-domain C^2 reduction. |
| stepI:p5:rh-deriv | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-deriv@L49-L49 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:patch-const | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:patch-const@L68-L77 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:sec-graph#data | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-graph#data@L90-L90 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:graph | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L92-L99; blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L100-L105 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:gr-contr | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:gr-bij | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-bij@L102-L102 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:gr-graph | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-graph@L103-L103 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:gr-energy | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:invariance | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L107-L109; blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L110-L114 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:inv-incl | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:inv-sol | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:inv-uniq | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113 | The same global torus solution is restricted to arbitrary J'; common time/value and C^1 field are explicit; owned invariant-set dependency is correctly retargeted. |
| bpI:p5:energy-coordinate | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L119-L122; blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L123-L126 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:ec-reduce | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-reduce@L124-L124 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:ec-lip | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:sec-sep#data | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-sep#data@L131-L135 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:mu | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L137-L139; blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L140-L144 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:mu-cont | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-cont@L141-L141 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:mu-lip | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:mu-order | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-order@L143-L143 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:separation | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L146-L153; blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L154-L161 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:sp-open | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-open@L155-L155 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:sp-init | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:sp-closure | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-closure@L157-L157 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:sp-window | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-window@L158-L158 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:sp-bdry | FAIL | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | The application of energy-coordinate still lacks the direct eps0 package use discharging its smallness premise; an indirect path through sp-window pays only the energy window. |
| stepI:p5:sp-barrier | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p5:confinement | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L172-L174; blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L175-L178 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:cf-conf | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p5:cf-cont | FAIL | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | The added sec-patch data now supplies the compact action carrier, but the cf-conf EDGE still attributes z(t)_2 in K to a node concluding only membership in Omega. Locate the two-input implication accurately. |
| stepI:p5:hd-eps | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181 | Empty B' branch remains vacuous; the eps0 use is explicitly branch-local in NOTE and adds no nonempty package premise to the whole case split. |
| stepI:p5:hd-sol | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183 | The global solution is existential after f, epsilon and z0; epsilon=0 remains allowed. |
| stepI:p5:hd-uniq | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |

## PROPOSED coverage items

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p5:real-ham | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L33-L44 | Owning-node mapping matches the source unit. |
| stepI:p5:rh-values | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-values@L46-L46 | Owning-node mapping matches the source unit. |
| stepI:p5:rh-smooth | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-smooth@L47-L47 | Owning-node mapping matches the source unit. |
| stepI:p5:rh-field | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48 | Owning-node mapping matches the source unit. |
| stepI:p5:rh-deriv | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-deriv@L49-L49 | Owning-node mapping matches the source unit. |
| bpI:p5:ext-banach | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:ext-banach@L54-L54 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p5:ext-ift | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:ext-ift@L57-L57 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p5:patch-const | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:patch-const@L68-L77 | Owning-node mapping matches the source unit. |
| bpI:p5:graph | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L92-L99 | Owning-node mapping matches the source unit. |
| stepI:p5:gr-contr | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101 | Owning-node mapping matches the source unit. |
| stepI:p5:gr-bij | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-bij@L102-L102 | Owning-node mapping matches the source unit. |
| stepI:p5:gr-graph | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-graph@L103-L103 | Owning-node mapping matches the source unit. |
| stepI:p5:gr-energy | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104 | Owning-node mapping matches the source unit. |
| bpI:p5:invariance | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L107-L109 | Owning-node mapping matches the source unit. |
| stepI:p5:inv-incl | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111 | Owning-node mapping matches the source unit. |
| stepI:p5:inv-sol | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | Owning-node mapping matches the source unit. |
| stepI:p5:inv-uniq | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113 | Owning-node mapping matches the source unit. |
| bpI:p5:energy-coordinate | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L119-L122 | Owning-node mapping matches the source unit. |
| stepI:p5:ec-reduce | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-reduce@L124-L124 | Owning-node mapping matches the source unit. |
| stepI:p5:ec-lip | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125 | Owning-node mapping matches the source unit. |
| bpI:p5:mu | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L137-L139 | Owning-node mapping matches the source unit. |
| stepI:p5:mu-cont | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-cont@L141-L141 | Owning-node mapping matches the source unit. |
| stepI:p5:mu-lip | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142 | Owning-node mapping matches the source unit. |
| stepI:p5:mu-order | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-order@L143-L143 | Owning-node mapping matches the source unit. |
| bpI:p5:separation | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L146-L153 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-open | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-open@L155-L155 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-init | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-closure | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-closure@L157-L157 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-window | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-window@L158-L158 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-bdry | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | Owning-node mapping matches the source unit. |
| stepI:p5:sp-barrier | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | Owning-node mapping matches the source unit. |
| bpI:p5:topology-remark | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:topology-remark@L163-L167 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p5:confinement | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L172-L174 | Owning-node mapping matches the source unit. |
| stepI:p5:cf-conf | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176 | Owning-node mapping matches the source unit. |
| stepI:p5:cf-cont | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | Owning-node mapping matches the source unit. |
| stepI:p5:hd-eps | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181 | Owning-node mapping matches the source unit. |
| stepI:p5:hd-sol | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183 | Owning-node mapping matches the source unit. |
| stepI:p5:hd-uniq | PASS | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184 | Owning-node mapping matches the source unit. |
| bpI:p5:p3-gap | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L187-L192 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p5:doubts | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L194-L201 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5 | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5@L1-L1 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-real | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-real@L27-L27 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-patch | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-patch@L62-L62 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-graph | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-graph@L88-L88 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-energy | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-energy@L117-L117 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-sep | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-sep@L129-L129 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p5:sec-head | PASS | blueprint-I/parts/p5-confinement.tex#bpI:p5:sec-head@L170-L170 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p5:sourcegap-L23 | PASS | blueprint-I/parts/p5-confinement.tex#sourcegap@L23-L23 | Owning-node mapping matches the source unit. |
| p5:source-L20 | PASS | blueprint-I/parts/p5-confinement.tex#source@L20-L20 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p5:source-L43 | PASS | blueprint-I/parts/p5-confinement.tex#source@L43-L43 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p5:prose-L3-L5 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L3-L5 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p5:prose-L7-L18 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L7-L18 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p5:prose-L29-L31 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L29-L31 | Owning-node mapping matches the source unit. |
| p5:prose-L64-L66 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L64-L66 | Owning-node mapping matches the source unit. |
| p5:prose-L90-L90 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L90-L90 | Owning-node mapping matches the source unit. |
| p5:prose-L131-L135 | PASS | blueprint-I/parts/p5-confinement.tex#prose@L131-L135 | Owning-node mapping matches the source unit. |

All other coverage items PASS within the assigned proposed inventory. Previously reviewed records are outside this delta verdict.

## Suspected source defects and limits

No new defect of a frozen declaration or pinned paper is asserted. The reported FAILs concern graph contracts or direct-use records; no blueprint or frozen statement is changed. Existing source adaptations and unverified paper-level reports are not promoted to independently verified errata by this delta review.

## Validation receipts

The review applier run with `--dry-run` for this slice reports 2 replaced, 0 added, 0 coverage items, and 0 unresolved FAILs. An independent Python inventory check confirms exactly 37 proposed-node rows and 56 proposed-coverage rows, a complete replacement for every node FAIL, a one-to-one DEPS/EDGE match, valid source line bounds, and an unchanged node-packet snapshot. `git diff --check` exits 0. Unrelated concurrent workspace changes were left untouched.

## Complete replacement fragments

Replacement blocks remain PROPOSED and require a different reviewer after application. Unchanged fields are retained for mechanical application.

```text
NODE: stepI:p5:sp-bdry
KIND: step
TITLE: Boundary on the level
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159
CONTRACT_ID: stepI:p5:sp-bdry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed f, epsilon, I_0, E and selected torus data of L90, with epsilon < epsilon_0; z_0=(theta_0,I_0), I_0 in B', E=H_R(z_0), and the sets of L131-135; p=(phi,I) in boundary(V) intersect G
SOURCE_QUANTIFIERS: p in boundary(calV) cap G
SOURCE_CONCLUSION: p in T_+ union T_- (this is (b))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:sp-closure, bpI:p5:mu, stepI:p5:sp-window, bpI:p5:graph, bpI:p5:energy-coordinate, bpI:p3:chart, bpI:p5:patch-const, bpI:p5:ext-top, bpI:p5:sec-sep#data, bpI:p5:sec-patch#data, bpI:p3:setting, bpI:p3:coordinates, stepI:p5:sp-open, bpI:p5:eps0
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:sp-closure | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | I in calK subset W
EDGE: bpI:p5:mu | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | ¦m_c¦ < delta_m and (mu_pm in (-delta_m,delta_m)) and (h(Y),mu_s) in Q
EDGE: stepI:p5:sp-window | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | ¦h(I) - E_c¦ < delta_E
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | (b),(c): H_R(phi,Y) = E and T_s = graph
EDGE: bpI:p5:energy-coordinate | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | I = Y_s(phi)
EDGE: bpI:p3:chart | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | Phi injective on W
EDGE: bpI:p5:patch-const | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | calN subset W
EDGE: bpI:p5:ext-top | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | boundary(A) = closure(A) minus A for A open
EDGE: bpI:p5:sec-sep#data | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | calV, G, mu_pm
EDGE: bpI:p5:sec-patch#data | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | Q, O, Omega
EDGE: bpI:p3:setting | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | local I-HEAD data h, f, epsilon and action domains, standing by L29-31
EDGE: bpI:p3:coordinates | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | objects or constants of this package occur in the local claim or its proof
EDGE: stepI:p5:sp-open | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | boundary V = closure V minus V requires the openness proved at L155
EDGE: bpI:p5:eps0 | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | epsilon < epsilon_0 <= epsilon_1 <= 1 and epsilon_0 <= 1/(2 F_1 L_Phi) discharge the conditional energy-coordinate application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p5+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p5:cf-cont
KIND: step
TITLE: Continuation
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177
CONTRACT_ID: stepI:p5:cf-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed f, epsilon, I_0, E and selected torus data of L90, with epsilon < epsilon_0; z_0=(theta_0,I_0), I_0 in B', E=H_R(z_0), and the sets of L131-135; z is the maximal solution through z_0 in W_B, with interval (T_-,T_+)
SOURCE_QUANTIFIERS: inherits the fixed data and quantifiers of the enclosing proof; no new binders
SOURCE_CONCLUSION: T_- = -infinity and T_+ = +infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, N:bpN:p3:gen-continuation-periodic, stepI:p5:cf-conf, bpI:p5:patch-const, bpI:p3:patch, N:bpN:p3:gen-maximal, bpI:p3:setting, bpI:p5:sec-sep#data, bpI:p5:sec-patch#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | (c): X_R C^1 and periodic on R^2 x B
EDGE: N:bpN:p3:gen-continuation-periodic | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | continuation for periodic fields with unbounded angles
EDGE: stepI:p5:cf-conf | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | on the maximal interval the actions lie in Omega; with Omega subset K from sec-patch#data this supplies the compact carrier required for continuation
EDGE: bpI:p5:patch-const | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | calK compact
EDGE: bpI:p3:patch | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | calK subset W subset B (P1)
EDGE: N:bpN:p3:gen-maximal | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | maximal interval (T_-,T_+)
EDGE: bpI:p3:setting | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | local I-HEAD data h, f, epsilon and action domains, standing by L29-31
EDGE: bpI:p5:sec-sep#data | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | objects or constants of this package occur in the local claim or its proof
EDGE: bpI:p5:sec-patch#data | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | Omega = Phi^{-1}(O) subset Phi^{-1}(Q) = K; combine with cf-conf to obtain z(t)_2 in K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p5+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```
