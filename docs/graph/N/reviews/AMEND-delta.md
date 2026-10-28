# Track N graph amendment: delta topology review

Reviewer: `sol-delta-N-amend`. Extractor/rewrite author: `sonnet-amend-N`, distinct from this reviewer.

Verdict: **FAIL** for accepting the whole amendment batch: **16 proposed nodes PASS, 5 FAIL; all 21 proposed coverage items PASS**. The separate import-exclusion check also PASSes. The failures concern derived facts assumed in three step contracts, missing general regularity inputs, one proof-template pointer, and one missing weighted-bracket package. Complete replacements below change only the failing fields.

Reviewed the current blueprint at `dbcf767` and graph amendment `b58352f`, not the pre-fix locators. Read DELTA-BRIEF, REVIEW-BRIEF and SPEC/convergence rules, the global-delta findings, all proposed node and coverage blocks in N-p1, N-p4, N-p11ab, N-p11c and N-p12, every consumer EDGE span, and the relevant owning prerequisite statements. Previously reviewed records are prerequisite context only. No proof-completion or whole-graph acceptance claim is made.

## GLOBAL-delta failures and SPEC

| Check | Verdict | Evidence |
| --- | --- | --- |
| GLOBAL-delta: unused K real-restriction import | PASS | The node is absent from all current packet nodes and has no DEPS/ROUTES consumers. The import inventory reports 15 present, 15 referenced, 0 missing, 0 unreferenced. Its imported coverage item is explicitly EXCLUDED. |
| K:bp:p1:real-restriction | PASS | Imported coverage at K Part 1 L1047–1051 is correctly EXCLUDED after the last consumer was removed; the source at Part 12 L30 explicitly declines the entire-strip theorem. |
| GLOBAL-delta: ef-en projection and Cauchy–Schwarz inputs | PASS | The new ef-en-split has direct ext-linalg and ext-norms edges at Part 11c L97 and L100. The parent consumes that substep. The two missing inputs identified by GLOBAL-delta are now represented; separate contract/input failures in the new records are listed below. |
| SPEC: ext-e-upper admission | PASS | SPEC L153 names bpN:p11:ext-e-upper, its inline e<2.72 input and the writer amendment. The packet external is now authorized; its stale request-for-revision note does not change topology. |

In each slice table, the spans include the current statement/proof and every distinct EDGE consumer locator. Part numbers denote `blueprint-N/parts/p*-*.tex`; imported K spans denote `blueprint/parts/p1-analysis.tex`.

## N-p1

Proposed nodes:

| ID | Verdict | Source spans re-read | Finding |
| --- | --- | --- | --- |
| stepN:p1:nc-decay | PASS | p1 L206–206 | the n=0 singleton branch now supplies the all-dimension contract; the K decay use is restricted to n≥1. The aggregate alternative remains owned by the existing parent routes. |
| stepN:p1:nc-sum | PASS | p1 L208–208 | the singleton sum is explicitly 1 at n=0; the K geometric sum applies only at n≥1. The per-coefficient estimate is supplied by nc-decay. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding |
| --- | --- | --- | --- |
| stepN:p1:nc-decay | PASS | `blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p1:nc-sum | PASS | `blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |

No replacement is required for this slice.

## N-p4

Proposed nodes:

| ID | Verdict | Source spans re-read | Finding |
| --- | --- | --- | --- |
| bpN:p4:n-zero | PASS | p4 L55–57; p4 L56–57; p4 L56–56 | a consumed claim rather than administrative exposition. The point, singleton Fourier coefficient, weight and norm identities follow exactly from the local definitions; K references describe the dimension contrast and are not proof inputs. |
| stepN:p4:co-series | PASS | p4 L78–80; p4 L79–79; p4 L80–80 | n-zero supplies the singleton case; positive dimension uses the stated K summability input. Uniform convergence, holomorphy and termwise coefficient integration retain their direct suppliers. |
| stepN:p4:co-repr | PASS | p4 L82–83; p4 L82–82; p4 L83–83 | the singleton representation is explicit, while reconstruction and uniqueness use the K results only in the positive-dimension branch. |
| stepN:p4:b1-a | PASS | p4 L98–99; p4 L98–98; p4 L99–99 | the n=0 bound is the one-term identity; finite-norm Fourier representation and the pointwise strip bound remain valid direct inputs. |
| stepN:p4:b1-b | PASS | p4 L101–103; p4 L101–101; p4 L102–102 | the singleton norm is bounded by M when n=0, with factor coth(πσ)^0=1. Positive dimension uses coefficient decay and the geometric sum; the supremum over actions is preserved. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding |
| --- | --- | --- | --- |
| stepN:p4:co-series | PASS | `blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L78-L80` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p4:co-repr | PASS | `blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L82-L83` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p4:b1-a | PASS | `blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L98-L99` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p4:b1-b | PASS | `blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L101-L103` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| bpN:p4:n-zero | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:n-zero@L55-L57` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |

No replacement is required for this slice.

## N-p11ab

Proposed nodes:

| ID | Verdict | Source spans re-read | Finding |
| --- | --- | --- | --- |
| stepN:p11:ad-prod | PASS | p11b L72–72 | the source now proves the factorial bound inside L72 from the nonnegative exponential series. No unsupported ext-num factorial contract remains; the iterated estimate and its packages are direct. |
| stepN:p11:co-series | PASS | p11b L96–96 | the admitted e-upper input now supplies the sharper numerical upper bound; the geometric majorant and uniform-limit/coefficient arguments match L96. |
| stepN:p11:co-remainder | PASS | p11b L97–97 | the new extended Taylor lemma applies on the actual trajectory domain, with regularity supplied by flow; the canonical Taylor and symplectic pointers are removed. e-upper supplies the decay constant. |
| bpN:p11:ext-taylor | PASS | p11b L75–81; p11b L82–86; p11b L83–83; p11b L84–84; p11b L85–85; p11b L76–76 | the general open-domain curve hypotheses, all-order derivative identity, integral remainder and two-function specialization match the source; the three proof steps supply them without a canonical-orbit premise. |
| stepN:p11:et-one | FAIL | p11b L83–83 | L83 also asserts continuity of the derivative. ext-restrict only preserves differentiability/C^k once supplied; it does not prove continuity of derivatives from holomorphy. Add the existing general holomorphic-regularity input for v and phi. |
| stepN:p11:et-ind | PASS | p11b L84–84 | holomorphic-regularity supplies holomorphic bracket derivatives and et-one supplies differentiation along the curve. The induction result is a conclusion, not an extra hypothesis. |
| stepN:p11:et-taylor | FAIL | p11b L85–85 | SOURCE_HYPOTHESES assumes the smoothness and derivative identity proved by et-ind; retain only the enclosing source assumptions and obtain them through the existing dependency. The final nested weighted-bracket identity also directly uses the missing wfield package. |
| bpN:p11:ext-e-upper | PASS | p11b L96–96 | the current SPEC explicitly admits this inline numerical external. e<2.72 implies e²<7.4, e²/8<0.925 and e²/9<0.823; the two consumer locators are correct. Its old note requesting a SPEC revision is superseded administrative text. |
| stepN:p11:tr-taylor | PASS | p11b L104–104 | ext-taylor supplies the pointwise identity on the extended open tube, and the hatted-loss estimate is supplied by co-remainder. No inapplicable Part 5 Taylor contract remains. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding |
| --- | --- | --- | --- |
| stepN:p11:ad-prod | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:co-series | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L96-L96` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:co-remainder | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L97-L97` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| bpN:p11:ext-taylor | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-taylor@L75-L81` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:et-one | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:et-ind | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-ind@L84-L84` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:et-taylor | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| bpN:p11:ext-e-upper | PASS | `blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-e-upper@L96-L96` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:tr-taylor | PASS | `blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L104-L104` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |

Complete replacements for this slice (all unmentioned fields and metadata remain verbatim):

```text
NODE: stepN:p11:et-one
KIND: step
TITLE: One derivative
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83
CONTRACT_ID: stepN:p11:et-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:ext-taylor; v holomorphic on Omega
SOURCE_QUANTIFIERS: v
SOURCE_CONCLUSION: d/dt v(gamma(t))=Dv(gamma)·X^c_phi(gamma)={v,phi}_c(gamma(t)), continuous in t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:ext-restrict, bpN:p11:wfield, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83 | holomorphic v is real-differentiable with derivative Dv (chain rule along the C^1 curve)
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83 | {v,phi}_c=Dv·X^c_phi (Definition wfield)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-one@L83-L83 | holomorphic v and phi have continuous holomorphic first derivatives, so Dv(gamma) times X^c_phi(gamma) is continuous
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:et-taylor
KIND: step
TITLE: Taylor
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85
CONTRACT_ID: stepN:p11:et-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:ext-taylor; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N>=1
SOURCE_CONCLUSION: the two displays: Taylor with integral remainder for real and imaginary parts of g at 0 evaluated at 1 and int_0^1 (1-t)^{N-1}/(N-1)! dt=1/N!; the second display is N=2 for h plus N=1 for f_0 with ad^2_phi h={{h,phi}_c,phi}_c
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:et-ind, K:bp:p1:ext-integral, bpN:p11:wfield
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:et-ind | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85 | g^(j)=(ad^j_phi u)∘gamma and smoothness
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85 | integration by parts / integral form of the remainder, one integration by parts per order
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:et-taylor@L85-L85 | ad^2_phi h={{h,phi}_c,phi}_c and the weighted bracket in the second Taylor display
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## N-p11c

Proposed nodes:

| ID | Verdict | Source spans re-read | Finding |
| --- | --- | --- | --- |
| stepN:p11:ef-en | FAIL | p11c L89–89; p11c L89–100; p11c L91–93; p11c L95–95; p11c L97–100 | the fb-real citation at L89 repeats only its local argument (i),(ii). The fb-real statement itself has the Part 12 centred-ball/perturbation data, unavailable for arbitrary h on V_r-tilde(I_c). Replace that pointer edge with the general holomorphic-regularity input actually used before scalar restriction. |
| stepN:p11:ef-en-energy | PASS | p11c L91–93; p11c L91–91; p11c L93–93 | extended energy conservation and the real-point weighted-norm bound yield the printed identity and A bound. The orbit and first-exit witness are legitimate local source data. |
| stepN:p11:ef-en-taylor | FAIL | p11c L95–95 | SOURCE_HYPOTHESES assumes the segment inclusion proved by ef-tube and the energy identity proved by ef-en-energy; those belong only in DEPS. The local C² claim also needs holomorphic-regularity before ext-restrict, whose contract does not create complex smoothness. |
| stepN:p11:ef-en-split | FAIL | p11c L97–100; p11c L97–98; p11c L100–100; p11c L97–97 | SOURCE_HYPOTHESES adds the preceding Taylor inequality, ef-adm bound and external projection identities as assumptions. They are proof ingredients already supplied by its DEPS. Preserve the local source hypotheses and witness definitions, removing only those assumed outputs. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding |
| --- | --- | --- | --- |
| stepN:p11:ef-en | PASS | `blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L100` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:ef-en-energy | PASS | `blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-energy@L91-L93` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:ef-en-taylor | PASS | `blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |
| stepN:p11:ef-en-split | PASS | `blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L100` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |

Complete replacements for this slice (all unmentioned fields and metadata remain verbatim):

```text
NODE: stepN:p11:ef-en
KIND: step
TITLE: Energy inequality
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L100
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
DEPS: stepN:p11:ef-en-energy, stepN:p11:ef-en-taylor, stepN:p11:ef-en-split, bpN:p1:ext-restrict, bpN:p7:resonance-data, bpN:p4:norm, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:wfield, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ef-en-energy | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L91-L93 | substep: energy identity and bound A
EDGE: stepN:p11:ef-en-taylor | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L95-L95 | substep: Lagrange Taylor along the fast segment
EDGE: stepN:p11:ef-en-split | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L97-L100 | substep: projection split and the 5/16 bound
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | h_R=h¦_U is C^infty on U by restriction of scalars (holomorphic on V_r-tilde(I_c), real on real points)
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | U, m, Q=D^2 h_R, omega, the projection Pi and delta of the resonance data
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | extended-class norm of g and f_* (zeta_g, eta) in the data of the lemma
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | extended phase space W^e_r-tilde and class O^e
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | extended real Hamiltonian H-tilde^R and orbit carrier
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | X^c_{H-tilde^R}, the orbit of the extended field
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the repeated local argument uses smoothness of holomorphic h on the arbitrary open action tube before restriction of scalars; fb-real(i),(ii) is the proof template, not an applicable centred-ball statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-delta-N-global+sonnet-amend-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Parent of ef-en-energy, ef-en-taylor, ef-en-split (G3). The inequality is proved directly in the extended phase space; Lemma bpN:p7:energy-core is NOT applied (it concerns canonical orbits of h_R(I)+g+f in R^n x R^n with g,f independent of the slow pair), so there is no edge to it, and only its argument is repeated along the fast action segment. The direct proof also uses projection algebra (self-adjointness, Pi+Pi^perp=1: bpN:p7:ext-linalg) and Euclidean Cauchy-Schwarz (bpN:p1:ext-norms); these uses are recorded at the substep ef-en-split, resolving the GLOBAL-delta FAIL.
```

```text
NODE: stepN:p11:ef-en-taylor
KIND: step
TITLE: Taylor along the fast segment
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95
CONTRACT_ID: stepN:p11:ef-en-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the contradiction branch with the constructed first-exit time t*; Delta=¦Delta I¦_2=r-tilde/4, I_sigma=I-tilde(0)+sigma Delta I, omega_0=omega(I-tilde(0)), Q=D^2 h_R; Q>=m on U; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: sigma in [0,1]
SOURCE_CONCLUSION: phi(sigma)=h_R(I_sigma) is C^2 with phi'(0)=<omega_0,Delta I>, phi''(sigma)=Q(I_sigma)[Delta I,Delta I]>=m Delta^2; Lagrange Taylor gives phi(1)-phi(0)-phi'(0)=(1/2)phi''(xi)>=(m/2)Delta^2, and with phi(1)-phi(0)<=A: (m/2)Delta^2<=A-<omega_0,Delta I>
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ef-tube, stepN:p11:ef-en-energy, bpN:p7:ext-taylor, bpN:p1:ext-restrict, bpN:p7:resonance-data, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | I_sigma in U for sigma in [0,1]
EDGE: stepN:p11:ef-en-energy | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | the energy identity gives phi(1)-phi(0)<=A
EDGE: bpN:p7:ext-taylor | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | Lagrange form of Taylor along the segment
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | phi is C^2 as h_R is C^infty on U
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | Q>=m on U (hypothesis on U)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-taylor@L95-L95 | holomorphic h on the open fast-action tube is C^infty; restriction of scalars then supplies the C^2 real function along I_sigma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Substep of ef-en (G3): one-variable Lagrange Taylor along the fast action segment.
```

```text
NODE: stepN:p11:ef-en-split
KIND: step
TITLE: Splitting
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L100
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L100
CONTRACT_ID: stepN:p11:ef-en-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the contradiction branch with the constructed first-exit time t*; Delta=¦Delta I¦_2=r-tilde/4, I_sigma=I-tilde(0)+sigma Delta I, omega_0=omega(I-tilde(0)), Q=D^2 h_R; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: Delta
SOURCE_CONCLUSION: <omega_0,Delta I>=<Pi omega_0,Delta I>+<omega_0,Pi^perp Delta I>, so (m/2)Delta^2<=A+¦<Pi omega_0,Delta I>¦+C, C=¦<omega_0,Pi^perp Delta I>¦; ¦<Pi omega_0,Delta I>¦<=(5/4)delta Delta<=(5/64)m r-tilde Delta=(5/16)m Delta^2 (r-tilde=4 Delta); hence (3/16)m Delta^2<=A+C and (3/16)m Delta^2=3 m r-tilde^2/256>0.0117 m r-tilde^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ef-en-taylor, stepN:p11:ef-adm, bpN:p7:ext-linalg, bpN:p1:ext-norms, bpN:p7:resonance-data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ef-en-taylor | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L98 | the inequality (m/2)Delta^2<=A-<omega_0,Delta I> being split
EDGE: stepN:p11:ef-adm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L100-L100 | ¦Pi omega_0¦_2<=(5/4)delta
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L97 | self-adjointness of Pi and Pi^perp=1-Pi split the linear term
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L100-L100 | Euclidean Cauchy-Schwarz ¦<Pi omega_0,Delta I>¦<=¦Pi omega_0¦_2 Delta
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en-split@L97-L100 | Pi, delta, m of the resonance data (delta<=m r-tilde/16)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Substep of ef-en (G3): projection algebra (ext-linalg) and Euclidean Cauchy-Schwarz (ext-norms); resolves the GLOBAL-delta FAIL on ef-en.
```

## N-p12

Proposed nodes:

| ID | Verdict | Source spans re-read | Finding |
| --- | --- | --- | --- |
| stepN:p12:fb-real | PASS | p12 L30–30 | general open-domain holomorphic regularity, real inclusion and restriction of scalars prove the local derivative equality on W_0; the standing analytic data supply the h conversion. No entire-strip extension or old K real-restriction import is used. |

Proposed coverage:

| Item ID | Verdict | Source span re-read | Finding |
| --- | --- | --- | --- |
| stepN:p12:fb-real | PASS | `blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30` | NODE disposition identifies the actual labelled unit or inline numerical input; no claimed proof closure is inferred. |

No replacement is required for this slice.

## Scope, source evidence and limits

The G1 singleton source case replaces the positive-dimension K strip lemmas only at n=0; at n≥1 their owning convention and hypotheses apply. K Part 1 L37–39, L727–734, L757–768, L786–789 and L824–831 were read against Part 1 L198–208 and Part 4 L34–103. These are dimension cases, not alternative derivations to be split into route nodes. The existing aggregate alternative of norm-convert remains with its existing routes.

For G2/G3, Part 12 L18–30 and Part 11c L78–100 were checked with the generic external at Part 1 L24–26, K holomorphic-regularity L227–236, Part 7 L18–20, and the real-system/weighted-field packages (Part 11c L4–17; Part 11a L48–56). The new energy decomposition supplies the two original GLOBAL-delta missing inputs. The remaining ef-en correction preserves the blueprint's local proof: fb-real(i),(ii) is a template to repeat, not a conditional theorem applicable on a different tube. General holomorphic regularity followed by scalar restriction is already the source's repeated argument; no new mathematical assumption or bridge proof is invented.

For G4, Part 11b L65–105 was re-read with its general extended-class and flow data L4–18, L40–63, Part 4's uniform-limit/series externals L23–29 and B.1 L88–104, Part 6 numerical input L22, and K integral input L82–86. The source now supplies a weighted extended Taylor lemma and the factorial calculation. Its scalar integral remainder follows by the stated integration-by-parts argument using FTC; the new lemma's Part 5 citation is provenance only. At its consumers the actual extended trajectory lies in the declared open holomorphy domain, so the earlier canonical-carrier SOURCE_GAP is no longer needed. The numerical e-upper external, now admitted by SPEC, supplies the former decimal-bound gaps. No Lean implementation or Mathlib source was inspected.

No new suspected blueprint defect or pinned-paper erratum is asserted. The FAILs are graph records of available source proofs; their replacements do not change the blueprint or any frozen statement. Other previously reviewed nodes and their retained SOURCE_GAP notes are outside this amendment's pending-record scope.

## Validation

- Current corpus pins: all 15 entries OK. Import pins: all four entries OK.
- Exact proposed inventory: 21 nodes and 21 coverage items across the five assigned slices; every record has its own verdict row. The requested pruned-import disposition is checked separately.
- Every pending DEPS target agrees with its EDGE target inventory and exists; current statement, proof, EDGE and coverage ranges resolve within the raw source files.
- Five complete node replacements, grouped under their owning slice headings. Field comparison permits only SOURCE_HYPOTHESES and/or DEPS/EDGE as identified above; all other fields are verbatim. No replacement adds a desired conclusion as a hypothesis.
- Corrected in-memory overlay: all 728 nodes reachable from the six roots; no missing targets or cycles; DEPS/ROUTES agree with EDGE inventories. No packet was modified. Per-slice read-only applicator checks find exactly the five replacements (2 in N-p11ab, 3 in N-p11c), zero additions and zero unresolved FAILs. The applicator counts duplicate PASS IDs across the node and coverage tables; the inventory checks count their separate records correctly.
- Only this report was written. No packet, source, SPEC, frozen file or manifest was edited; no Lean build, implementation read or state-changing git command was run.

Packet snapshot SHA256:

- `docs/graph/N/packets/N-p1.nodes.md`: `09b18e05ebc49ccbaa00f639bf25df664823d81c01be0261fbda92cbffd1b483`
- `docs/graph/N/packets/N-p1.coverage.md`: `1b5184bb26121cb33670863d5187849aa5a4911022c595d6b119a7bbc9eaf3fd`
- `docs/graph/N/packets/N-p4.nodes.md`: `fbeeea47c94fd662c69ae81a2de661312449ca089770a532e2795da2c0e1bf59`
- `docs/graph/N/packets/N-p4.coverage.md`: `377bebd836876d68a4eb0beb2206995985e84092ff8c098cfdc6f1e0567bbd7c`
- `docs/graph/N/packets/N-p11ab.nodes.md`: `a96e7e00e1a0aea22a8c5a95da18a55351cb41bb23152630b399e6b0b6fdfb60`
- `docs/graph/N/packets/N-p11ab.coverage.md`: `fd7d41b9811a19526c9143e6d18e8732f7b3582447a0f70cce1f21ad36ba22cf`
- `docs/graph/N/packets/N-p11c.nodes.md`: `955f1ade325995feedae82c7718b48a0496f46f07ae600cfe3a52f7bdac2c645`
- `docs/graph/N/packets/N-p11c.coverage.md`: `35390b888ff9ca0957363722df371e2cdb98a8b2dd108d1e8f3180787c7600c7`
- `docs/graph/N/packets/N-p12.nodes.md`: `8c88b55e7819072da99cefb08952961e0e65740adb073f5e67462a36101a1ead`
- `docs/graph/N/packets/N-p12.coverage.md`: `ef645e7fdc9b1bd8d03d52b311667f94e85c2967ee5c5d4bf5d277db22817060`
