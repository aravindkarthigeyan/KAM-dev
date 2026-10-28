# P-imports topology review

VERDICT: FAIL
REVIEWER: sol-review-P-imports
SLICE: P-imports
MARKER: rev-P-imports

Reviewed working-tree packets at HEAD `fadba2b0f6ddadee502c9fe4e53dfbdbd73e93db`. This is a source topology review; no Lean run or implementation/proof-status inference. Only this report is edited. The user’s current publication ruling supersedes the historical I/N publication-pending language in SPEC.

## Findings

1. **IMP-1: six stale K source contracts.** The imports copy the original K NODE blocks but omit effective append-only AMENDs. The four source fields must follow the effective owner contract. All six differ only in SOURCE_HYPOTHESES: strip dimension and positive-width conventions at `blueprint/parts/p1-analysis.tex@L37-L39`; summation also requires the explicit forward width condition. In real-restriction, the effective contract also spells out the primary target dimension. Replacements below copy the effective owner text verbatim.
2. **IMP-2: 48 obsolete ownership notes (10 I, 38 N).** Every corresponding owner node still exists in the published graph. Replace the pending-publication suffix with confirmed published ownership. This confirms ownership of the source contract only. Owner externals remain external inputs and definitions remain definitions; publication says nothing about Lean proof completion.
3. **IMP-3: seven unused imports.** No DEPS or ROUTES entry in any other P packet references these IDs. Remove these NODE records. Their coverage replacements below record exclusion as unused imports outside the current P dependency closure. Alternatively the writer’s documented `--prune` removes both the node and its generated import inventory item; no P-xown conversion is needed, since all seven still belong to their owner graphs.

There are **28 PASS / 60 FAIL node rows**. IMP-2 and IMP-3 overlap at `N:bpN:p3:ham-periodic`; deleting that record resolves both. Thus there are 53 retained-node replacement blocks and seven deletion/coverage repairs.

## Node-by-node review

Each source locator below was reread in the raw blueprint. For every row, the unprefixed ID exists in the named owner graph; the NOTE’s owner KIND, contract ID and version agree. STATEMENT_SOURCE, SOURCE_QUANTIFIERS, SOURCE_CONCLUSION and CONSTANT_SCOPE agree exactly with the effective owner. SOURCE_HYPOTHESES agrees except IMP-1. All 88 have KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -, ROUTES -, ROUTE_FOR -, and no P frozen-anchor identity. The consumer column gives one actual packet dependency witness (additional witnesses are allowed).

| Node | Verdict | Source spans reread | P consumer witness | Assessment |
| --- | --- | --- | --- | --- |
| I:bpI:p7:chart | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L246` | `P-p7.nodes.md`: `stepP:p7:ke-chart` | IMP-2: published ownership still marked pending |
| I:bpI:p7:elements | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156` | `P-p7.nodes.md`: `stepP:p7:ke-chart` | IMP-2: published ownership still marked pending |
| I:bpI:p7:kepler-eq | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114` | `P-p7.nodes.md`: `bpP:p7:kepler` | IMP-2: published ownership still marked pending |
| I:bpI:p7:orbit-identities | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190` | `P-p7.nodes.md`: `stepP:p7:ke-b` | IMP-2: published ownership still marked pending |
| I:bpI:p7:orbit-maps | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168` | `P-p7.nodes.md`: `bpP:p7:kepler-data` | IMP-2: published ownership still marked pending |
| I:bpI:p7:symplectic | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217` | `P-p7.nodes.md`: `stepP:p7:ke-form` | IMP-2: published ownership still marked pending |
| I:bpI:p7:x-forms | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40` | `P-p7.nodes.md`: `stepP:p7:ke-form` | IMP-2: published ownership still marked pending |
| I:bpI:p7:x-hol | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34` | `P-p11.nodes.md`: `stepP:p11:hc-strip` | IMP-2: published ownership still marked pending |
| I:bpI:p7:x-weier | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35` | `P-p11.nodes.md`: `stepP:p11:pa-series` | IMP-2: published ownership still marked pending |
| I:stepI:p7:ke-trig | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119` | `P-p7.nodes.md`: `stepP:p7:rk-contr` | IMP-2: published ownership still marked pending |
| K:bp:p1:cauchy-open | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L474-L479` | `P-p3.nodes.md`: `stepP:p3:ls-close` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:decay | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p11a12.nodes.md`: `stepP:p11a:fc-decay` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A001-n-ge-1-decay |
| K:bp:p1:ext-banach | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L95-L96` | `P-p3.nodes.md`: `stepP:p3:cv-bij` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-cramer | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L97-L99` | `P-p4.nodes.md`: `bpP:p4:beta-inverse` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-fourier | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-fourier@L87-L91` | `P-p3.nodes.md`: `stepP:p3:fc-tail` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-lebesgue | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-lebesgue@L92-L94` | `P-p3.nodes.md`: `stepP:p3:ma-meas` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-mvt | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L75-L78` | `P-p11.nodes.md`: `stepP:p11:af-o1` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-rectangle | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-rectangle@L67-L70` | `P-p3.nodes.md`: `stepP:p3:fc-decay` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:holomorphic-analytic | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L296-L312` | `P-p11.nodes.md`: `stepP:p11:pa-taylor` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:lip-image | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1124-L1129` | `P-p11a45.nodes.md`: `stepP:p11a:eb-meas` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:mcshane | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1168-L1171` | `P-p11a45.nodes.md`: `stepP:p11a:eb-ext` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:real-restriction | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p7.nodes.md`: `stepP:p7:ho-hol` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A005-n-ge-1-real-restriction |
| K:bp:p4:lattice-count | PASS | `blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L53-L55` | `P-p11a12.nodes.md`: `stepP:p11a:fc-count` | Owner/source contract and ownership note agree; referenced |
| K:bp:p4:lattice-sum | PASS | `blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L66-L71` | `P-p11a12.nodes.md`: `stepP:p11a:pl-sum` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335` | `P-p14a2.nodes.md`: `stepP:p14:st-thr` | IMP-2: published ownership still marked pending |
| N:bpN:p0:partial-exponents#partialDriftExponent | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317` | `P-p14a2.nodes.md`: `stepP:p14:st-thr` | IMP-2: published ownership still marked pending |
| N:bpN:p0:partial-exponents#partialTimeExponent | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317` | `P-p14a2.nodes.md`: `stepP:p14:st-thr` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-continuation | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277` | `P-p11b.nodes.md`: `stepP:p11b:fl-bd` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-continuation-compact | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292` | `P-p14a1.nodes.md`: `stepP:p14:amd-cont` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-exit | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341` | `P-p14a1.nodes.md`: `stepP:p14:amd-fwd` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-lip | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120` | `P-p14a2.nodes.md`: `stepP:p14:ud-cell` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-maximal | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258` | `P-p14a1.nodes.md`: `stepP:p14:amd-max` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-sol | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93` | `P-p14a1.nodes.md`: `bpP:p14:moving-ode` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-symmetry | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110` | `P-p14a1.nodes.md`: `stepP:p14:mo-eq` | IMP-2: published ownership still marked pending |
| N:bpN:p3:gen-uniqueness | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224` | `P-p11b.nodes.md`: `stepP:p11b:fl-an` | IMP-2: published ownership still marked pending |
| N:bpN:p3:ham-periodic | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407` | none (all other P node packets scanned) | IMP-2: published ownership still marked pending; IMP-3: no P consumer; delete import |
| N:bpN:p3:ham-smooth | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381` | `P-p14a1.nodes.md`: `stepP:p14:mo-reg` | IMP-2: published ownership still marked pending |
| N:bpN:p4:algebra | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L108-L112` | `P-p11.nodes.md`: `stepP:p11:ab-prod` | IMP-2: published ownership still marked pending |
| N:bpN:p4:cauchy | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L133` | `P-p11.nodes.md`: `stepP:p11:ab-der` | IMP-2: published ownership still marked pending |
| N:bpN:p4:coefficients | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L60-L70` | `P-p11.nodes.md`: `stepP:p11:hc-mean` | IMP-2: published ownership still marked pending |
| N:bpN:p4:domains | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39` | `P-p1p2.nodes.md`: `bpP:p2:conv#data` | IMP-2: published ownership still marked pending |
| N:bpN:p4:norm | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54` | `P-p11.nodes.md`: `bpP:p11:sec-conv#data` | IMP-2: published ownership still marked pending |
| N:bpN:p4:projections | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L184-L190` | `P-p1p2.nodes.md`: `stepP:p2:nfb-ind` | IMP-2: published ownership still marked pending |
| N:bpN:p4:sup-weighted | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L88-L96` | `P-p11.nodes.md`: `stepP:p11:hc-F` | IMP-2: published ownership still marked pending |
| N:bpN:p5:adjoint | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145` | `P-p1p2.nodes.md`: `stepP:p2:oi-transfer` | IMP-2: published ownership still marked pending |
| N:bpN:p5:canonical | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98` | `P-p11b.nodes.md`: `stepP:p11b:lm-prop` | IMP-2: published ownership still marked pending |
| N:bpN:p5:canonical-map | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p5:composition | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p5:composition-integral | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206` | `P-p1p2.nodes.md`: `stepP:p2:oi-ratio` | IMP-2: published ownership still marked pending |
| N:bpN:p5:flow | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p5:lie-derivative | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114` | `P-p11b.nodes.md`: `stepP:p11b:li-tay` | IMP-2: published ownership still marked pending |
| N:bpN:p5:setting | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26` | `P-p11a12.nodes.md`: `bpP:p11a:c2-conv#bracket` | IMP-2: published ownership still marked pending |
| N:bpN:p5:symplectic | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81` | `P-p11a12.nodes.md`: `stepP:p11a:af-simple` | IMP-2: published ownership still marked pending |
| N:bpN:p5:taylor | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132` | `P-p11a12.nodes.md`: `stepP:p11a:cs-taylor` | IMP-2: published ownership still marked pending |
| N:bpN:p5:transform | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p5:vf-bound | FAIL | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34` | `P-p1p2.nodes.md`: `stepP:p2:sp-field` | IMP-2: published ownership still marked pending |
| N:bpN:p6:divisor | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53` | `P-p1p2.nodes.md`: `stepP:p2:dr-use` | IMP-2: published ownership still marked pending |
| N:bpN:p6:ext-numerics | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22` | `P-p1p2.nodes.md`: `stepP:p2:nfb-N` | IMP-2: published ownership still marked pending |
| N:bpN:p6:homological | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p6:iterative | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p6:setting | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p6:telescope | FAIL | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150` | `P-p11.nodes.md`: `stepP:p11:aa-same` | IMP-2: published ownership still marked pending |
| N:bpN:p0:actionnbhd#actionNbhd | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L36-L41` | `P-p14a2.nodes.md`: `bpP:p14:h-data` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-complexify#complexifyPhase | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L271-L275` | `P-p14a2.nodes.md`: `bpP:p14:perturbation` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-core#innerCore | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L277-L282` | `P-p14a2.nodes.md`: `stepP:p14:st-core` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-definite#HasDefiniteFastPart | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L292-L299` | `P-p14a2.nodes.md`: `bpP:p14:h-data` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-domain#partialComplexDomain | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290` | `P-p14a2.nodes.md`: `stepP:p14:pt-rho` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-pert#IsPartialPerturbation | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L301-L311` | `P-p14a2.nodes.md`: `bpP:p14:perturbation` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p0:partial-sec#degenerateHamiltonian | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| N:bpN:p0:partial-sec#fast | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| N:bpN:p0:sol#IsSolutionOn | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L165-L172` | `P-p14a2.nodes.md`: `stepP:p14:st-sol` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p3:gen-uniform | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform@L136-L141` | `P-p14a2.nodes.md`: `bpP:p14:uniform-data` | Owner/source contract and ownership note agree; referenced |
| K:bp:p0:domains#actionNbhd | FAIL | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| K:bp:p0:domains#complexStrip | PASS | `blueprint/parts/p0-conventions.tex#bp:p0:conventions@L19-L20` | `P-p11a12.nodes.md`: `bpP:p11a:domain-def` | Owner/source contract and ownership note agree; referenced |
| K:bp:p0:domains#fundamentalDomain | FAIL | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| K:bp:p1:cauchy-strip | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p11a12.nodes.md`: `stepP:p11a:af-field` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A013-n-ge-1-cauchy-strip |
| K:bp:p1:exp-sums | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L727-L734` | `P-p11a12.nodes.md`: `stepP:p11a:fc-poly` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-cauchy | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-cauchy@L56-L66` | `P-p11a12.nodes.md`: `stepP:p11a:tc-a` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-measure | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-measure@L100-L109` | `P-p11a45.nodes.md`: `stepP:p11a:eb-meas` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:fourier-basic | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p11a12.nodes.md`: `stepP:p11a:hm-coeff` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A003-n-ge-1-fourier-basic |
| K:bp:p1:iteration | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| K:bp:p1:lipeo | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1203-L1207` | `P-p11a45.nodes.md`: `stepP:p11a:eb-ext` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:summation | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p11a12.nodes.md`: `stepP:p11a:fc-decay` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A002-n-ge-1-summation |
| K:bp:p1:uniform-limits | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368; blueprint/parts/p1-analysis.tex@L37-L39` | `P-p11a45.nodes.md`: `stepP:p11a:lm-hol` | IMP-1: stale SOURCE_HYPOTHESES; owner K-A006-n-ge-1-uniform-limits |
| N:bpN:p4:bracket | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L149-L153` | none (all other P node packets scanned) | IMP-3: no P consumer; delete import |
| N:bpN:p4:ext-param | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-param@L23-L25` | `P-p11a12.nodes.md`: `stepP:p11a:cu-coeff` | Owner/source contract and ownership note agree; referenced |
| N:bpN:p4:general-cauchy | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L171-L174` | `P-p11.nodes.md`: `stepP:p11:hc-F` | Owner/source contract and ownership note agree; referenced |
| K:bp:p1:ext-integral | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86` | `P-p11a12.nodes.md`: `stepP:p11a:rl-deriv` | Owner/source contract and ownership note agree; referenced |

## Coverage findings

| Item | Verdict | Reason |
| --- | --- | --- |
| N:bpN:p3:ham-periodic | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| N:bpN:p0:partial-sec#degenerateHamiltonian | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| N:bpN:p0:partial-sec#fast | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| K:bp:p0:domains#actionNbhd | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| K:bp:p0:domains#fundamentalDomain | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| K:bp:p1:iteration | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |
| N:bpN:p4:bracket | FAIL | IMP-3: NODE disposition retains an unused import; exclude it and remove its NODE block. |

all other coverage items PASS

## Complete retained-node replacement blocks

Apply each block to the same ID in `P-imports.nodes.md`. Only the failing SOURCE_HYPOTHESES or NOTE field changes; every other field, including review/status fields, is preserved verbatim. The writer records review status separately after applying the review.

### I:bpI:p7:chart

```text
NODE: I:bpI:p7:chart
KIND: external
TITLE: [I] Delaunay chart
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L246
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none beyond the definitions of Q, C_0, C, D_R
SOURCE_QUANTIFIERS: Q on D_R
SOURCE_CONCLUSION: Q is 2pi-periodic in ell and g and induces a bijection (R/2piZ)^2 x C_0 -> C; Q : D_R -> C is a surjective real-analytic local diffeomorphism; the induced map on the quotient is a real-analytic diffeomorphism onto the open set C, symplectic by Proposition symplectic; E o Q = -1/(2L^2), Gamma o Q = G; the loci e = 0 and e = 1 are excluded from C_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:chart; shared Lean provider. There: KIND theorem, contract bpI:p7:chart v1. Cited as \Iref{bpI:p7:chart}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:chart; source topology ownership only.
```

### I:bpI:p7:elements

```text
NODE: I:bpI:p7:elements
KIND: external
TITLE: [I] Kepler region and elements
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:elements
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (definition; typing data (q,p) in R^2 x R^2, q != 0)
SOURCE_QUANTIFIERS: (q,p)
SOURCE_CONCLUSION: defines E(q,p) = (1/2)|p|_2^2 - 1/|q|_2, the open region C = {q != 0, E < 0, Gamma > 0, Gamma^2 < -1/(2E)} and on C the elements L = 1/sqrt(-2E), G = Gamma, a = L^2, e = sqrt(1 + 2E Gamma^2), with L > G > 0, e in (0,1), E = -1/(2a), Gamma^2 = a(1 - e^2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:elements; shared Lean provider. There: KIND definition, contract bpI:p7:elements v1. Cited as \Iref{bpI:p7:elements}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:elements; source topology ownership only.
```

### I:bpI:p7:kepler-eq

```text
NODE: I:bpI:p7:kepler-eq
KIND: external
TITLE: [I] Kepler's equation, analytic solution
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:kepler-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < e_1 < 1; e_2 = (1+e_1)/2, vartheta_* = (1+e_2)/2, y_0 = arcosh(vartheta_*/e_2), delta_K = (1/2)(1-vartheta_*) y_0, delta_E = min{e_2-e_1, (1-vartheta_*) y_0/(2 cosh y_0)}; P(e_1) = {(ell,e) in C^2 : |Im ell| < delta_K, dist(e, [-e_1,e_1]) < delta_E}
SOURCE_QUANTIFIERS: e_1 in (0,1), then the constants e_2, vartheta_*, y_0, delta_K, delta_E, then (ell, e) in P(e_1)
SOURCE_CONCLUSION: P is open, contains {(ell,e) real : |e| <= e_1}, |e| < e_1 + delta_E <= e_2, |Im e| < delta_E; there is a unique holomorphic u : P -> C with |Im u| <= y_0 and u - e sin u = ell; (a) |sin u|,|cos u| <= cosh y_0 = vartheta_*/e_2, |e cos u| <= vartheta_* < 1, |1 - e cos u| >= 1 - vartheta_*; (b) d_ell u = 1/(1 - e cos u), d_e u = sin u/(1 - e cos u), u(ell,0) = ell, u(ell+2pi,e) = u(ell,e) + 2pi, sin u, cos u, (1-e cos u)^-1 holomorphic and 2pi-periodic in ell; (c) u real at real points, exactly one real solution u_R(ell,e) for real ell and e in (-1,1), u_R real-analytic on R x (-1,1), u_R(.,e) an increasing diffeomorphism of R with u_R(0,e) = 0, u_R(2pi,e) = 2pi, u = u_R on real points of every P(e_1)
CONSTANT_SCOPE: e_2, vartheta_*, y_0, delta_K, delta_E depend only on e_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:kepler-eq; shared Lean provider. There: KIND proposition, contract bpI:p7:kepler-eq v1. Cited as \Iref{bpI:p7:kepler-eq}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:kepler-eq; source topology ownership only.
```

### I:bpI:p7:orbit-identities

```text
NODE: I:bpI:p7:orbit-identities
KIND: external
TITLE: [I] Identities for the orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:orbit-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R, e = e(L,G), (q,p) = Q(ell,g,L,G), r = |q|_2, u, c, s, D as in Definition orbit-maps
SOURCE_QUANTIFIERS: (ell,g,L,G) in D_R
SOURCE_CONCLUSION: (a) r = L^2 D = L^2(1 - e cos u), L^2(1-e) <= r <= L^2(1+e), |p|_2^2 = (1 + e cos u)/(L^2 D); (b) Gamma(q,p) = G, q.p = L e sin u; (c) E(q,p) = -1/(2L^2), Q(D_R) subset C, elements of Q(ell,g,L,G) are L, G, a = L^2, e; (d) (L e sin u)^2 = -G^2 + 2r - r^2/L^2, L^2 e cos u = L^2 - r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:orbit-identities; shared Lean provider. There: KIND proposition, contract bpI:p7:orbit-identities v1. Cited as \Iref{bpI:p7:orbit-identities}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:orbit-identities; source topology ownership only.
```

### I:bpI:p7:orbit-maps

```text
NODE: I:bpI:p7:orbit-maps
KIND: external
TITLE: [I] Orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:orbit-maps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: ell, g, L, e, k; u = u(ell,e) of Proposition kepler-eq
SOURCE_QUANTIFIERS: (ell, g, L, e, k), then (ell, g, L, G) in D_R
SOURCE_CONCLUSION: defines Q_el(ell,g,L,e,k) (X = L^2(c-e), Y = L^2 k s, P_X = -s/(L D), P_Y = k c/(L D), q = R(g)(X,Y), p = R(g)(P_X,P_Y), D = 1 - e c) and the Delaunay orbit map Q(ell,g,L,G) = Q_el(ell,g,L,e(L,G),G/L) with e(L,G) = sqrt(1 - G^2/L^2); on D_R = R^2 x C_0 all quantities are real and D >= 1 - e > 0 (u = u_R)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:orbit-maps; shared Lean provider. There: KIND definition, contract bpI:p7:orbit-maps v1. Cited as \Iref{bpI:p7:orbit-maps}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:orbit-maps; source topology ownership only.
```

### I:bpI:p7:symplectic

```text
NODE: I:bpI:p7:symplectic
KIND: external
TITLE: [I] The Delaunay map is symplectic
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R (open in R^4); F = 2 L e sin u; for the consequence, U subset R^4 open (target, coordinates (q,p)), H: U -> R of class C^1, W := {w in D_R : Q(w) in U} (open in R^4 since Q is continuous on the open set D_R)
SOURCE_QUANTIFIERS: w in D_R; U open; H: U -> R, C^1; then w in W
SOURCE_CONCLUSION: Q^*(sum p_i dq_i) = L dell + G dg + dF; D Q^T J D Q = J = D Q J D Q^T; Q^*(sum dq_i wedge dp_i) = dell wedge dL + dg wedge dG; D Q(w) invertible; on W: D Q X_{H o Q} = X_H o Q, i.e. w' = X_{H o Q}(w) iff d/dt Q(w) = X_H(Q(w)) for C^1 curves w in W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:symplectic; shared Lean provider. There: KIND proposition, contract bpI:p7:symplectic v1. Cited as \Iref{bpI:p7:symplectic}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:symplectic; source topology ownership only.
```

### I:bpI:p7:x-forms

```text
NODE: I:bpI:p7:x-forms
KIND: external
TITLE: [I] Exterior calculus on open subsets of $\R^m$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-forms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: forms on open subsets of R^m; F smooth with F^*(sum p_i dq_i) = sum P_i dQ_i + dS for a smooth S
SOURCE_QUANTIFIERS: F, S
SOURCE_CONCLUSION: d^2 = 0; d commutes with pull-back by smooth maps; a form is determined by its values on tangent vectors; and DF^T J DF = J (sum dP_i wedge dQ_i standing for -J in the order Q, P)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-forms (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-forms v1. Cited as \Iref{bpI:p7:x-forms}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:x-forms; source topology ownership only.
```

### I:bpI:p7:x-hol

```text
NODE: I:bpI:p7:x-hol
KIND: external
TITLE: [I] Holomorphic functions of several variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none
SOURCE_QUANTIFIERS: holomorphic functions on open subsets of C^m
SOURCE_CONCLUSION: sums, products, compositions and quotients (nonvanishing denominator) of holomorphic functions are holomorphic; exp, sin, cos entire; z^{-1/2} = exp(-(1/2) Log z) holomorphic on {Re z > 0} with |z^{-1/2}| = |z|^{-1/2} <= (Re z)^{-1/2} and z^{-1/2} = 1/sqrt z for z > 0; sqrt holomorphic on {Re z > 0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-hol (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-hol v1. Cited as \Iref{bpI:p7:x-hol}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:x-hol; source topology ownership only.
```

### I:bpI:p7:x-weier

```text
NODE: I:bpI:p7:x-weier
KIND: external
TITLE: [I] Weierstrass
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-weier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a sequence of holomorphic functions on an open set of C^m converging uniformly
SOURCE_QUANTIFIERS: open set U in C^m, functions f_m
SOURCE_CONCLUSION: the uniform limit is holomorphic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-weier (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-weier v1. Cited as \Iref{bpI:p7:x-weier}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node bpI:p7:x-weier; source topology ownership only.
```

### I:stepI:p7:ke-trig

```text
NODE: I:stepI:p7:ke-trig
KIND: external
TITLE: [I] Trigonometric bounds
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119
PROOF_SOURCE: -
CONTRACT_ID: I:stepI:p7:ke-trig
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u = x + iy in C; e in C
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: |sin u|^2 = sin^2 x + sinh^2 y, |cos u|^2 = cos^2 x + sinh^2 y, both <= cosh^2 y; |Re sin u| <= cosh y, |Im sin u| <= sinh|y|; |Im(e sin u)| <= |Re e| sinh|y| + |Im e| cosh y
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node stepI:p7:ke-trig; shared Lean provider. There: KIND step, contract stepI:p7:ke-trig v1. Cited as \Iref{stepI:p7:ke-trig}. Ownership confirmed against the published track-I graph docs/graph/I/DEPGRAPH.md, node stepI:p7:ke-trig; source topology ownership only.
```

### K:bp:p1:decay

```text
NODE: K:bp:p1:decay
KIND: external
TITLE: [K] Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); u holomorphic, bounded and 1-periodic on T_rho
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:decay; shared Lean provider. There: KIND lemma, contract bp:p1:decay v1. Cited as \Kref{bp:p1:decay}.
```

### K:bp:p1:real-restriction

```text
NODE: K:bp:p1:real-restriction
KIND: external
TITLE: [K] Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:real-restriction; shared Lean provider. There: KIND lemma, contract bp:p1:real-restriction v1. Cited as \Kref{bp:p1:real-restriction}.
```

### N:bpN:p0:partial

```text
NODE: N:bpN:p0:partial
KIND: external
TITLE: [N] N-PARTIAL-CONVEX: exponential stability of the fast actions, definite fast part, slow--fast
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Lean frozen statement; n ≥ 2, k ≥ 1, G, G' ⊂ ℝⁿ open and convex, D ⊂ Ph_k open, ρ, g, m, M_ℂ ∈ ℝ with ρ > 0, M_ℂ > 0, B̄(I,ρ) ⊂ G' for every I ∈ G (closed max-norm ball); h : ℂⁿ → ℂ complex differentiable and complex C² on G'_ρ, Im h(I) = 0 for real I ∈ G'_ρ, ‖D²h(z)‖ ≤ M_ℂ on G'_ρ, HasDefiniteFastPart G' ρ g m h; then for μ ∈ (0,μ₀), P with IsPartialPerturbation G' D ρ P, C > 0, z : ℝ → Ph_{n+k}: (Z1) IsSolutionOn H_μ {𝖨 : fast(𝖨) ∈ G} [0,C] z with H_μ = Re h(fast 𝖨) + μ Re P(cx(φ,𝖨)) (degenerateHamiltonian (realPart h) (Re P ∘ cx) μ); (Z2) fast(z(0)_2) ∈ core(G, μ^{b_n}); t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with (slow z(u)_1, slow z(u)_2) ∈ core(D, μ^{b_n}) for all u ∈ [0,t]
SOURCE_QUANTIFIERS: n, k; G, G', D, ρ, g, m, M_ℂ, h (with their hypotheses); then ∃ μ₀ > 0; then ∀ μ ∈ (0,μ₀), P, C > 0, z (with Z1, Z2); then ∀ t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with slow confinement on [0,t]
SOURCE_CONCLUSION: ¦fast(z(t)_2) − fast(z(0)_2)¦ ≤ ½ μ^{b_n}
CONSTANT_SCOPE: μ₀ > 0 depends only on (n, k, G, G', D, ρ, g, m, M_ℂ, h) and is chosen before μ, P, C, z, t; a_n = 2/(6n² − 3n + 14), b_n = 3/(6n² − 3n + 14); slow confinement is tested only on [0,t]; the initial erosion core(G, μ^{b_n}) is used only as fast(z(0)_2) ∈ G
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial; shared Lean provider. There: KIND theorem, contract nekhoroshev.d25.partialConvex_nekhoroshev v1, frozen anchor KAM.Nekhoroshev.partialConvex_nekhoroshev (nekhoroshev.d25.partialConvex_nekhoroshev.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p0:partial; source topology ownership only.
```

### N:bpN:p0:partial-exponents#partialDriftExponent

```text
NODE: N:bpN:p0:partial-exponents#partialDriftExponent
KIND: external
TITLE: [N] \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialDriftExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial-exponents#partialDriftExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines b_n = 3/(6n² − 3n + 14) = (3/2) a_n (partialDriftExponent)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial-exponents#partialDriftExponent; shared Lean provider. There: KIND definition, contract nekhoroshev.d25.partialDriftExponent v1, frozen anchor KAM.Nekhoroshev.partialDriftExponent (nekhoroshev.d25.partialDriftExponent.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial-exponents}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p0:partial-exponents#partialDriftExponent; source topology ownership only.
```

### N:bpN:p0:partial-exponents#partialTimeExponent

```text
NODE: N:bpN:p0:partial-exponents#partialTimeExponent
KIND: external
TITLE: [N] \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialTimeExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial-exponents#partialTimeExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines a_n = 2/(6n² − 3n + 14) (partialTimeExponent; denominator ≥ 32 > 0 for n ≥ 2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial-exponents#partialTimeExponent; shared Lean provider. There: KIND definition, contract nekhoroshev.d25.partialTimeExponent v1, frozen anchor KAM.Nekhoroshev.partialTimeExponent (nekhoroshev.d25.partialTimeExponent.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial-exponents}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p0:partial-exponents#partialTimeExponent; source topology ownership only.
```

### N:bpN:p3:gen-continuation

```text
NODE: N:bpN:p3:gen-continuation
KIND: external
TITLE: [N] Continuation criterion, uniform form
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; (T₋,T₊), z the maximal interval and solution of gen-maximal; Φ has uniform data (δ,M,L)
SOURCE_QUANTIFIERS: E; W; F; x₀; Φ; δ, M, L; t_*
SOURCE_CONCLUSION: if T₊ < ∞ there is no t_* ∈ [0,T₊) with z(t) ∈ Φ for all t ∈ [t_*,T₊); symmetrically on the left; equivalently, staying in Φ near an end of the maximal interval forces that end to be ±∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-continuation; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-continuation v1. Cited as \Nref{bpN:p3:gen-continuation}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-continuation; source topology ownership only.
```

### N:bpN:p3:gen-continuation-compact

```text
NODE: N:bpN:p3:gen-continuation-compact
KIND: external
TITLE: [N] Compact continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus),z the maximal interval and solution; K subset W compact; some tstar in [0,Tplus) has z(t) in K on [tstar,Tplus); the analogous left-tail alternative for the left conclusion
SOURCE_QUANTIFIERS: E,W,F,x0 fixed; the maximal solution; compact K; then a tail time tstar as stated
SOURCE_CONCLUSION: T₊ = +∞; likewise on the left
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-continuation-compact; shared Lean provider. There: KIND corollary, contract bpN:p3:gen-continuation-compact v1. Cited as \Nref{bpN:p3:gen-continuation-compact}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-continuation-compact; source topology ownership only.
```

### N:bpN:p3:gen-exit

```text
NODE: N:bpN:p3:gen-exit
KIND: external
TITLE: [N] First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z with J an interval, 0 ∈ J; V ⊂ E open; z(0) ∈ V; A = {t ∈ J : t ≥ 0, z(t) ∉ V}; only continuity of z on J is used (F and W play no role)
SOURCE_QUANTIFIERS: E; F; W; J; z; V; A
SOURCE_CONCLUSION: exactly one of: (i) A = ∅, i.e. z(t) ∈ V for all t ∈ J, t ≥ 0; (ii) t* = min A exists, t* > 0, t* ∈ J, z(t) ∈ V on [0,t*), z(t*) ∈ ∂V = V̄∖V, and t* = sup{t ∈ J : t ≥ 0, z([0,t]) ⊂ V}; the same backwards in time
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-exit; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-exit v1. Cited as \Nref{bpN:p3:gen-exit}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-exit; source topology ownership only.
```

### N:bpN:p3:gen-lip

```text
NODE: N:bpN:p3:gen-lip
KIND: external
TITLE: [N] Bounds and Lipschitz constants on compact sets
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W ⊂ E; K ⊂ W compact
SOURCE_QUANTIFIERS: E; W; F; K; then M and L
SOURCE_CONCLUSION: F is bounded on K, and there is L ≥ 0 with ¦F(x)−F(y)¦ ≤ L¦x−y¦ for x, y ∈ K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-lip; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-lip v1. Cited as \Nref{bpN:p3:gen-lip}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-lip; source topology ownership only.
```

### N:bpN:p3:gen-maximal

```text
NODE: N:bpN:p3:gen-maximal
KIND: external
TITLE: [N] Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W
SOURCE_QUANTIFIERS: E; W; F; x₀; then T₋, T₊, z
SOURCE_CONCLUSION: there exist Tminus in [-infinity,0), Tplus in (0,+infinity] and z:R->E with z(0)=x0 and IsSolIn F W (Tminus,Tplus) z; every solution y through x0 on an interval J containing 0 has J subset (Tminus,Tplus) and y=z on J; the maximal interval and the restricted solution z|(Tminus,Tplus) are unique, with arbitrary values outside it; initial time t0 is handled by gen-symmetry(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-maximal; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-maximal v1. Cited as \Nref{bpN:p3:gen-maximal}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-maximal; source topology ownership only.
```

### N:bpN:p3:gen-sol

```text
NODE: N:bpN:p3:gen-sol
KIND: external
TITLE: [N] Solutions in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E → E; W ⊂ E; J ⊂ ℝ; z : ℝ → E (§s-conv conventions: E finite-dimensional real normed space; F : E → E total; W ⊂ E open; 'C¹ on W' = ContDiffOn ℝ 1 F W; intervals are order-connected; derivatives two-sided)
SOURCE_QUANTIFIERS: E; F; W; J; z
SOURCE_CONCLUSION: defines IsSolIn F W J z: for every t ∈ J, z(t) ∈ W and z has derivative F(z(t)) at t (two-sided HasDerivAt, including endpoints of J)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-sol; shared Lean provider. There: KIND definition, contract bpN:p3:gen-sol v1. Cited as \Nref{bpN:p3:gen-sol}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-sol; source topology ownership only.
```

### N:bpN:p3:gen-symmetry

```text
NODE: N:bpN:p3:gen-symmetry
KIND: external
TITLE: [N] Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; (a) c ∈ ℝ; (b) F C¹ on W for the second clause; (c) v ∈ E with W + v = W and F(x+v) = F(x) for x ∈ W
SOURCE_QUANTIFIERS: E; F; W; J; z; then c, resp. v
SOURCE_CONCLUSION: (a) t ↦ z(t+c) is a solution on J−c; (b) t ↦ z(−t) is a solution of −F on −J, and −F is C¹ on W if F is; (c) t ↦ z(t)+v is a solution of F in W on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-symmetry; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-symmetry v1. Cited as \Nref{bpN:p3:gen-symmetry}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-symmetry; source topology ownership only.
```

### N:bpN:p3:gen-uniqueness

```text
NODE: N:bpN:p3:gen-uniqueness
KIND: external
TITLE: [N] Uniqueness on arbitrary intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; J ⊂ ℝ an interval of any kind; t₀ ∈ J; y₁, y₂ : ℝ → E with IsSolIn F W J y_i and y₁(t₀) = y₂(t₀); no confinement, boundedness or smallness assumed
SOURCE_QUANTIFIERS: E; W; F; J; t₀; y₁, y₂
SOURCE_CONCLUSION: y₁ = y₂ on J; in particular solutions on intervals J₁, J₂ agreeing at one point of J₁∩J₂ agree on J₁∩J₂
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-uniqueness; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-uniqueness v1. Cited as \Nref{bpN:p3:gen-uniqueness}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:gen-uniqueness; source topology ownership only.
```

### N:bpN:p3:ham-smooth

```text
NODE: N:bpN:p3:ham-smooth
KIND: external
TITLE: [N] Regularity of $X_H$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P = ℝⁿ × ℝⁿ (max norm); W ⊂ P open; H : P → ℝ is C^{k+1} on W, k ≥ 0; X_H the frozen hamiltonianVectorField
SOURCE_QUANTIFIERS: n; W; H; k
SOURCE_CONCLUSION: X_H is C^k on W; for k ≥ 1 it is C¹ (hence locally Lipschitz) on W, and H is differentiable at every point of W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-smooth; shared Lean provider. There: KIND lemma, contract bpN:p3:ham-smooth v1. Cited as \Nref{bpN:p3:ham-smooth}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p3:ham-smooth; source topology ownership only.
```

### N:bpN:p4:algebra

```text
NODE: N:bpN:p4:algebra
KIND: external
TITLE: [N] B.2
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L108-L112
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:algebra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u, v ∈ 𝒪(r,s) scalar with finite norms
SOURCE_QUANTIFIERS: D, m, n; r, s; u, v; I ∈ V_rD; j ≥ 1
SOURCE_CONCLUSION: uv ∈ 𝒪(r,s); (uv)^_k(I) = Σ_l û_{k−l}(I) v̂_l(I) (absolutely convergent); ¦uv¦_{I,s} ≤ ¦u¦_{I,s}¦v¦_{I,s} for every I ∈ V_rD; hence ¦uv¦_{r,s} ≤ ¦u¦_{r,s}¦v¦_{r,s} and ¦u^j¦_{r,s} ≤ ¦u¦_{r,s}^j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:algebra; shared Lean provider. There: KIND lemma, contract bpN:p4:algebra v1. Cited as \Nref{bpN:p4:algebra}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:algebra; source topology ownership only.
```

### N:bpN:p4:cauchy

```text
NODE: N:bpN:p4:cauchy
KIND: external
TITLE: [N] B.3
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L133
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r_0,s_0) with finite norm; 0 < r < r_0, 0 < s < s_0; (vector/matrix u componentwise)
SOURCE_QUANTIFIERS: D, m, n; r_0, s_0; u; r, s (then ρ, σ with r_0 = r+ρ, s_0 = s+σ)
SOURCE_CONCLUSION: (a) for every I ∈ V_{r_0}D: Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{I,s_0}/(e(s_0−s)), hence sup_I Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)) and for each single j ¦∂_{θ_j}u¦_{r_0,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)); (b) max_i ¦∂_{I_i}u¦_{r,s_0} ≤ ¦u¦_{r_0,s_0}/(r_0−r); in particular Σ-pointwise form with (e σ)^{−1}, ρ^{−1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:cauchy; shared Lean provider. There: KIND lemma, contract bpN:p4:cauchy v1. Cited as \Nref{bpN:p4:cauchy}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:cauchy; source topology ownership only.
```

### N:bpN:p4:coefficients

```text
NODE: N:bpN:p4:coefficients
KIND: external
TITLE: [N] Coefficients, derivatives, series
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L60-L70
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) on 𝒟_{r,s}, D ⊂ ℂ^m (Definitions domains, norm); (c) a_k: V_rD → ℂ (k ∈ ℤⁿ) holomorphic with S := sup_I Σ_k ¦a_k(I)¦ e^{2π¦k¦₁s} < ∞; (d) ¦u¦_{r,s} < ∞
SOURCE_QUANTIFIERS: D, m, n; r, s; u; (a_k)_k; S; s' < s
SOURCE_CONCLUSION: (a) each û_k is holomorphic on V_rD; (b) ∂_{θ_j}u, ∂_{I_i}u ∈ 𝒪(r,s), (∂_{θ_j}u)^_k = 2πik_j û_k, (∂_{I_i}u)^_k = ∂_{I_i}û_k; (c) v = Σ a_k χ_k converges absolutely and uniformly on 𝒟_{r,s'} for each s' < s, v ∈ 𝒪(r,s), v̂_k = a_k and ¦v¦_{r,s} = S; (d) u(θ,I) = Σ_k û_k(I) χ_k(θ) on 𝒟_{r,s} and ¦û_k(I)¦ e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:coefficients; shared Lean provider. There: KIND lemma, contract bpN:p4:coefficients v1. Cited as \Nref{bpN:p4:coefficients}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:coefficients; source topology ownership only.
```

### N:bpN:p4:domains

```text
NODE: N:bpN:p4:domains
KIND: external
TITLE: [N] Domains
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:domains
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m any subset; r, s > 0
SOURCE_QUANTIFIERS: m, n; D; r, s; then z = (θ,I); a, b ≥ 0; r' ≤ r, s' ≤ s (resp. 0<r'<r, 0<s'<s)
SOURCE_CONCLUSION: defines V_rD = {I ∈ ℂ^m : ∃ I' ∈ D, ¦I−I'¦_∞ < r}, 𝒟_{r,s} = T_s × V_rD ⊂ ℂⁿ×ℂ^m, P̄(z;a,b) = {(θ',I') : ¦θ'−θ¦_∞ ≤ a, ¦I'−I¦_∞ ≤ b}; (a) V_rD and 𝒟_{r,s} are open and 𝒟_{r',s'} ⊂ 𝒟_{r,s} for r' ≤ r, s' ≤ s; (b) if 0<r'<r, 0<s'<s and z ∈ 𝒟_{r',s'} then P̄(z;s−s',r−r') ⊂ 𝒟_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:domains; shared Lean provider. There: KIND definition, contract bpN:p4:domains v1. Cited as \Nref{bpN:p4:domains}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:domains; source topology ownership only.
```

### N:bpN:p4:norm

```text
NODE: N:bpN:p4:norm
KIND: external
TITLE: [N] The class $\Os rs$ and the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m; r, s > 0 (the domains of Definition bpN:p4:domains); u: 𝒟_{r,s} → ℂ
SOURCE_QUANTIFIERS: m, n; D; r, s; u; k ∈ ℤⁿ; I ∈ V_rD
SOURCE_CONCLUSION: defines 𝒪(r,s) = {u: 𝒟_{r,s} → ℂ holomorphic and 1-periodic in each θ_j}; û_k(I) = ∫_{[0,1]ⁿ} u(x,I) e^{−2πik·x} dx; ¦u¦_{I,s} = Σ_k ¦û_k(I)¦ e^{2π¦k¦₁ s}; ¦u¦_{r,s} = sup_{I∈V_rD} ¦u¦_{I,s} ∈ [0,∞]; for vector/matrix u the coefficients are componentwise with ¦û_k¦_∞ = max_a ¦û_{a,k}¦ in ¦u¦_{I,s}; 'finite norm' means ¦u¦_{r,s} < ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:norm; shared Lean provider. There: KIND definition, contract bpN:p4:norm v1. Cited as \Nref{bpN:p4:norm}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:norm; source topology ownership only.
```

### N:bpN:p4:projections

```text
NODE: N:bpN:p4:projections
KIND: external
TITLE: [N] $P_S$, $T_K$, averages
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L184-L190
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:projections
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; S ⊂ ℤⁿ; K ≥ 0; 0 < σ < s; Λ ⊂ ℤⁿ any set (Λ-normal form u = P_Λu); vector-valued u componentwise
SOURCE_QUANTIFIERS: D, m, n; r, s; u; S; K; σ; Λ
SOURCE_CONCLUSION: P_Su = Σ_{k∈S}û_kχ_k ∈ 𝒪(r,s), (P_Su)^_k = û_k for k ∈ S and 0 otherwise, ¦P_Su¦_{r,s} ≤ ¦u¦_{r,s}; for T_Ku = P_{¦k¦₁≤K}u and ⟨u⟩(I) = û_0(I): ¦T_Ku¦_{r,s}, ¦⟨u⟩¦_{r,s} ≤ ¦u¦_{r,s}; u − T_Ku = P_{¦k¦₁>K}u and ¦u−T_Ku¦_{r,s−σ} ≤ e^{−2πKσ}¦u¦_{r,s}; P_Λu, u−P_Λu in the class with norms ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:projections; shared Lean provider. There: KIND lemma, contract bpN:p4:projections v1. Cited as \Nref{bpN:p4:projections}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:projections; source topology ownership only.
```

### N:bpN:p4:sup-weighted

```text
NODE: N:bpN:p4:sup-weighted
KIND: external
TITLE: [N] B.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L88-L96
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:sup-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) (scalar, vector or matrix valued; sup¦u¦ is the sup of the max norm of the values); (b) σ > 0 and ¦u¦ ≤ M on 𝒟_{r,s+σ}
SOURCE_QUANTIFIERS: D, m, n; r, s; u; σ; M
SOURCE_CONCLUSION: (a) sup_{𝒟_{r,s}} ¦u¦ ≤ ¦u¦_{r,s}; (b) ¦u¦_{r,s} ≤ coth(πσ)ⁿ M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:sup-weighted; shared Lean provider. There: KIND lemma, contract bpN:p4:sup-weighted v1. Cited as \Nref{bpN:p4:sup-weighted}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p4:sup-weighted; source topology ownership only.
```

### N:bpN:p5:adjoint

```text
NODE: N:bpN:p5:adjoint
KIND: external
TITLE: [N] Iterated brackets
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:adjoint
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: φ ∈ 𝒪(r',s'), u ∈ 𝒪(r,s) with finite norms; 0 < ρ < r, 0 < σ < s; r+ρ ≤ r'; s+σ ≤ s'; η = 2¦φ¦_{r',s'}/(ρσ); h ≥ 1
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; φ, u; ρ, σ; h
SOURCE_CONCLUSION: ¦ad^h_φu¦_{r−ρ,s−σ} ≤ (2h²/(eρσ))^h (h!/(2h)!) ¦φ¦_{r',s'}^h ¦u¦_{r,s}, hence (1/h!)¦ad^h_φu¦_{r−ρ,s−σ} ≤ (eη/4)^h ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:adjoint; shared Lean provider. There: KIND lemma, contract bpN:p5:adjoint v1. Cited as \Nref{bpN:p5:adjoint}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:adjoint; source topology ownership only.
```

### N:bpN:p5:canonical

```text
NODE: N:bpN:p5:canonical
KIND: external
TITLE: [N] Canonical maps: bracket invariance and conjugation
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:canonical
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma symplectic; z ∈ Ω^{1/2}; Φ = X^t (¦t¦ ≤ 1); u, v, H holomorphic on a neighbourhood of Φ(z); for (c): y: J → Ω^{1/2} with ẏ = X_{H∘Φ}(y) and H holomorphic near Φ(y(J))
SOURCE_QUANTIFIERS: Ω; φ; z; t; u, v, H; y; J
SOURCE_CONCLUSION: u∘Φ is holomorphic near z and (a) {u∘Φ,v∘Φ}(z) = {u,v}(Φ(z)); (b) DΦ(z)X_{H∘Φ}(z) = X_H(Φ(z)); (c) x = Φ∘y satisfies ẋ = X_H(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:canonical; shared Lean provider. There: KIND corollary, contract bpN:p5:canonical v1. Cited as \Nref{bpN:p5:canonical}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:canonical; source topology ownership only.
```

### N:bpN:p5:canonical-map

```text
NODE: N:bpN:p5:canonical-map
KIND: external
TITLE: [N] Iterative-Lemma package for $\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; φ ∈ 𝒪(r,s) with finite norm; 0 < ρ < r/2, 0 < σ < s/2; ε := ¦φ¦_{r,s}/(ρσ) ≤ ½; Ω = 𝒟_{r−ρ,s−σ}, ν = ν_{ρ,σ}; Φ = X^1_φ, Ψ = X^{−1}_φ (Lemma flow)
SOURCE_QUANTIFIERS: D, n; r, s; ρ, σ; φ; t ∈ [−1,1]; k ∈ ℤⁿ
SOURCE_CONCLUSION: (a) ν(X_φ) ≤ ε on Ω; Φ, Ψ defined and holomorphic on 𝒟_{r−3ρ/2,s−3σ/2} ⊂ Ω^{1/2} into Ω; ν(X^t−id) ≤ ¦t¦ε; ¦Φ_θ−θ¦_∞ ≤ ¦φ¦/ρ, ¦Φ_I−I¦_∞ ≤ ¦φ¦/(eσ) (same for Ψ); (b) Φ(θ+k,I) = Φ(θ,I)+(k,0), Φ real on real points if φ is; (c) on 𝒟_{r−2ρ,s−2σ}: ¦DΦ−1¦_ν ≤ 2ε; (d) (DΦ)ᵀJDΦ = J and Corollary canonical holds for Φ; (e) Ψ∘Φ = id = Φ∘Ψ on 𝒟_{r−2ρ,s−2σ} and Φ(𝒟_{r−2ρ,s−2σ}) ⊂ 𝒟_{r−3ρ/2,s−3σ/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:canonical-map; shared Lean provider. There: KIND proposition, contract bpN:p5:canonical-map v1. Cited as \Nref{bpN:p5:canonical-map}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:canonical-map; source topology ownership only.
```

### N:bpN:p5:composition

```text
NODE: N:bpN:p5:composition
KIND: external
TITLE: [N] Lemma B.5: $\abs{u\circ X^1_\phi}\le(1-\eta)^{-1}\abs u$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; 0 < ρ < r ≤ r'−ρ; 0 < σ < s ≤ s'−σ; φ ∈ 𝒪(r',s') with finite norm; η = 2¦φ¦_{r',s'}/(ρσ) ≤ ½; Ω = 𝒟_{r'−ρ,s'−σ} ⊃ 𝒟_{r,s}; ν = ν_{ρ,σ}; (ii) u ∈ 𝒪(r,s) with finite norm; (iv) φ and u real on real points
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; u; t
SOURCE_CONCLUSION: (i) ν(X_φ) ≤ η/2 ≤ ¼ on Ω; the flow X^t (¦t¦ ≤ 1) is defined on Ω^{1/2} ⊃ 𝒟_{r−ρ,s−σ} with X^t(𝒟_{r−ρ,s−σ}) ⊂ 𝒟_{r,s}; (ii) Σ_h(1/h!)ad^h_φu converges in ¦·¦_{r−ρ,s−σ} to S ∈ 𝒪(r−ρ,s−σ), S = u∘X^1_φ on 𝒟_{r−ρ,s−σ}, and ¦u∘X^1_φ¦_{r−ρ,s−σ} ≤ (1−eη/4)^{−1}¦u¦_{r,s} ≤ (1−2¦φ¦_{r',s'}/(ρσ))^{−1}¦u¦_{r,s}; (iii) the same for X^t (¦t¦ ≤ 1) with η replaced by ¦t¦η; (iv) u∘X^1_φ is real on real points of 𝒟_{r−ρ,s−σ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:composition; shared Lean provider. There: KIND theorem, contract bpN:p5:composition v1. Cited as \Nref{bpN:p5:composition}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:composition; source topology ownership only.
```

### N:bpN:p5:composition-integral

```text
NODE: N:bpN:p5:composition-integral
KIND: external
TITLE: [N] Integral remainders in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:composition-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Theorem composition; v_t ∈ 𝒪(r,s) (0 ≤ t ≤ 1) with finite norms and V = sup_t¦v_t¦_{r,s} < ∞; (t,z) ↦ v_t(z) and (t,z) ↦ Dv_t(z) continuous on [0,1]×𝒟_{r,s}
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; (v_t)_t; V
SOURCE_CONCLUSION: G(z) = ∫_0^1 v_t(X^t_φz)dt lies in 𝒪(r−ρ,s−σ) and ¦G¦_{r−ρ,s−σ} ≤ (1−η)^{−1}V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:composition-integral; shared Lean provider. There: KIND corollary, contract bpN:p5:composition-integral v1. Cited as \Nref{bpN:p5:composition-integral}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:composition-integral; source topology ownership only.
```

### N:bpN:p5:flow

```text
NODE: N:bpN:p5:flow
KIND: external
TITLE: [N] Flow of a small holomorphic field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ν a complex norm on ℂ^N; Ω ⊂ ℂ^N open; F: Ω → ℂ^N holomorphic with ν(F) ≤ ε on Ω, 0 ≤ ε ≤ ½; Ω^c = {z : B̄_ν(z,c) ⊂ Ω} for c > 0; (d) τ ∈ ℂ^N with Ω+τ = Ω and F(w+τ) = F(w); (e) N = 2n and F(x) ∈ ℝ^N for x ∈ Ω∩ℝ^N
SOURCE_QUANTIFIERS: N; ν; Ω; F; ε; c > 0; z; t; τ
SOURCE_CONCLUSION: (a) for z ∈ Ω^{1/2} there is γ_z: ℝ → ℂ^N with IsSolIn F Ω [−1,1] γ_z, γ_z(0) = z, any solution in Ω through z on J ∋ 0 equals γ_z on J∩[−1,1]; X^t(z) = γ_z(t) and ν(X^t(z)−z) ≤ ¦t¦ε; (b) (t,z) ↦ X^t(z) continuous on [−1,1]×Ω^{1/2}, X^t holomorphic Ω^{1/2} → Ω, D_zX^t continuous, Y = D_zX^t satisfies Y(t) = 1 + ∫_0^t DF(X^τz)Y(τ)dτ; (c) for z ∈ Ω^1: X^1(z) ∈ Ω^{1/2}, X^{−1}(X^1z) = z, ¦DX^t(z)−1¦_ν ≤ 2ε (¦t¦ ≤ 1), likewise X^1(X^{−1}z) = z; (d) Ω^{1/2}+τ = Ω^{1/2} and X^t(z+τ) = X^t(z)+τ; (e) X^t(x) ∈ ℝ^N for x ∈ Ω^{1/2}∩ℝ^N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:flow; shared Lean provider. There: KIND lemma, contract bpN:p5:flow v1. Cited as \Nref{bpN:p5:flow}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:flow; source topology ownership only.
```

### N:bpN:p5:lie-derivative

```text
NODE: N:bpN:p5:lie-derivative
KIND: external
TITLE: [N] Derivative along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:lie-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ω ⊂ ℂⁿ×ℂⁿ, φ, F = X_φ, ε ≤ ½ as in Lemma symplectic; Ω_1 ⊂ Ω open; u holomorphic on Ω_1; z ∈ Ω^{1/2} with X^t(z) ∈ Ω_1 for ¦t¦ ≤ 1
SOURCE_QUANTIFIERS: Ω; φ; ε; Ω_1; u; z; j ≥ 0
SOURCE_CONCLUSION: g(t) = u(X^t(z)) is C^∞ on [−1,1] and g^{(j)}(t) = (ad^j_φu)(X^t(z)) for all j ≥ 0 (each ad^j_φu holomorphic on Ω_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:lie-derivative; shared Lean provider. There: KIND lemma, contract bpN:p5:lie-derivative v1. Cited as \Nref{bpN:p5:lie-derivative}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:lie-derivative; source topology ownership only.
```

### N:bpN:p5:setting

```text
NODE: N:bpN:p5:setting
KIND: external
TITLE: [N] Hamiltonian field, bracket, scaled norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n; z = (θ,I) ∈ ℂⁿ×ℂⁿ, angles first; u, v holomorphic on an open set; ρ, σ > 0)
SOURCE_QUANTIFIERS: n; u, v; ρ, σ; c > 0; φ; j ≥ 0
SOURCE_CONCLUSION: defines J = ((0,1),(−1,0)), ∇u = (∂_θu,∂_Iu)ᵀ, X_u = J∇u = (∂_Iu, −∂_θu), {u,v} = Σ_i(∂_{θ_i}u∂_{I_i}v − ∂_{I_i}u∂_{θ_i}v) = Du·X_v = ∇uᵀJ∇v = −{v,u}; ν_{ρ,σ}(a,b) = max(¦a¦_∞/σ, ¦b¦_∞/ρ) with closed ball of radius c about z equal to P̄(z;cσ,cρ); ad^0_φu = u, ad^j_φu = {ad^{j−1}_φu, φ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:setting; shared Lean provider. There: KIND definition, contract bpN:p5:setting v1. Cited as \Nref{bpN:p5:setting}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:setting; source topology ownership only.
```

### N:bpN:p5:symplectic

```text
NODE: N:bpN:p5:symplectic
KIND: external
TITLE: [N] Symplectic flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma flow with N = 2n, Ω ⊂ ℂⁿ×ℂⁿ, F = X_φ with φ holomorphic on Ω, ν(F) ≤ ε ≤ ½; z ∈ Ω^{1/2}; ¦t¦ ≤ 1
SOURCE_QUANTIFIERS: n; ν; Ω; φ; ε; z; t
SOURCE_CONCLUSION: Y = DX^t(z) satisfies YᵀJY = J, YJYᵀ = J, det Y = ±1 (Yᵀ the plain transpose)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:symplectic; shared Lean provider. There: KIND lemma, contract bpN:p5:symplectic v1. Cited as \Nref{bpN:p5:symplectic}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:symplectic; source topology ownership only.
```

### N:bpN:p5:taylor

```text
NODE: N:bpN:p5:taylor
KIND: external
TITLE: [N] Taylor with integral remainder along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma lie-derivative; N ≥ 1; for the displayed formula (eq:poschel): h, f_0 holomorphic on Ω_1 and the trajectory of z stays in Ω_1
SOURCE_QUANTIFIERS: Ω; φ; Ω_1; u; z; N; h, f_0
SOURCE_CONCLUSION: u(X^1z) = Σ_{j<N}(1/j!)(ad^j_φu)(z) + R_N(z) with R_N(z) = ∫_0^1(1−t)^{N−1}/(N−1)!·(ad^N_φu)(X^tz)dt and ¦R_N(z)¦ ≤ (1/N!)max_{0≤t≤1}¦(ad^N_φu)(X^tz)¦; in particular (h+f_0)(X^1z) = h(z) + {h,φ}(z) + f_0(z) + ∫_0^1{(1−t){h,φ}+f_0, φ}(X^tz)dt
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:taylor; shared Lean provider. There: KIND lemma, contract bpN:p5:taylor v1. Cited as \Nref{bpN:p5:taylor}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:taylor; source topology ownership only.
```

### N:bpN:p5:transform

```text
NODE: N:bpN:p5:transform
KIND: external
TITLE: [N] Lie transform with first-order remainder, in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:transform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Theorem composition; h ∈ 𝒪(r,s) (any norm, possibly ∞) with w := {h,φ} ∈ 𝒪(r,s) of finite norm; f_0 ∈ 𝒪(r,s) with finite norm
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; h, f_0; w
SOURCE_CONCLUSION: on 𝒟_{r−ρ,s−σ}: (h+f_0)∘X^1_φ = h + w + f_0 + ℛ with ℛ = Σ_{j≥1}((1/(j+1)!)ad^j_φw + (1/j!)ad^j_φf_0) = ∫_0^1{(1−t)w+f_0,φ}∘X^t_φ dt; the series converges in ¦·¦_{r−ρ,s−σ}, ℛ ∈ 𝒪(r−ρ,s−σ), ¦ℛ¦_{r−ρ,s−σ} ≤ Σ_{j≥1}(eη/4)^j(¦w¦_{r,s}/(j+1)+¦f_0¦_{r,s}) ≤ (η/(1−η))(½¦w¦_{r,s}+¦f_0¦_{r,s})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:transform; shared Lean provider. There: KIND proposition, contract bpN:p5:transform v1. Cited as \Nref{bpN:p5:transform}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:transform; source topology ownership only.
```

### N:bpN:p5:vf-bound

```text
NODE: N:bpN:p5:vf-bound
KIND: external
TITLE: [N] Size of the field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:vf-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: φ ∈ 𝒪(r,s) with finite norm (D ⊂ ℂⁿ); 0 < ρ < r, 0 < σ < s
SOURCE_QUANTIFIERS: D, n; r, s; φ; ρ, σ; i; on 𝒟_{r−ρ,s−σ}
SOURCE_CONCLUSION: on 𝒟_{r−ρ,s−σ}: ¦∂_{I_i}φ¦ ≤ ¦φ¦_{r,s}/ρ, ¦∂_{θ_i}φ¦ ≤ ¦φ¦_{r,s}/(eσ) and ν_{ρ,σ}(X_φ) = max(max_i¦∂_{I_i}φ¦/σ, max_i¦∂_{θ_i}φ¦/ρ) ≤ ¦φ¦_{r,s}/(ρσ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:vf-bound; shared Lean provider. There: KIND lemma, contract bpN:p5:vf-bound v1. Cited as \Nref{bpN:p5:vf-bound}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p5:vf-bound; source topology ownership only.
```

### N:bpN:p6:divisor

```text
NODE: N:bpN:p6:divisor
KIND: external
TITLE: [N] Divisor bound
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:divisor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2) of the setting; K L r<=alpha/p; p>1, q=p/(p-1)
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; then I in V_rD, k in Z_K\Lambda
SOURCE_CONCLUSION: |k·omega(I)|>=alpha-KLr>=alpha/q for all I in V_rD and k in Z_K\Lambda
CONSTANT_SCOPE: none beyond the setting data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:divisor; shared Lean provider. There: KIND lemma, contract bpN:p6:divisor v1. Cited as \Nref{bpN:p6:divisor}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:divisor; source topology ownership only.
```

### N:bpN:p6:ext-numerics

```text
NODE: N:bpN:p6:ext-numerics
KIND: external
TITLE: [N] Numerics
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:ext-numerics
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: 2/e<1; e^{-3 ln2}=1/8; e^2<8, hence ln2>2/3 and 12 ln2>8; sum_{i>=1} 4^{1-i}=4/3; (1-2^{-7})^{-1}=128/127; (1-1/8)^{-1}=8/7 (and e>2, used in bg-sum)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-N graph, node bpN:p6:ext-numerics (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpN:p6:ext-numerics v1. Cited as \Nref{bpN:p6:ext-numerics}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:ext-numerics; source topology ownership only.
```

### N:bpN:p6:homological

```text
NODE: N:bpN:p6:homological
KIND: external
TITLE: [N] Homological equation
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:homological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), KLr<=alpha/p; s>0; f in O(r,s) with delta=|f|_{r,s}<infinity; xi=P_Lambda T_K f; phi=sum_{k in Z_K\Lambda} fhat_k(I)/(2πi k·omega(I)) chi_k(theta), chi_k=e^{2πik·theta}
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; f
SOURCE_CONCLUSION: xi, phi in O(r,s) are finite sums of characters (trig. polynomials of degree<=K in theta) and (a) {phi,h}+xi=T_K f on D_{r,s} with {phi,h}=∂_theta phi·omega, P_Lambda phi=0, P_Lambda xi=xi, xi=P_{Lambda∩Z_K} f; (b) |xi|_{r,s}<=delta, |T_K f|_{r,s}<=delta, |phi|_{r,s}<=q delta/abar=q delta/(2πalpha); (c) if Lambda=-Lambda, f real on real points and omega(I) real for real I in V_rD then xi, phi real on real points
CONSTANT_SCOPE: constants q=p/(p-1), abar=2πalpha; no dependence on f beyond delta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:homological; shared Lean provider. There: KIND proposition, contract bpN:p6:homological v1. Cited as \Nref{bpN:p6:homological}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:homological; source topology ownership only.
```

### N:bpN:p6:iterative

```text
NODE: N:bpN:p6:iterative
KIND: external
TITLE: [N] Iterative Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), KLr<=alpha/p (p>1, q=p/(p-1)); s>0; rho,sigma>0 with 2rho<r, 2sigma<s; abar=2πalpha; H=h+g+f on D_{r,s}, g=sum_{j in J} g_j as in the setting (any finite decomposition), f in O(r,s); delta=|f|_{r,s}<=abar rho sigma/(4q) (equivalently u=q delta/(abar rho sigma)<=1/4)
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; rho; sigma; g, J, g_j; f
SOURCE_CONCLUSION: there is phi in O(r,s) (that of the homological equation, |phi|_{r,s}<=q delta/abar) such that Phi=X^1_phi satisfies (a) Phi holomorphic on D_{r-3rho/2,s-3sigma/2} into D_{r-rho,s-sigma}, canonical (DPhi^T J DPhi=J), Phi(theta+k,I)=Phi(theta,I)+(k,0), injective on D_{r-2rho,s-2sigma} with left inverse X^{-1}_phi; (b) nu_{rho,sigma}(Phi-id)<=u, |Phi_theta-theta|_inf<=q delta/(abar rho), |Phi_I-I|_inf<=q delta/(e abar sigma), |DPhi-1|_nu<=2u on D_{r-2rho,s-2sigma}; (c) H∘Phi=h+g_++f_+ on D_{r-2rho,s-2sigma}, g_+=g+P_Lambda T_K f, |g_+-g|_{r,s}<=delta, f_+ in O(r-2rho,s-2sigma); (d) |f_+|_{r-2rho,s-2sigma}<=(1-2q delta/(abar rho sigma))^{-1}(2q/(e abar rho sigma)(|g|_*+delta)+e^{-2πK sigma})delta; (e) if Lambda=-Lambda and h,g,f real on real points then phi, g_+, f_+ real on real points and Phi maps real points to real points
CONSTANT_SCOPE: all constants explicit; depend only on (n,r,s,rho,sigma,K,alpha,L,p) and on delta, |g|_*; no dependence on f or H beyond delta and |g|_*
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:iterative; shared Lean provider. There: KIND theorem, contract bpN:p6:iterative v1. Cited as \Nref{bpN:p6:iterative}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:iterative; source topology ownership only.
```

### N:bpN:p6:setting

```text
NODE: N:bpN:p6:setting
KIND: external
TITLE: [N] Resonant setting
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n; r>0; K>=0; alpha>0; L>=0; Lambda subset Z^n; h holomorphic on V_rD (bpN:p4:domains), regarded as a theta-independent function on D_{r,s} for every s>0; omega=∂_I h : V_rD -> C^n; for the norm |g|_*: g=sum_{j in J} g_j, J finite, g_j in O(r_j,s_j) with finite norm, r_j>=r, s_j>=s, 0<rho<r, 0<sigma<s
SOURCE_QUANTIFIERS: D; r; K; alpha; L; Lambda; h; then (for |g|_*) s, J, g_j, r_j, s_j, rho, sigma
SOURCE_CONCLUSION: defines: (N1) |k·omega(I)|>=alpha for all I in D, k in Z_K\Lambda; (N2) |omega(I)-omega(I0)|_inf<=L|I-I0|_inf whenever I0 in D, I in V_rD, |I-I0|_inf<r; and |g|_*=sum_j (1/2)(rho/(r_j-r+rho)+sigma/(s_j-s+sigma))|g_j|_{r_j,s_j} (depends on the decomposition; equals |g|_{r,s} for J={1}). Item labels cond-nr, cond-L map to this node
CONSTANT_SCOPE: L, alpha, K are data of the setting (no dependence restriction); |g|_* depends on the chosen decomposition and on (rho,sigma)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:setting; shared Lean provider. There: KIND definition, contract bpN:p6:setting v1. Cited as \Nref{bpN:p6:cond-L}, \Nref{bpN:p6:cond-nr}, \Nref{bpN:p6:setting}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:setting; source topology ownership only.
```

### N:bpN:p6:telescope

```text
NODE: N:bpN:p6:telescope
KIND: external
TITLE: [N] Telescoping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:telescope
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U_0⊃U_1⊃...⊃U_{m+1} subsets of C^{2n}; Phi_i:U_{i+1}->U_i (0<=i<=m); Psi=Phi_0∘...∘Phi_m:U_{m+1}->U_0; for the last assertions every Phi_i holomorphic with (DPhi_i)^T J DPhi_i=J (resp. injective)
SOURCE_QUANTIFIERS: m; U_i; Phi_i; z in U_{m+1}; seminorm mu on C^{2n}
SOURCE_CONCLUSION: mu(Psi(z)-z)<=sum_{i=0}^m sup_{U_{i+1}} mu(Phi_i-id); Psi holomorphic with (DPsi)^T J DPsi=J; Psi injective if every Phi_i is
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:telescope; shared Lean provider. There: KIND lemma, contract bpN:p6:telescope v1. Cited as \Nref{bpN:p6:telescope}. Ownership confirmed against the published track-N graph docs/graph/N/DEPGRAPH.md, node bpN:p6:telescope; source topology ownership only.
```

### K:bp:p1:cauchy-strip

```text
NODE: K:bp:p1:cauchy-strip
KIND: external
TITLE: [K] Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:cauchy-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued
SOURCE_QUANTIFIERS: rho, delta, u; every ell
SOURCE_CONCLUSION: ||d_ell u||_{rho-delta} <= delta^-1 ||u||_rho and ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:cauchy-strip; shared Lean provider. There: KIND lemma, contract bp:p1:cauchy-strip v1. Cited as \Kref{bp:p1:cauchy-strip}.
```

### K:bp:p1:fourier-basic

```text
NODE: K:bp:p1:fourier-basic
KIND: external
TITLE: [K] Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 1 (standing, p1-analysis.tex L37-L39); v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:fourier-basic; shared Lean provider. There: KIND lemma, contract bp:p1:fourier-basic v1. Cited as \Kref{bp:p1:fourier-basic}.
```

### K:bp:p1:summation

```text
NODE: K:bp:p1:summation
KIND: external
TITLE: [K] Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 1 (standing, p1-analysis.tex L37-L39); (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite, rho > 0; (converse) u as in decay, 0<delta<rho
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:summation; shared Lean provider. There: KIND lemma, contract bp:p1:summation v1. Cited as \Kref{bp:p1:summation}.
```

### K:bp:p1:uniform-limits

```text
NODE: K:bp:p1:uniform-limits
KIND: external
TITLE: [K] Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:uniform-limits
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: for the V=T_r clauses only, n >= 1 and r > 0 (standing, p1-analysis.tex L37-L39); K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals
SOURCE_QUANTIFIERS: V,K_s,K,Lambda; sequence index s
SOURCE_CONCLUSION: K holomorphic on V and DK=Lambda; if V=T_r and all K_s primary (resp. real on reals) then K is primary (resp. real on reals)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:uniform-limits; shared Lean provider. There: KIND lemma, contract bp:p1:uniform-limits v1. Cited as \Kref{bp:p1:uniform-limits}.
```

## Unused-node deletions and complete coverage replacements

For each following ID, delete its complete NODE block from `P-imports.nodes.md`; do not replace it with another import or create an edge to make it reachable. Replace the matching ITEM with the following database fragment if retaining the import inventory. The documented writer prune operation may instead delete both records. No owner-graph record is changed.

### Delete NODE N:bpN:p3:ham-periodic

```text
ITEM: N:bpN:p3:ham-periodic
KIND: external
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/N/DEPGRAPH.md node bpN:p3:ham-periodic
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE N:bpN:p0:partial-sec#degenerateHamiltonian

```text
ITEM: N:bpN:p0:partial-sec#degenerateHamiltonian
KIND: external
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/N/DEPGRAPH.md node bpN:p0:partial-sec#degenerateHamiltonian
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE N:bpN:p0:partial-sec#fast

```text
ITEM: N:bpN:p0:partial-sec#fast
KIND: external
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/N/DEPGRAPH.md node bpN:p0:partial-sec#fast
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE K:bp:p0:domains#actionNbhd

```text
ITEM: K:bp:p0:domains#actionNbhd
KIND: external
SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/K/DEPGRAPH.md node bp:p0:domains#actionNbhd
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE K:bp:p0:domains#fundamentalDomain

```text
ITEM: K:bp:p0:domains#fundamentalDomain
KIND: external
SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/K/DEPGRAPH.md node bp:p0:domains#fundamentalDomain
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE K:bp:p1:iteration

```text
ITEM: K:bp:p1:iteration
KIND: external
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/K/DEPGRAPH.md node bp:p1:iteration
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

### Delete NODE N:bpN:p4:bracket

```text
ITEM: N:bpN:p4:bracket
KIND: external
SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L149-L153
DISPOSITION: EXCLUDED
REASON: unused import: no DEPS/ROUTES reference in any other track-P packet; outside the current track-P root dependency closure; source remains owned by docs/graph/N/DEPGRAPH.md node bpN:p4:bracket
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

## Checks and scope

Commands were run in report/read-only mode, without `--add` or `--prune`.

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P
P-imports: 88 imported nodes present, 81 referenced, 0 missing, 7 unreferenced
  UNREFERENCED K:bp:p0:domains#actionNbhd
  UNREFERENCED K:bp:p0:domains#fundamentalDomain
  UNREFERENCED K:bp:p1:iteration
  UNREFERENCED N:bpN:p0:partial-sec#degenerateHamiltonian
  UNREFERENCED N:bpN:p0:partial-sec#fast
  UNREFERENCED N:bpN:p3:ham-periodic
  UNREFERENCED N:bpN:p4:bracket

python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-imports --structural
P-imports: 88 nodes, 0 edges, 88 coverage items, 0 problems, 0 TODO records (not counted: --structural)

sha256sum -c docs/graph/P/IMPORTS.sha256
All nine listed files: OK
```

An independent in-memory comparison using `scripts/proof_depgraph.py` parsing and amendment application found 88/88 owner memberships, 82/88 exact effective four-field contracts, and exactly the six hypothesis differences listed above. The original owner NODE fields match all 88 imports, which explains why comparing only base records misses IMP-1. All locators agree. A separate scan of raw DEPS/ROUTES fields across every other `*.nodes.md` independently confirmed 81 referenced IDs and the same seven unused IDs. NOTE owner kind/contract/version matched 88/88; 15 owner frozen-anchor bindings matched manifest identity fields (path, export, anchor ID, ABI hash, contract ID/version). No manifest state fields were used in any judgment. Imports themselves are not anchors, so no P frozen declarations or Lean proof bodies were inspected.

Published ownership was checked against the I/N graph headers and their global-review references (`docs/graph/I/reviews/GLOBAL-review-3.md`, `docs/graph/N/reviews/GLOBAL-review-3.md`), not inferred from Lean state. The imported N-PARTIAL-CONVEX contract retains its stopped confinement quantifier, sign and fast exponents; N’s weighted norms retain geometric widths and 2π Fourier factors; I’s chart excludes circular/singular Delaunay loci while the separate Kepler-equation import includes e=0. No new change to those contracts is requested.

Input fingerprints (SHA-256):

```text
a1afac1b706a89d54436203586979af735e859fa9bca2b6afa5901c9b235af87  docs/graph/P/packets/P-imports.nodes.md
3c37fc2209a8907c9811a5c6d72075932e6bf5719a3e907cb00d5307f04fe7db  docs/graph/P/packets/P-imports.coverage.md
46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf  docs/graph/P/SPEC.md
85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207  docs/graph/P/REVIEW-BRIEF.md
bf82bf0146405c6c0c2c9a5cf2f87fbaa1afa120dc502d103a4806698415e574  docs/graph/K/DEPGRAPH.md
1ef3cc4e6a297b1922212ff1d5ddf6a94e2efb3b2a7350dab784842b5383151e  docs/graph/I/DEPGRAPH.md
015a24ad288b8edf39ece8ae103cbf36ab791e19523545a6b7016f279062ddaf  docs/graph/N/DEPGRAPH.md
b22b60acce213ab45b3d588f17191fa284facc1235fea2c52542ce33bceeab3d  blueprint/parts/p0-conventions.tex
```

## Suspected blueprint defects

No new suspected blueprint defect found in the imported statement spans. IMP-1 is a stale graph transcription of already explicit source conventions; IMP-2 is stale packet ownership metadata; IMP-3 is boundary housekeeping. Existing sourcegap/deviation text is not silently promoted to a proved Lean result. Historical publication/count statements in SPEC are stale documentation; this review follows the user’s published-owner ruling and the current 88-record packet.

No finding is assigned to another P slice. This review verifies import contracts and actual reference existence; it does not certify that every consuming P proof discharges the imported theorem’s premises (those are the consuming slices’ reviews).

READY rev-P-imports
