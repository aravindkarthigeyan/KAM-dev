# N-p12 slice topology review

**Verdict: FAIL.** Reviewer: `sol-review-N-g`. Marker: `rev-N-g`.

The four D28 anchor identities and source statements match their frozen declarations. Both roots select the correct Part 12 proof families and neither theorem depends on the other. The packet needs direct package edges, source-field/locator corrections, and an explicit decomposition of the local C1-dependence proof. This verdict concerns source topology, not implementation or Lean proof status.

Scope: Part 0 L341–406, all 309 lines of Part 12, the two mathematical reviews, the slice node/coverage packets, relevant N-imports records and raw prerequisite statements. Working directory `/root/code/KAM-inp`; initial HEAD `b0116d3e97fb94539bfa61d903765a753c3ecccd`. Read AGENTS.md, PLAN.md, DECISIONS.md, REVIEW-BRIEF.md in full and SPEC.md including its D28 paragraph. Only this report is authored. Existing unrelated modified files are left alone. No Lean, build, ABI process, state-changing git or network lookup was run.

## Snapshot

| Input | SHA-256 |
|---|---|
| `docs/graph/N/SPEC.md` | `dce26cb6cce275d6f182e52a5c558684f7b6733b16497c6b3c345003e7e26b6c` |
| `docs/graph/N/REVIEW-BRIEF.md` | `f6e833d22822e13fda3a05fcc43ac63869379c29c3e0211e8ef0790db3e4005f` |
| `docs/graph/N/packets/N-p12.nodes.md` | `c0e7aca341c9a573305a1393c52af470634ae0e97eca97d11ae96e3906063fd6` |
| `docs/graph/N/packets/N-p12.coverage.md` | `311a9175a998dfb9ad546aae565bd1a58034a5fdd63ef5efe053d1d8c3e677da` |
| `blueprint-N/parts/p0-conventions.tex` | `7872daf0bb0ba79e7cb48c79228057e021f432cca2a22d17217ffc1d1c2faaaa` |
| `blueprint-N/parts/p12-averaging.tex` | `4de4e8b8551f1cc57abee32d257239d9cff1f324f1045ef59b032621f6f2a4d0` |

The p0/p12 hashes match CORPUS.sha256. Current L38 incorporates the round-2 finite-subcover correction. Actual packet counts are 89 nodes, 321 edges and 122 coverage items, superseding the SPEC table's pre-extraction counts. Manifest comparison used id/path/export/contract/ABI fields only; no state field was used.

## Findings

**F1 — major: root constant-selection dependencies.** MEAN has exactly the six appropriate `me-*` proof-step edges; MOST has the appropriate two `mo-*` edges. Their wrappers also choose constants at p12 L275 and L250. Add direct edges to `s-mean#data` and `s-most#data`. Reaching these packages only through a child does not meet SPEC's explicit package rule. Keep the absence of MOST→MEAN and preserve the frozen statements. The new edges supplement the correct proof steps; they do not make either theorem a hypothesis of the other.

**F2 — major: omitted direct section-data and analytic-use edges.** SPEC says a node depends on a package whenever its own statement or proof uses that package's objects or constants, even without a reference. Numerous records use R,s,G,rho, Fourier data, maximal-flow symbols, Psi or the selected constants but list only a theorem that transitively reaches that package. Every failed row below names the missing direct edges; complete replacements supply use-site evidence. Additional direct uses include the action equation in the coefficient-variation bound, Q's definition, product measure at the final transport equality, and the already admitted fundamental theorem for integration of the corrector equations. These are consumer uses, not edges added merely because a result appears earlier.

**F3 — major: proof ingredients and constant scope in source fields.** SOURCE_HYPOTHESES of `wreg`, `identity`, `pointwise`, `envelopes` and `stopped` add, respectively, the proved coefficient, regularity, corrector-identity, shell and envelope estimates as new premises. The labelled statements do not posit those estimates as additional hypotheses. Keep these results in DEPS. References that actually select notation, such as sigma or the corrector definitions, remain data. The flow record combines inherited epsilon>0 with epsilon≥0 and loses the explicitly allowed zero-size case. The constant-selection packages inherit an already chosen positive epsilon before A is selected. Correct these scopes without changing the frozen targets. The averaged remark also omits its stated time/rank-preserving conversion and the analytic context of its averages application.

**F4 — major: ext-dep is correctly a claim, but its proof is not a leaf.** L37 calls this an “infrastructure lemma, to be proved separately” and explicitly constructs trapping data, Picard families, derivative iterates, a linear Volterra fixed point and the limit derivative. `DEPS: -` plus one coverage item hides substantive obligations. The proposed child nodes expose them. Three inputs are represented as SOURCE_GAP steps pending a source proof or admitted exact input: complete-metric Banach at the bounded-family carrier, differentiation of a real C1 parameter integral, and uniform derivative limits for a sequence on an open real ball. The existing N7 Banach item is only finite-dimensional; it cannot be applied to the family space. The general theorem is stated at K's `bp:p1:ext-banach`, but is not an N import. Importing it requires the writer's explicit SPEC/import action, not a silent new external. `ext-tsum` is not the sequence derivative-limit theorem: uniform convergence of derivatives does not imply summability of their telescoping differences. This is proof-input accounting, not a counterexample to local C1 dependence. No averaging premise may be added.

**F5 — moderate: locators and definition completeness.** All three avg-sec#data EDGE ranges miss the actual uses: H is at p0 L349–350, the averaged orbit at L350, error at L350–351. The quantifier field leaves h,f free. The corrector record names the envelopes without their defining formulas and Borel assertion, though downstream nodes use these formulas. Its inline regularizer proof also needs a proof locator. Finally `fb-real → s-flow#data` is unnecessary: the pointwise real-partial calculation uses the standing definitions at L18–24, not the future maximal-flow construction.

Each finding was checked again against the raw use and actual prerequisite types. Transitive reachability does not refute a missing direct package edge under SPEC. The proposed source-gap nodes preserve unrepresented proof inputs; they do not admit new axioms. Rewritten nodes require a different delta reviewer.

## Requested extraction choices

- **ext-dep external→claim: correct.** Keep KIND claim and its inline proof source. Remove the option to revert it casually to external. F4 concerns the missing internal topology.
- **averaged kept only for avg-sec#data: correct.** P0 L350 uses J(t)=I0 to explain the averaging error. The current only incoming edge is that data package; the coefficient argument independently proves the zero mode. This remains acyclic because s-setting explicitly states the fixed hypotheses instead of depending on the MEAN theorem. Its record still needs F3/F5 details.
- **deleted fl-symp→p5:symplectic: correct.** P12 L66 reproduces the real matrix calculation from DF=JS and its own variational equation, then uses continuity to select determinant +1. P5's normalized small holomorphic flow hypotheses are not supplied here. The parenthetical pointer to its computation is explanatory, not a black-box application. Keep the direct Schwarz/variational inputs and the local calculus dependency below. Do not add P5's setting/flow to this proof closure.

## Per-node verdicts

p0/p12 abbreviate the pinned TeX files. Listed spans cover each statement and proof re-read; prerequisite statements were read in N Parts 1/3/4/5/7 and the owning K analysis source. A parent's FAIL reflects its own record defect, not propagation of a child's FAIL. PASS means topology/source-record fidelity only.

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bpN:p0:avg-sec#data` | FAIL | p0 L343-L351 | F5: three use-site locators miss their actual formulas; h,f missing from quantifier field. |
| `bpN:p0:avg-rank#HasAveragingFrequencyRank` | PASS | p0 L353-L362 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p0:avg-error#averagingError` | PASS | p0 L364-L370 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p0:avg-totality` | PASS | p0 L372-L382 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p0:avg-mean` | FAIL | p0 L384-L396, p12 L277-L289 | F2: missing bpN:p12:s-mean#data (constant choices epsilon_0=1 and A=13A_1 precede epsilon and Phi). |
| `bpN:p0:avg-most` | FAIL | p0 L398-L406, p12 L268-L271 | F2: missing bpN:p12:s-most#data (constant choices epsilon_0=1, eta_0=R/8 and A=A_1 precede epsilon and eta). |
| `bpN:p12:s-setting#data` | FAIL | p12 L18-L24 | F2: missing bpN:p0:vf#hamiltonianVectorField (F=X_H uses the frozen vector-field definition). |
| `bpN:p12:fbounds` | PASS | p12 L26-L28, p12 L29-L31 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:fb-poly` | PASS | p12 L30-L30 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:fb-cauchy` | FAIL | p12 L30-L30 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:fb-real` | FAIL | p12 L30-L30 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F5: the future maximal-flow package is not used by the pointwise real-partial calculation; s-setting suffices. |
| `bpN:p12:ext-cov` | PASS | p12 L35-L35 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:ext-tsum` | PASS | p12 L36-L36 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:ext-dep` | FAIL | p12 L37-L37 | F4: dependency-free leaf hides the inline construction and limit-identification obligations; constant dependence omits W.; F2: missing bpN:p12:ext-dep#picard (substantive inline proof obligation).; F2: missing bpN:p12:ext-dep#linear (substantive inline proof obligation).; F2: missing bpN:p12:ext-dep#identify (substantive inline proof obligation). |
| `bpN:p12:ext-markov` | PASS | p12 L38-L38 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:ext-markov#compact-max` | FAIL | p12 L38-L38 | F2: missing bpN:p12:ext-markov (existence of each compact-time maximum).; F2: missing bpN:p3:ext-compact (finite subcover of the real compact interval). |
| `bpN:p12:averaged` | FAIL | p12 L42-L44 | F3: omitted conversion/rank-preservation clause and analytic context of the imported averages application. |
| `bpN:p12:s-flow#data` | FAIL | p12 L48-L48 | F2: missing bpN:p3:gen-sol (the IsSolIn predicate defines the maximal-flow solution).; F3: inherited epsilon>0 contradicts the stated epsilon≥0 scope. |
| `bpN:p12:flow` | FAIL | p12 L50-L58, p12 L59-L69 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:fl-short` | FAIL | p12 L60-L60 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:fl-chain` | FAIL | p12 L62-L62 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:fl-inverse` | FAIL | p12 L64-L64 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:fl-symp` | FAIL | p12 L66-L66 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p3:ext-calc (zero derivative implies constancy of Y-transpose J Y on the interval). |
| `stepN:p12:fl-transl` | FAIL | p12 L68-L68 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:exit` | PASS | p12 L71-L76, p12 L77-L83 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:ex-exit` | PASS | p12 L78-L78 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:ex-g` | FAIL | p12 L80-L80 | F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing stepN:p12:ex-exit (tube displacement bound through a finite first exit). |
| `stepN:p12:ex-open` | FAIL | p12 L82-L82 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:s-data#data` | PASS | p12 L87-L87 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:coef` | PASS | p12 L89-L91, p12 L92-L97 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:co-a` | FAIL | p12 L93-L93 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:co-b` | FAIL | p12 L94-L94 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:co-c` | FAIL | p12 L95-L95 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:co-d` | FAIL | p12 L96-L96 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `bpN:p12:corrector` | FAIL | p12 L99-L110 | F5: missing literal envelope formulas and Borel assertion; inline justification needs a proof locator. |
| `bpN:p12:wreg` | FAIL | p12 L112-L120, p12 L121-L129 | F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data).; F3: remove proved ingredient from SOURCE_HYPOTHESES; keep its proof dependency. |
| `stepN:p12:wr-smooth` | FAIL | p12 L122-L122 | F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:wr-ac` | FAIL | p12 L124-L124 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data).; F2: missing bpN:p12:fbounds (the stated specialization v=partial_I f uses the 2/s bound). |
| `stepN:p12:wr-b` | FAIL | p12 L126-L126 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:wr-d` | FAIL | p12 L128-L128 | F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `bpN:p12:lambda` | PASS | p12 L135-L138, p12 L139-L142 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:la-inj` | PASS | p12 L140-L140 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:la-cpt` | PASS | p12 L141-L141 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:slab` | PASS | p12 L144-L148, p12 L149-L159 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:sl-cover` | PASS | p12 L152-L152 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:sl-box` | FAIL | p12 L154-L154 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:sl-sum` | PASS | p12 L156-L156 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:sl-k` | FAIL | p12 L158-L158 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:shells` | PASS | p12 L165-L172, p12 L173-L178 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:sh-shells` | PASS | p12 L174-L174 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:sh-i` | FAIL | p12 L175-L175 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:sh-ii` | FAIL | p12 L176-L176 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:sh-iii` | FAIL | p12 L177-L177 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `bpN:p12:envelopes` | FAIL | p12 L180-L185, p12 L186-L190 | F3: remove proved ingredient from SOURCE_HYPOTHESES; keep its proof dependency. |
| `stepN:p12:en-term` | FAIL | p12 L187-L188 | F2: missing bpN:p12:s-data#data (f_k,beta_k,e_k or q_k are the section-defined Fourier data). |
| `stepN:p12:en-choice` | FAIL | p12 L189-L189 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:identity` | FAIL | p12 L194-L198, p12 L199-L203 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:corrector (corrector or envelope formulas used here).; F3: remove proved ingredient from SOURCE_HYPOTHESES; keep its proof dependency. |
| `stepN:p12:id-eq` | FAIL | p12 L200-L200 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:id-chain` | FAIL | p12 L201-L201 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:corrector (corrector or envelope formulas used here).; F2: missing bpN:p3:ext-calc (chain rule for w composed with the solution). |
| `stepN:p12:id-div` | FAIL | p12 L202-L202 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing K:bp:p1:ext-integral (fundamental theorem integrates the two derivative equations). |
| `bpN:p12:pointwise` | FAIL | p12 L205-L208, p12 L209-L216 | F3: remove proved ingredient from SOURCE_HYPOTHESES; keep its proof dependency. |
| `stepN:p12:pw-lambda` | FAIL | p12 L211-L212 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing stepN:p12:id-eq (dot I=epsilon a supplies the action speed bound).; F2: missing K:bp:p1:ext-integral (integrate and bound the derivative of each u_k along I).; F2: missing bpN:p12:ext-markov (sum the nonnegative integral bounds). |
| `stepN:p12:pw-q` | FAIL | p12 L213-L213 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:corrector (corrector or envelope formulas used here).; F2: missing bpN:p12:identity (Q is defined by the identity lemma notation). |
| `stepN:p12:pw-sum` | FAIL | p12 L214-L215 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |
| `bpN:p12:s-trans#data` | PASS | p12 L220-L220 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:transport` | PASS | p12 L222-L225, p12 L226-L230 | Source fields, locators and direct uses match; no local defect found. |
| `stepN:p12:tr-cov` | FAIL | p12 L227-L227 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:tr-cells` | FAIL | p12 L228-L228 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |
| `stepN:p12:tr-sum` | FAIL | p12 L229-L229 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing K:bp:p1:ext-measure (product measure and unit-cell volume give the integral over G). |
| `bpN:p12:s-trans#psi` | PASS | p12 L232-L234 | Source fields, locators and direct uses match; no local defect found. |
| `bpN:p12:stopped` | FAIL | p12 L236-L239, p12 L240-L246 | F2: missing bpN:p12:envelopes (A_1 directly uses c_Phi and c_W defined in envelopes).; F3: remove proved ingredient from SOURCE_HYPOTHESES; keep its proof dependency. |
| `stepN:p12:st-meas` | FAIL | p12 L241-L241 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:corrector (corrector or envelope formulas used here). |
| `stepN:p12:st-pt` | FAIL | p12 L242-L242 | F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |
| `stepN:p12:st-int` | FAIL | p12 L243-L245 | F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:corrector (corrector or envelope formulas used here). |
| `bpN:p12:s-most#data` | FAIL | p12 L250-L250 | F3: remove epsilon from the data fixed before the constant choice. |
| `bpN:p12:good` | FAIL | p12 L252-L254, p12 L255-L257 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:bad` | FAIL | p12 L259-L261, p12 L262-L266 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |
| `stepN:p12:bd-exit` | FAIL | p12 L263-L263 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |
| `stepN:p12:bd-stay` | FAIL | p12 L264-L264 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-most#data (the most-section T,eta,rho=eta_0 are used here). |
| `stepN:p12:bd-concl` | FAIL | p12 L265-L265 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-most#data (the most-section T,eta,rho=eta_0 are used here). |
| `stepN:p12:mo-E` | FAIL | p12 L269-L269 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-trans#psi (Psi is the section-defined stopped functional). |
| `stepN:p12:mo-z` | FAIL | p12 L270-L270 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `bpN:p12:s-mean#data` | FAIL | p12 L275-L275 | F3: remove epsilon from the data fixed before the constant choice. |
| `stepN:p12:me-flow` | FAIL | p12 L278-L278 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here). |
| `stepN:p12:me-cont` | FAIL | p12 L280-L280 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-mean#data (the supplied Phi and fixed epsilon are the mean-section data).; F2: missing bpN:p12:ext-markov (boundedness and attainment on compact time and K). |
| `stepN:p12:me-good` | FAIL | p12 L282-L282 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-most#data (the most-section T,eta,rho=eta_0 are used here).; F2: missing bpN:p12:s-mean#data (the supplied Phi and fixed epsilon are the mean-section data). |
| `stepN:p12:me-bad` | FAIL | p12 L284-L284 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-most#data (the most-section T,eta,rho=eta_0 are used here).; F2: missing bpN:p12:s-mean#data (the supplied Phi and fixed epsilon are the mean-section data).; F2: missing bpN:p12:s-trans#psi (Psi is the section-defined stopped functional). |
| `stepN:p12:me-mean` | FAIL | p12 L286-L286 | F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here).; F2: missing bpN:p12:s-most#data (the most-section T,eta,rho=eta_0 are used here).; F2: missing bpN:p12:s-trans#psi (Psi is the section-defined stopped functional). |
| `stepN:p12:me-markov` | FAIL | p12 L288-L288 | F2: missing bpN:p12:s-setting#data (standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here).; F2: missing bpN:p12:s-flow#data (maximal flow Phi_t, I(t,x), Omega_t or T_± used here). |

Current-node totals: 89 reviewed; 66 FAIL, 23 PASS. Six new F4 nodes below are reviewer-authored proposals, not independently accepted nodes.

## Failed coverage items

| Coverage item | Verdict | Source | Reason |
|---|---|---|---|
| `bpN:p12:ext-dep` | FAIL | p12 L37 | F4: the one-node disposition hides the Picard, Volterra, parameter-integral and derivative-identification obligations and their unrepresented inputs. |

**All other coverage items PASS.** Outlines, source/provenance notes and administrative remarks are correctly excluded. The prose at L18–24, L48, L87, L220, L232–234, L250 and L275 has explicit data owners. L133 sphere/norm notation and L163 logarithm notation are mapped to consumers. Node-field or edge corrections do not by themselves invalidate a coverage mapping to the correct node. Sourcegap-L395 and sourcegap-L405 map to the actual pointwise/transport/stopped and bad-data/constant-choice bridges; the administrative errata remark is not an extra root input.

## Suspected blueprint defects and source limits

1. P12 L36, X2, says “If sum sup |D g_k| < infinity locally uniformly and sum g_k converges, then sum g_k is C1”. It does not explicitly require C1 summands. If only differentiability is intended, one nonzero term g(x)=x² sin(1/x), g(0)=0 on (-1,1) has bounded derivative but discontinuous derivative at zero. Its one-term series satisfies the written domination and is not C1. Actual wreg summands are C1 at L122, so this does not refute averaging. The ext-tsum graph record faithfully copies the source; do not silently add a premise. Clarify the intended C1-term convention before using this external at weaker generality.
2. P12 L82 calls D intersect nonnegative times “open”; the intended property is relative openness in the nonnegative-time space. The exit statement and graph context retain the relative domain. This is harmless wording, not an additional topology failure.
3. F4 concerns the proof inputs left implicit by the infrastructure sketch. It does not reopen the fixed inverse sign, resonant regularizer guards, coefficient domain, adjoint proof or compact-time maximum. No frozen-statement defect was found. No primary paper was re-audited; E-NAVG-NEI-17 is previously recorded provenance, without a new ledger classification here.

## Replacement node blocks

Complete database blocks follow for every failed current node and the six added F4 nodes. Frozen identity/source-statement fields on the two theorem anchors remain unchanged. Apply only through the writer and request independent delta review. Resolving/admitting the missing inputs is a separate SPEC/import action.

```text
NODE: bpN:p0:avg-sec#data
KIND: definition
TITLE: D28 notation: phase points, max norms, unnormalised volume, H_ε, averaged orbit
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-sec#data@L343-L351
PROOF_SOURCE: -
CONTRACT_ID: bpN:p0:avg-sec#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing: phase point x=(θ,I)∈ℝⁿ×ℝⁿ; ε>0
SOURCE_QUANTIFIERS: n; h : ℂⁿ→ℂ; f : ℂⁿ×ℂⁿ→ℂ; ε>0; phase point x=(θ,I); a trajectory with initial action I_0 when describing its error
SOURCE_CONCLUSION: defines the notation of the D28 statements: phase point x=(θ,I), action x.2=x_2=I, max norms, vol = Lebesgue measure on ℝⁿ×ℝⁿ (unnormalised), H_ε = H_{h,εf} = Re(h(I)+εf(θ,I)) as realHamiltonian with perturbation w↦(ε:ℂ)f(w), averaged action orbit J(t)≡I_0, error sup_{0≤t≤1/ε}¦I(t)−I_0¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:realH#realHamiltonian, bpN:p0:avg-error#averagingError, bpN:p12:averaged
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-sec#data@L349-L350 | H_ε is Definition realH with the perturbation w↦ε f(w)
EDGE: bpN:p0:avg-error#averagingError | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-sec#data@L350-L351 | the error of the averaging method is the sup defining averagingError
EDGE: bpN:p12:averaged | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-sec#data@L350-L350 | the averaged action orbit J(t)≡I_0 (Remark averaged)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data for coverage item p0:prose-L343-L351; consumers: avg-mean, avg-most (the symbols vol, H_{h,εf}, x_2, max norm)
```

```text
NODE: bpN:p0:avg-mean
KIND: theorem
TITLE: N-AVERAGING-MEAN: mean error and Markov form
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L384-L396
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L277-L289
CONTRACT_ID: nekhoroshev.d28.averaging_mean
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥2; R,s>0; h:ℂⁿ→ℂ, f:ℂⁿ×ℂⁿ→ℂ with IsAnalyticIntegrable R s h, IsAnalyticPerturbation R s 1 f, HasAveragingFrequencyRank B(0,R) h; K⊂ℝⁿ×ℝⁿ compact with x_2∈B(0,R/2) for all x∈K; for each ε and Φ: ∀x∈K, Φ x 0 = x and IsSolutionOn H_{h,εf} B(0,R) [0,1/ε] (Φ x) (premise: only existence and typing on [0,1/ε], no error bound, no exceptional set)
SOURCE_QUANTIFIERS: n,R,s,h,f,K and their hypotheses; ∃ A,ε_0>0; ∀ ε∈(0,ε_0]; ∀ Φ with the flow premise; (integrable and lintegral bound) ; ∀ κ>0 ∃ measurable E⊂K
SOURCE_CONCLUSION: e^Φ_ε := averagingError ε Φ is integrable on K; ∫⁻_K ofReal(e^Φ_ε(x)) dx ≤ ofReal(A√ε); and ∀κ>0 ∃ measurable E⊂K with vol E ≤ κ and ¦(Φ x t)_2−x_2¦ ≤ A√ε/κ for all x∈K∖E, t∈[0,1/ε]
CONSTANT_SCOPE: A,ε_0 depend only on n,R,s,h,f,K (the fixed data) and not on ε,Φ,κ,E; ε,Φ then κ,E chosen after A,ε_0; vol = unnormalised Lebesgue measure on ℝⁿ×ℝⁿ
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/AveragingMean.lean
FROZEN_DECL: KAM.Nekhoroshev.averaging_mean
FROZEN_ANCHOR_ID: nekhoroshev.d28.averaging_mean.v1
FROZEN_ABI_SHA256: f3936c21f8b15b5dff4f4a0500092a5e06c1a54241d18401b59e5de2c9168e8a
DEPS: bpN:p0:avg-sec#data, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:avg-rank#HasAveragingFrequencyRank, bpN:p0:ball#actionBall, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian, bpN:p0:avg-error#averagingError, stepN:p12:me-flow, stepN:p12:me-cont, stepN:p12:me-good, stepN:p12:me-bad, stepN:p12:me-mean, stepN:p12:me-markov, bpN:p12:s-mean#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:avg-sec#data | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L385-L391 | notation of the D28 statements: vol, H_{h,εf}, x_2, max norm
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L385-L385 | hypothesis on h
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L385-L385 | hypothesis on f (size 1)
EDGE: bpN:p0:avg-rank#HasAveragingFrequencyRank | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L386-L386 | rank-alternative hypothesis on h
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L386-L386 | B(0,R/2), B(0,R)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L388-L388 | flow premise IsSolutionOn H_{h,εf} B(0,R) [0,1/ε] (Φ x)
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L388-L388 | H_{h,εf}
EDGE: bpN:p0:avg-error#averagingError | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-mean@L389-L391 | e^Φ_ε is averagingError
EDGE: stepN:p12:me-flow | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L278-L278 | proof step of this result
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L280-L280 | proof step of this result
EDGE: stepN:p12:me-good | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L282-L282 | proof step of this result
EDGE: stepN:p12:me-bad | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L284-L284 | proof step of this result
EDGE: stepN:p12:me-mean | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L286-L286 | proof step of this result
EDGE: stepN:p12:me-markov | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L288-L288 | proof step of this result
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-mean@L275-L275 | constant choices epsilon_0=1 and A=13A_1 precede epsilon and Phi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 12 (§s-mean, steps stepN:p12:me-*; the proof environment of L277-L289 has no label so PROOF_SOURCE was set to it). The \sourcegap (Nei76 (17), E-NAVG-NEI-17) is bridged by pointwise/transport/stopped (coverage); edge to Remark bpN:p12:errata deleted (provenance).
```

```text
NODE: bpN:p0:avg-most
KIND: theorem
TITLE: N-AVERAGING-MOST: existence and small drift for most initial data
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L398-L406
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-most@L268-L271
CONTRACT_ID: nekhoroshev.d28.averaging_most
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: same data as avg-mean: n≥2; R,s>0; h,f with IsAnalyticIntegrable R s h, IsAnalyticPerturbation R s 1 f, HasAveragingFrequencyRank B(0,R) h; K⊂ℝⁿ×ℝⁿ compact with x_2∈B(0,R/2) on K; (no flow premise)
SOURCE_QUANTIFIERS: n,R,s,h,f,K; ∃ A,ε_0,η_0>0 with η_0≤R/4; ∀ ε∈(0,ε_0]; ∀ η∈(0,η_0]; ∃ measurable E⊂K; ∀ x∈K∖E ∃ z:ℝ→ℝⁿ×ℝⁿ
SOURCE_CONCLUSION: vol E ≤ ofReal(A√ε/η); and ∀x∈K∖E ∃z with z(0)=x, IsSolutionOn H_{h,εf} B(0,R) [0,1/ε] z and ¦z(t)_2−x_2¦ ≤ η for all t∈[0,1/ε] (existence on the whole window and confinement are conclusions)
CONSTANT_SCOPE: A,ε_0,η_0 depend only on the fixed data (n,R,s,h,f,K), not on ε,η,E,x,z; ε then η then E then (x,z)
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/AveragingMost.lean
FROZEN_DECL: KAM.Nekhoroshev.averaging_most
FROZEN_ANCHOR_ID: nekhoroshev.d28.averaging_most.v1
FROZEN_ABI_SHA256: 356774243b1f5a1ed1043f6a2bfd7671515615863fc611b68a06e83aa77e93f3
DEPS: bpN:p0:avg-sec#data, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:avg-rank#HasAveragingFrequencyRank, bpN:p0:ball#actionBall, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian, stepN:p12:mo-E, stepN:p12:mo-z, bpN:p12:s-most#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:avg-sec#data | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L399-L401 | notation of the D28 statements: vol, H_{h,εf}, x_2
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L399-L399 | hypothesis on h (via the data of avg-mean, spelled out in SOURCE_HYPOTHESES)
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L399-L399 | hypothesis on f
EDGE: bpN:p0:avg-rank#HasAveragingFrequencyRank | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L399-L399 | rank-alternative hypothesis on h
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L399-L399 | B(0,R/2), B(0,R)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L401-L401 | conclusion IsSolutionOn H_{h,εf} B(0,R) [0,1/ε] z
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:avg-most@L401-L401 | H_{h,εf}
EDGE: stepN:p12:mo-E | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-most@L269-L269 | proof step of this result
EDGE: stepN:p12:mo-z | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-most@L270-L270 | proof step of this result
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#bpN:p0:avg-most@L250-L250 | constant choices epsilon_0=1, eta_0=R/8 and A=A_1 precede epsilon and eta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 12 (§s-most). The mechanical edge to bpN:p0:avg-mean ("with the same data and hypotheses as in Theorem avg-mean", L399) is deleted: the hypotheses are spelled out in SOURCE_HYPOTHESES and the proof of avg-most does not use the conclusion of avg-mean (mo-E, mo-z use only Part 12 results).
```

```text
NODE: bpN:p12:s-setting#data
KIND: definition
TITLE: Standing data of Part 12: ρ, G, W_0, F, ω, M, Ω_0, M_2
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L18-L24
PROOF_SOURCE: -
CONTRACT_ID: bpN:p12:s-setting#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥1; R,s>0; h:ℂⁿ→ℂ with IsAnalyticIntegrable R s h; f with IsAnalyticPerturbation R s 1 f; the rank alternative HasAveragingFrequencyRank B(0,R) h; K compact with K ⊂ ℝⁿ×B(0,R/2); ε>0
SOURCE_QUANTIFIERS: n,R,s,h,f,K; ε>0
SOURCE_CONCLUSION: defines the standing data of Part 12: T=1/ε, H=H_ε=H_{h,εf}, W_0=ℝⁿ×B(0,R) (open), F=X_H; ρ=R/8; G=B̄(0,3R/4)⊂B(0,R) with B̄(I_0,ρ)⊂G for ¦I_0¦<R/2; real points f(θ,I)∈ℝ; ω=ω_h, M(I)=Dω(I)=D²h_ℝ(I) (continuous real matrix on B(0,R+s), Lemma holo-real); Ω_0=max_{¦I¦≤R}¦ω¦, M_2=max_{¦I¦≤R}‖M‖ (finite)
CONSTANT_SCOPE: ρ=R/8, G, Ω_0, M_2 depend only on R, s, h (not on ε, f beyond the hypotheses)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:avg-rank#HasAveragingFrequencyRank, bpN:p0:ball#actionBall, bpN:p0:realH#realHamiltonian, bpN:p0:freq#frequencyMap, bpN:p1:holo-real, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L19-L19 | standing hypothesis on h
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L19-L19 | standing hypothesis on f (size 1)
EDGE: bpN:p0:avg-rank#HasAveragingFrequencyRank | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L19-L19 | rank alternative
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L19-L21 | B(0,R), B(0,R/2), closed balls
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L19-L20 | H=H_ε, F=X_H
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L22-L22 | ω=ω_h
EDGE: bpN:p1:holo-real | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L22-L24 | h_ℝ is C^∞, ω_i=∂_i h_ℝ, M_ij=∂_i∂_j h_ℝ continuous on B(0,R+s); finiteness of Ω_0, M_2
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-setting#data@L20-L20 | F=X_H uses the frozen vector-field definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data for coverage items p12:prose-L18-L22 and p12:prose-L24-L24; consumers: nearly every node of Part 12 (R, s, G, ρ, Ω_0, M_2). Does not depend on avg-mean (cycle): it restates the same hypotheses.
```

```text
NODE: stepN:p12:fb-cauchy
KIND: step
TITLE: stepN:p12:fb-cauchy
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30
CONTRACT_ID: stepN:p12:fb-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦f¦≤1 on the polydisc of radius s/2 (previous step); f holomorphic
SOURCE_QUANTIFIERS: real (θ,I), I∈B(0,R)
SOURCE_CONCLUSION: ¦∂f¦ ≤ 1/(s/2)=2/s at (θ,I) for every first partial
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:fb-poly, K:bp:p1:cauchy-open, bpN:p0:pert#IsAnalyticPerturbation, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:fb-poly | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30 | the polydisc lies in the domain where ¦f¦≤1
EDGE: K:bp:p1:cauchy-open | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30 | Cauchy estimate on the polydisc
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30 | ¦f¦≤1 on D_s(R) (ε=1 bound in the predicate)
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-cauchy@L30-L30 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: bpN:p1:holo-real, K:bp:p1:real-restriction, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:holo-real | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | real smoothness and the real Hamiltonian field
EDGE: K:bp:p1:real-restriction | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | real restriction of a holomorphic function real on reals
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fb-real@L30-L30 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:ext-dep
KIND: claim
TITLE: Differentiable dependence on initial data, short time (infrastructure lemma, to be proved separately)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F is C¹ on an open W⊂ℝᴺ; x_0∈W
SOURCE_QUANTIFIERS: N; W; F; x_0; then a,r; y
SOURCE_CONCLUSION: there are a,r>0 and a continuous y:(−a,a)×B(x_0,r)→W with y(0,x)=x, ∂_t y=F(y), D_x y exists, is continuous and satisfies D_x y(t,x)=1+∫_0^t DF(y)D_x y dτ
CONSTANT_SCOPE: a,r chosen after N,W,F,x_0; no uniformity in W is asserted
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-dep#picard, bpN:p12:ext-dep#linear, bpN:p12:ext-dep#identify
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-dep#picard | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | substantive inline proof obligation
EDGE: bpN:p12:ext-dep#linear | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | substantive inline proof obligation
EDGE: bpN:p12:ext-dep#identify | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | substantive inline proof obligation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Claim with the inline Picard/Volterra proof, decomposed into child obligations. The optional analytic Part-5 shortcut is explicitly not needed and provides no edge. SOURCE_GAP children expose general tools not proved or admitted at the required carrier; do not revert to an assumed external without a SPEC ruling.
```

```text
NODE: bpN:p12:ext-markov#compact-max
KIND: claim
TITLE: compact-max
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-markov#compact-max@L38-L38
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-markov#compact-max@L38-L38
CONTRACT_ID: bpN:p12:ext-markov#compact-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U a topological (here metrisable) space; T>0; g:[0,T]×U→ℝ jointly continuous. Variable time: g jointly continuous on {(u,x)∈𝒟,u≥0} and (t,x)↦(vt,x) maps into it for v∈[0,1]
SOURCE_QUANTIFIERS: U; T; g; (variable time: 𝒟; g; t)
SOURCE_CONCLUSION: x↦max_{0≤u≤T} g(u,x) is continuous on U; and (t,x)↦max_{0≤u≤t} g(u,x)=max_{0≤v≤1} g(vt,x) is continuous on {(t,x)∈𝒟: t≥0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-markov, bpN:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-markov#compact-max@L38-L38 | existence of each compact-time maximum
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-markov#compact-max@L38-L38 | finite subcover of the real compact interval
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: compact-time maximum, proved inline in X4 (finite subcover of [0,T]; Part 12 round-2 fix N12R2-01); consumers: ex-open, good, me-cont. The text says the unqualified statement without compact time is false. Split from ext-markov because it carries its own proof (finite subcover from Heine-Borel/Lebesgue).
```

```text
NODE: bpN:p12:averaged
KIND: claim
TITLE: The averaged orbit is constant
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:averaged@L42-L44
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:averaged@L42-L44
CONTRACT_ID: bpN:p12:averaged
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing fixed analytic data of s-setting#data; in particular f is holomorphic, bounded and 1-periodic in theta on its strip at fixed admissible action; a=-partial_theta f; I_0∈B(0,R/2)
SOURCE_QUANTIFIERS: f; I_0∈B(0,R/2)
SOURCE_CONCLUSION: the average ā(I)=∫_{𝕋ⁿ} a dθ=0 since ∫∂_{θ_ℓ}f dθ=0; so the averaged system is J̇=0, J(t)=I_0, at distance ≥R/4 from ∂B(0,R) for ¦I_0¦<R/2 (continuability condition of AKN Remark 6.4 holds); varphi=2πtheta and Omega=2πomega preserve time and both rank conditions; Part 12 keeps period one and does not otherwise use varphi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:averages, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:averages | blueprint-N/parts/p12-averaging.tex#bpN:p12:averaged@L43-L43 | ∫∂_{θ_ℓ}f dθ=0 for a periodic C¹ function
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:averaged@L43-L44 | R, I_0∈B(0,R/2)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept: the only consumer is bpN:p0:avg-sec#data (the averaged orbit J(t)≡I_0, hence the form of averagingError); the proofs of Part 12 do not need it (coef (c) shows independently that a has no k=0 mode).
```

```text
NODE: bpN:p12:s-flow#data
KIND: definition
TITLE: Section data of §s-flow: maximal flow Φ_t, 𝒟, Ω_t
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48
PROOF_SOURCE: -
CONTRACT_ID: bpN:p12:s-flow#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed n≥1,R,s>0,h,f,K with the analytic, rank and compact-initial-set hypotheses of s-setting#data; ε≥0 as explicitly allowed by this subsection (T=1/ε is not used in the flow result)
SOURCE_QUANTIFIERS: fixed n,R,s,h,f,K and their hypotheses; every ε≥0; then x∈W_0 and real times in the maximal interval
SOURCE_CONCLUSION: defines the flow of X_H: H is C^∞ on W_s ⊃ W_0, X_H is C¹ on W_0 and 1-periodic in θ; IsSolutionOn H B(0,R) J z ⇔ IsSolIn X_H W_0 J z; for x∈W_0, (T_−(x),T_+(x)) and γ_x maximal; Φ_t(x)=γ_x(t)=(θ(t,x),I(t,x)); 𝒟={(t,x):x∈W_0,T_−<t<T_+}; Ω_t={x:(t,x)∈𝒟}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-setting#data, bpN:p3:holo-input, bpN:p3:ham-smooth, bpN:p3:ham-reduction, bpN:p3:gen-maximal, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | W_0, H, X_H
EDGE: bpN:p3:holo-input | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | H is C^∞ on W_s ⊃ W_0, 1-periodic
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | X_H is C¹ on W_0
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | IsSolutionOn ⇔ IsSolIn X_H W_0
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | maximal interval and solution γ_x
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-flow#data@L48-L48 | the IsSolIn predicate defines the maximal-flow solution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the fixed-system portion of s-setting#data and the explicit ε≥0 extension at L48. At holo-input use the perturbation εf with analytic size bound ε, including ε=0; no positive-epsilon premise is imported into the zero-size flow clause.
```

```text
NODE: bpN:p12:flow
KIND: lemma
TITLE: Flow, regularity, volume preservation
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L50-L58
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L59-L69
CONTRACT_ID: bpN:p12:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpN:p12:s-flow#data (the results hold for any ε≥0)
SOURCE_QUANTIFIERS: ε≥0; x∈W_0; t; k∈ℤⁿ
SOURCE_CONCLUSION: (a) 𝒟 open in ℝ×W_0, Φ:𝒟→W_0 continuous, Ω_t open, Φ_t:Ω_t→Ω_{−t} a bijection with inverse Φ_{−t}, hence a homeomorphism; (b) Φ_t is C¹ on Ω_t, Y=DΦ_t continuous on 𝒟 with ∂_tY=DF(Φ_tx)Y, Y(0,x)=1; (c) det DΦ_t(x)=1 on Ω_t; (d) Ω_t+(k,0)=Ω_t and Φ_t(x+(k,0))=Φ_t(x)+(k,0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-flow#data, stepN:p12:fl-short, stepN:p12:fl-chain, stepN:p12:fl-inverse, stepN:p12:fl-symp, stepN:p12:fl-transl, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L50-L55 | data of the flow
EDGE: stepN:p12:fl-short | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L60-L60 | proof step
EDGE: stepN:p12:fl-chain | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L62-L62 | proof step
EDGE: stepN:p12:fl-inverse | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L64-L64 | proof step
EDGE: stepN:p12:fl-symp | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L66-L66 | proof step
EDGE: stepN:p12:fl-transl | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L68-L68 | proof step
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:flow@L51-L51 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:fl-short
KIND: step
TITLE: Short time
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60
CONTRACT_ID: stepN:p12:fl-short
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x_0∈W_0; F C¹ on W_0
SOURCE_QUANTIFIERS: x_0∈W_0
SOURCE_CONCLUSION: there are a,r>0 and a family y on (−a,a)×B(x_0,r), C¹ in x, with y(t,x)=Φ_t(x)
CONSTANT_SCOPE: a,r depend on x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-dep, bpN:p3:gen-uniqueness, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-dep | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60 | differentiable dependence on initial data, short time
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60 | uniqueness identifies y with Φ_t
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60 | Φ_t, F=X_H on W_0
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-short@L60-L60 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: stepN:p12:fl-short, bpN:p3:gen-symmetry, bpN:p3:gen-uniqueness, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:fl-short | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | short-time C¹ family used on a finite cover of the orbit arc
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | time reversal for t_1<0
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | flow property Γ_N=Φ_{t_1} by uniqueness
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | Ω_t, 𝒟, γ_x
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-chain@L62-L62 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:fl-inverse
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64
CONTRACT_ID: stepN:p12:fl-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: openness of 𝒟 and continuity of Φ (from fl-chain); t>0, x∈Ω_t
SOURCE_QUANTIFIERS: t; x
SOURCE_CONCLUSION: Φ_tx∈Ω_{−t}, Φ_{−t}Φ_tx=x, and symmetrically Φ_tΦ_{−t}z=z, so Φ_t:Ω_t→Ω_{−t} is a bijection with inverse Φ_{−t}, hence a homeomorphism (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:fl-chain, bpN:p3:gen-maximal, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:fl-chain | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64 | continuity of Φ_{±t} and openness already proved
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64 | maximality: a solution on [−t,0] through Φ_tx lies in the maximal interval
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64 | Ω_{±t}, Φ_t
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-inverse@L64-L64 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:fl-symp
KIND: step
TITLE: Symplectic form
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66
CONTRACT_ID: stepN:p12:fl-symp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H is C²; Y=D Φ_t(x) solves ∂_tY=DF(Φ_tx)Y, Y(0)=1
SOURCE_QUANTIFIERS: x; t∈(T_−,T_+)
SOURCE_CONCLUSION: F=J∇H, DF=JS with S=∇²H symmetric, Y^⊤JY=J, det Y=±1 and continuity gives det Y≡1 (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-schwarz, stepN:p12:fl-chain, bpN:p12:s-flow#data, bpN:p12:s-setting#data, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66 | symmetry of the Hessian S
EDGE: stepN:p12:fl-chain | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66 | Y satisfies the variational equation (b)
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66 | H, F=X_H, T_±
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-symp@L66-L66 | zero derivative implies constancy of Y-transpose J Y on the interval
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:fl-transl
KIND: step
TITLE: Translation
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68
CONTRACT_ID: stepN:p12:fl-transl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H 1-periodic in θ; W_0+(k,0)=W_0; solution γ_x
SOURCE_QUANTIFIERS: x∈W_0; k∈ℤⁿ
SOURCE_CONCLUSION: γ_x+(k,0) is a solution through x+(k,0); hence Ω_t+(k,0)=Ω_t and Φ_t(x+(k,0))=Φ_t(x)+(k,0) (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-periodic, bpN:p3:holo-input, bpN:p3:gen-maximal, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68 | periodicity passes to solutions
EDGE: bpN:p3:holo-input | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68 | H is 1-periodic on W_s
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68 | part (d) of maximal-solution uniqueness
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68 | γ_x, Ω_t
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:fl-transl@L68-L68 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:ex-g
KIND: step
TITLE: (iii)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-g@L80-L80
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-g@L80-L80
CONTRACT_ID: stepN:p12:ex-g
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦I(u)−I_0¦≤ρ; ¦I_0¦<R/2
SOURCE_QUANTIFIERS: u≤τ
SOURCE_CONCLUSION: ¦I(u)¦≤¦I_0¦+ρ<R/2+R/8≤3R/4 (iii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-setting#data, bpN:p12:s-flow#data, stepN:p12:ex-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-g@L80-L80 | ρ=R/8, G=B̄(0,3R/4)
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-g@L80-L80 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: stepN:p12:ex-exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-g@L80-L80 | tube displacement bound through a finite first exit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:ex-open
KIND: step
TITLE: Openness of $S$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82
CONTRACT_ID: stepN:p12:ex-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Φ continuous on the open set 𝒟; compact-time maximum
SOURCE_QUANTIFIERS: x; t
SOURCE_CONCLUSION: m(t,x)=max_{0≤u≤t}¦I(u,x)−I_0¦ is continuous on 𝒟∩{t≥0}, and S={m<ρ} is open
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-markov#compact-max, bpN:p12:flow, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-markov#compact-max | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82 | variable-time compact-time maximum is continuous
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82 | Φ continuous on 𝒟 (a)
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82 | 𝒟, I(u,x)
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:ex-open@L82-L82 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:co-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93
CONTRACT_ID: stepN:p12:co-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f∈𝒪(s,s) on D_s(R) with ¦f¦≤1 (frozen hypothesis); f(·,I′) holomorphic, 1-periodic, bounded by 1 on T_s
SOURCE_QUANTIFIERS: I′∈B(0,R)_s; k
SOURCE_CONCLUSION: f_k holomorphic on B(0,R)_s and ¦f_k(I′)¦≤e^{−2π¦k¦_1 s/2}=β_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:domains, bpN:p4:norm, bpN:p0:cdomain#complexDomain, bpN:p0:pert#IsAnalyticPerturbation, K:bp:p1:decay, bpN:p12:s-data#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | part (a): Fourier coefficients of u∈𝒪(r,s) are holomorphic on V_rD
EDGE: bpN:p4:domains | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | V_rD=B(0,R)_s, 𝒟_{r,s}=T_s×V_rD=D_s(R) with D=ι(B(0,R)), r=s
EDGE: bpN:p4:norm | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | f∈𝒪(s,s) for this D and Fourier coefficients û_k
EDGE: bpN:p0:cdomain#complexDomain | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | D_s(R)=𝒟_{s,s}
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | frozen hypothesis: f periodic, holomorphic, ¦f¦≤1 on D_s(R)
EDGE: K:bp:p1:decay | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | coefficient decay with ρ′=s/2
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | f_k, β_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-a@L93-L93 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:co-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94
CONTRACT_ID: stepN:p12:co-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦f_k¦≤β_k on B(0,R)_s; real I∈B(0,R)
SOURCE_QUANTIFIERS: real I∈B(0,R); j
SOURCE_CONCLUSION: ¦∂_{I_j}f_k(I)¦≤(2/s)β_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open, stepN:p12:co-a, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94 | Cauchy estimate on the polydisc of radius s/2
EDGE: stepN:p12:co-a | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94 | ¦f_k¦≤β_k on B(0,R)_s
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-b@L94-L94 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:co-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95
CONTRACT_ID: stepN:p12:co-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f(·,I) continuous periodic for real I∈B(0,R); Σβ_k<∞
SOURCE_QUANTIFIERS: real I∈B(0,R); real θ
SOURCE_CONCLUSION: f=Σf_ke_k and ∂_{θ_ℓ}f=Σ2πik_ℓf_ke_k (absolutely convergent); the k=0 term of a vanishes
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, K:bp:p1:fourier-basic, stepN:p12:co-a, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95 | Σβ_k<∞ by (b) of the exponential sums
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95 | Fourier series of a continuous function with summable coefficients; coefficients of the derivative
EDGE: stepN:p12:co-a | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95 | ¦f_k¦≤β_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-c@L95-L95 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:co-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-d@L96-L96
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:co-d@L96-L96
CONTRACT_ID: stepN:p12:co-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (1+x)³e^{−πsx/2}≤c(s)
SOURCE_QUANTIFIERS: s>0
SOURCE_CONCLUSION: σ≤c(s)Σ_k e^{−πs¦k¦_1/2}<∞
CONSTANT_SCOPE: c(s) depends on s only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-d@L96-L96 | (a),(b) exponential sums
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-d@L96-L96 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:co-d@L96-L96 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:corrector
KIND: definition
TITLE: Corrector and its pieces
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:corrector@L99-L110
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:corrector@L100-L109
CONTRACT_ID: bpN:p12:corrector
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-data#data; 0<κ≤1
SOURCE_QUANTIFIERS: κ∈(0,1]; (θ,I)∈ℝⁿ×B(0,R)
SOURCE_CONCLUSION: For 0<κ≤1 define ψ_κ(y)=y/(y²+κ²), smooth for every real y; global bounds ¦ψ¦≤1/(2κ), ¦ψ′¦≤κ⁻², 0≤1-yψ=κ²/(y²+κ²)≤1; only for y≠0, ¦ψ¦≤1/¦y¦, ¦ψ′¦≤y⁻² and κ²/(y²+κ²)≤κ²y⁻². u_k=f_kψ(q_k)k; w=-Σ_{k≠0}u_ke_k∈ℂⁿ; r=a-partial_theta w omega. For I∈B(0,R), with all sums over k≠0: Ŵ=Σ¦k¦_∞β_k¦ψ(q_k)¦; Ŵ_1=Σ2π¦k¦_∞¦k¦_1β_k¦ψ(q_k)¦; B̂=Σ¦k¦_∞β_k[(2n/s)¦ψ(q_k)¦+M_2¦k¦_1¦ψ′(q_k)¦]; R̂=Σ2π¦k¦_∞β_kκ²/(q_k²+κ²). Phî_{ε,κ}=ε(4/s)B̂+ε(2/s)Ŵ_1+R̂. Envelopes take values in [0,∞] and are Borel as sums of nonnegative continuous functions.
CONSTANT_SCOPE: κ is chosen after the data; the envelopes depend on κ and are functions of I only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-data#data, bpN:p12:s-setting#data, bpN:p12:fbounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:corrector@L101-L101 | f_k, q_k, e_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:corrector@L106-L106 | M_2 in B̂, R, ω
EDGE: bpN:p12:fbounds | blueprint-N/parts/p12-averaging.tex#bpN:p12:corrector@L101-L101 | a=−∂_θf in r
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: definition node (corrector, regularised divisor, envelopes); the forward DEPS of the draft (wreg, pointwise) were consumers, removed.
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
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L113-L118 | Fourier bounds on f_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L113-L113 | M_2, G
EDGE: stepN:p12:wr-smooth | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L122-L122 | proof step
EDGE: stepN:p12:wr-ac | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L124-L124 | proof step
EDGE: stepN:p12:wr-b | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L126-L126 | proof step
EDGE: stepN:p12:wr-d | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L128-L128 | proof step
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:wreg@L116-L116 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:wr-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122
CONTRACT_ID: stepN:p12:wr-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coef (a),(b),(d); ψ_κ smooth with ¦ψ_κ¦≤1/(2κ), ¦ψ_κ′¦≤κ⁻²; q_k C²; M row-sum bound M_2 on B̄(0,R)
SOURCE_QUANTIFIERS: κ; R′<R
SOURCE_CONCLUSION: each u_k is C¹ on B(0,R), ∂_{I_j}u_k=(∂_jf_kψ_κ(q_k)+f_kψ_κ′(q_k)∂_jq_k)k; terms u_ke_k and their θ,I-derivatives are bounded by c(κ,R′)(1+¦k¦_1)³β_k, summable; by termwise differentiation w is C¹
CONSTANT_SCOPE: c(κ,R′) depends on κ, R′
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:coef, bpN:p12:ext-tsum, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122 | holomorphy of f_k, derivative bounds and σ summability (d)
EDGE: bpN:p12:ext-tsum | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122 | termwise differentiation of the series
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122 | ψ_κ bounds and definition of u_k, w
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122 | M_2, ω∈C²
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-smooth@L122-L122 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:wr-ac
KIND: step
TITLE: (a),(c)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124
CONTRACT_ID: stepN:p12:wr-ac
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u_k=f_kψ_κ(q_k)k; ¦f_k¦≤β_k; termwise derivatives
SOURCE_QUANTIFIERS: k≠0; v∈ℝⁿ
SOURCE_CONCLUSION: ¦u_k¦_∞≤¦k¦_∞β_k¦ψ_κ(q_k)¦ summed gives (a); ∂_θw v=−2πiΣ(k·v)u_ke_k with ¦k·v¦≤¦k¦_1¦v¦_∞ gives (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:coef, bpN:p12:corrector, stepN:p12:wr-smooth, bpN:p12:s-setting#data, bpN:p12:s-data#data, bpN:p12:fbounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | ¦f_k¦≤β_k
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | definition of w, Ŵ, Ŵ_1
EDGE: stepN:p12:wr-smooth | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | termwise derivative ∂_θ w=−2πiΣk_ℓu_ke_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
EDGE: bpN:p12:fbounds | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-ac@L124-L124 | the stated specialization v=partial_I f uses the 2/s bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:wr-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126
CONTRACT_ID: stepN:p12:wr-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: termwise ∂_θw; identity 1−yψ_κ(y)=κ²/(y²+κ²); a from coef (c)
SOURCE_QUANTIFIERS: κ
SOURCE_CONCLUSION: r=a−∂_θw ω=−2πiΣf_k(1−q_kψ_κ(q_k))k e_k=−2πiΣf_kκ²/(q_k²+κ²)k e_k and ¦r¦_∞≤R̂
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:coef, bpN:p12:corrector, stepN:p12:wr-smooth, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126 | Fourier series of a (c) and ¦f_k¦≤β_k
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126 | 1−yψ_κ(y)=κ²/(y²+κ²); definition of r, R̂
EDGE: stepN:p12:wr-smooth | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126 | termwise derivative of w
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-b@L126-L126 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:wr-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128
CONTRACT_ID: stepN:p12:wr-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u_k C¹; ¦∂_jf_k¦≤(2/s)β_k; row-sum bound ‖M‖≤M_2
SOURCE_QUANTIFIERS: k≠0; v∈ℝⁿ
SOURCE_CONCLUSION: ¦D_Iu_kv¦_∞≤¦k¦_∞β_k[(2n/s)¦ψ_κ¦+M_2¦k¦_1¦ψ_κ′¦]¦v¦_∞=b_k¦v¦_∞; summing over k gives ¦D_Iw v¦≤B̂¦v¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:coef, bpN:p12:corrector, stepN:p12:wr-smooth, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128 | (b): ¦∂_jf_k¦≤(2/s)β_k
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128 | definition of B̂ and b_k
EDGE: stepN:p12:wr-smooth | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128 | formula for ∂_{I_j}u_k and the row-sum bound on ∂_jq_k
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128 | M_2
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:wr-d@L128-L128 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:sl-box
KIND: step
TITLE: One box
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154
CONTRACT_ID: stepN:p12:sl-box
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: e∈U_m; 0<v≤λ/2; ∂_{j_m}φ_e of constant sign and modulus ≥c_0 on Q_m
SOURCE_QUANTIFIERS: e∈𝕊; v; m
SOURCE_CONCLUSION: Vol(Q_m∩{¦φ_e¦≤v})≤(2v/c_0)ℓ_{Q_m}^{n−1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-measure, K:bp:p1:ext-mvt, stepN:p12:sl-cover, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-measure | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154 | Fubini along the coordinate j_m
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154 | mean value theorem: two points of a section are within 2v/c_0
EDGE: stepN:p12:sl-cover | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154 | the cubes Q_m, sign and modulus bound c_0
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-box@L154-L154 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:sl-k
KIND: step
TITLE: Integer vectors
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-k@L158-L158
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-k@L158-L158
CONTRACT_ID: stepN:p12:sl-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: slab estimate for unit vectors; q_k=¦k¦_2φ_{k/¦k¦_2}
SOURCE_QUANTIFIERS: k≠0; u>0
SOURCE_CONCLUSION: V_k(u)=Vol{¦φ_e¦≤u/¦k¦_2}≤C_1u/¦k¦_2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:sl-sum, bpN:p12:s-data#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:sl-sum | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-k@L158-L158 | the slab bound for e=k/¦k¦_2 and v=u/¦k¦_2
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-k@L158-L158 | q_k=k·ω
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sl-k@L158-L158 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:sh-i
KIND: step
TITLE: (i)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175
CONTRACT_ID: stepN:p12:sh-i
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: shell volumes; ¦ψ_κ¦≤1/(2κ) globally and ≤1/(2^{j−1}κ) on Z_j; ¦k¦_2≥1
SOURCE_QUANTIFIERS: k≠0; κ
SOURCE_CONCLUSION: ∫_G¦ψ_κ(q_k)¦≤C_1(1/2+2J)≤C_1(5/2+3ln⁺(Ω_0¦k¦_1/κ))≤3C_1(1+Ω_0)(1+¦k¦_1)ℓ_κ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:sh-shells, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:sh-shells | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175 | shell volumes and the bound J
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175 | ¦ψ_κ¦≤1/(2κ) and ¦ψ_κ(y)¦≤1/¦y¦ away from 0
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-i@L175-L175 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:sh-ii
KIND: step
TITLE: (ii)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176
CONTRACT_ID: stepN:p12:sh-ii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: shell volumes; ¦ψ_κ′¦≤κ⁻² globally and ≤(2^{j−1}κ)⁻² on Z_j
SOURCE_QUANTIFIERS: k≠0; κ
SOURCE_CONCLUSION: ∫_G¦ψ_κ′(q_k)¦≤C_1/(κ¦k¦_2)+Σ_{j≥1}4C_1/(2^jκ¦k¦_2)≤5C_1/(κ¦k¦_2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:sh-shells, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:sh-shells | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176 | shell volumes
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176 | ¦ψ_κ′¦≤κ⁻² and ¦ψ_κ′(y)¦≤y⁻² away from 0
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-ii@L176-L176 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:sh-iii
KIND: step
TITLE: (iii)
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177
CONTRACT_ID: stepN:p12:sh-iii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: shell volumes; κ²/(q²+κ²)≤1 on Z_0, ≤4·4^{−j} on Z_j
SOURCE_QUANTIFIERS: k≠0; κ
SOURCE_CONCLUSION: ∫_G κ²/(q_k²+κ²)≤C_1κ/¦k¦_2+Σ_{j≥1}4C_1κ/(2^j¦k¦_2)≤5C_1κ/¦k¦_2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:sh-shells, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:sh-shells | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177 | shell volumes
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177 | κ²/(y²+κ²)≤1 and ≤κ²y⁻²
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:sh-iii@L177-L177 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
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
EDGE: bpN:p12:shells | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L181-L184 | integrals of ψ_κ, ψ_κ′, κ²/(q²+κ²)
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L182-L183 | envelopes Ŵ, Ŵ_1, B̂, R̂, Φ̂_{ε,κ}
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L181-L181 | Ω_0, M_2, G
EDGE: stepN:p12:en-term | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L187-L187 | proof step
EDGE: stepN:p12:en-choice | blueprint-N/parts/p12-averaging.tex#bpN:p12:envelopes@L189-L189 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:en-term
KIND: step
TITLE: Termwise
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L188
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L188
CONTRACT_ID: stepN:p12:en-term
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: shell estimates (i)-(iii); σ<∞; ¦k¦_∞(1+¦k¦_1)≤(1+¦k¦_1)², ¦k¦_1¦k¦_∞(1+¦k¦_1)≤(1+¦k¦_1)³, ¦k¦_1/¦k¦_2≤√n
SOURCE_QUANTIFIERS: κ∈(0,1]
SOURCE_CONCLUSION: ∫Ŵ≤c_Wℓ_κ, ∫Ŵ_1≤2πc_Wℓ_κ, ∫B̂≤c_B/κ (using ℓ_κ≤1/κ), ∫R̂≤c_Rκ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-markov, bpN:p12:shells, bpN:p12:coef, bpN:p12:corrector, bpN:p1:norm-compare, bpN:p12:s-setting#data, bpN:p12:s-data#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L187 | Tonelli: integrate the series termwise
EDGE: bpN:p12:shells | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L188 | integral bounds (i)-(iii) per k
EDGE: bpN:p12:coef | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L187 | σ and the summability of (1+¦k¦_1)³β_k
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L187 | envelopes as sums
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L187 | ¦k¦_1/¦k¦_2≤√n
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L188-L188 | Ω_0, M_2
EDGE: bpN:p12:s-data#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-term@L187-L187 | f_k,beta_k,e_k or q_k are the section-defined Fourier data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:en-choice
KIND: step
TITLE: The choice $\kappa=\sqrt\varepsilon$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:en-choice@L189-L189
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:en-choice@L189-L189
CONTRACT_ID: stepN:p12:en-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: integrals of the envelopes; κ=√ε, 0<ε≤1; ε/κ=√ε, εℓ_κ≤2√ε
SOURCE_QUANTIFIERS: ε∈(0,1]
SOURCE_CONCLUSION: 2ε∫Ŵ≤4c_W√ε and ∫Φ̂_{ε,κ}=(4ε/s)∫B̂+(2ε/s)∫Ŵ_1+∫R̂≤c_Φ√ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:en-term, bpN:p12:corrector, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:en-term | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-choice@L189-L189 | integrals of Ŵ, Ŵ_1, B̂, R̂
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-choice@L189-L189 | definition of Φ̂_{ε,κ}
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:en-choice@L189-L189 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:identity
KIND: lemma
TITLE: Corrector identity
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L194-L198
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L199-L203
CONTRACT_ID: bpN:p12:identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpN:p12:s-flow#data; standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); ε>0; 0<κ≤1; x=(θ_0,I_0)∈W_0; γ_x=(θ,I); 0≤t<T_+(x)
SOURCE_QUANTIFIERS: ε; κ; x; t
SOURCE_CONCLUSION: with Λ(u)=w(θ(u),I(u)) (C¹): I(t)−I_0=ε(Λ(t)−Λ(0))−ε²∫_0^tQ du+ε∫_0^t r(θ(u),I(u))du, Q=∂_θw ∂_If+D_Iw a at (θ(u),I(u))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-flow#data, bpN:p12:wreg, stepN:p12:id-eq, stepN:p12:id-chain, stepN:p12:id-div, bpN:p12:s-setting#data, bpN:p12:corrector
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L195-L195 | γ_x, T_+
EDGE: bpN:p12:wreg | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L195-L197 | w, r
EDGE: stepN:p12:id-eq | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L200-L200 | proof step
EDGE: stepN:p12:id-chain | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L201-L201 | proof step
EDGE: stepN:p12:id-div | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L202-L202 | proof step
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L195-L195 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#bpN:p12:identity@L196-L196 | corrector or envelope formulas used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:id-eq
KIND: step
TITLE: The equations
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200
CONTRACT_ID: stepN:p12:id-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: γ_x solves X_H on W_0; real partials of f
SOURCE_QUANTIFIERS: u∈[0,t]
SOURCE_CONCLUSION: θ̇=ω(I)+ε∂_If and İ=−ε∂_θf=εa at (θ(u),I(u))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:fbounds, bpN:p12:s-flow#data, bpN:p3:ham-reduction, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:fbounds | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200 | X_H=(ω+ε∂_If,−ε∂_θf) on W_0 and a=−∂_θf
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200 | γ_x solves X_H; IsSolutionOn⇔IsSolIn
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200 | solution of X_H on W_0
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-eq@L200-L200 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:id-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201
CONTRACT_ID: stepN:p12:id-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: w is C¹ (wreg); γ_x is C¹
SOURCE_QUANTIFIERS: u∈[0,t]
SOURCE_CONCLUSION: Λ̇=∂_θw θ̇+D_Iw İ=∂_θw ω+ε∂_θw ∂_If+εD_Iw a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:wreg, stepN:p12:id-eq, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:corrector, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:wreg | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | w is C¹ so the chain rule applies
EDGE: stepN:p12:id-eq | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | θ̇, İ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | corrector or envelope formulas used here
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-chain@L201-L201 | chain rule for w composed with the solution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:id-div
KIND: step
TITLE: Divisor identity
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202
CONTRACT_ID: stepN:p12:id-div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ̇ from the chain rule; ∂_θw ω=a−r (definition of r)
SOURCE_QUANTIFIERS: u∈[0,t]
SOURCE_CONCLUSION: εa=εΛ̇−ε²Q+εr; integrating İ=εa over [0,t] gives the corrector identity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:id-chain, stepN:p12:id-eq, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-flow#data, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:id-chain | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | Λ̇ expression
EDGE: stepN:p12:id-eq | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | İ=εa
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | r=a−∂_θw ω by definition
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p12-averaging.tex#stepN:p12:id-div@L202-L202 | fundamental theorem integrates the two derivative equations
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:pointwise
KIND: proposition
TITLE: Pointwise estimate up to a stopping time
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L205-L208
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L209-L216
CONTRACT_ID: bpN:p12:pointwise
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-flow#data; ε∈(0,1]; κ∈(0,1]; x=(θ_0,I_0)∈W_0 with ¦I_0¦<R/2; 0≤t<T_+(x) with ¦I(u,x)¦≤3R/4 for u∈[0,t]
SOURCE_QUANTIFIERS: ε,κ∈(0,1]; x; t
SOURCE_CONCLUSION: max_{0≤u≤t}¦I(u,x)−I_0¦_∞ ≤ 2εŴ(I_0)+ε∫_0^tΦ̂_{ε,κ}(I(s,x))ds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:identity, bpN:p12:corrector, bpN:p12:s-flow#data, bpN:p12:s-setting#data, stepN:p12:pw-lambda, stepN:p12:pw-q, stepN:p12:pw-sum
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:identity | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L210-L210 | corrector identity of the proof
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L207-L207 | Ŵ, Φ̂_{ε,κ}
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L206-L207 | I(u,x), T_+
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L206-L206 | G, ρ
EDGE: stepN:p12:pw-lambda | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L211-L211 | proof step
EDGE: stepN:p12:pw-q | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L213-L213 | proof step
EDGE: stepN:p12:pw-sum | blueprint-N/parts/p12-averaging.tex#bpN:p12:pointwise@L214-L214 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:pw-lambda
KIND: step
TITLE: Sup of $\Lambda$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L212
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L212
CONTRACT_ID: stepN:p12:pw-lambda
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: orbit in G; u_k C¹; wreg (d); ¦İ¦_∞≤ε·2/s (fbounds)
SOURCE_QUANTIFIERS: u≤t
SOURCE_CONCLUSION: max_{u≤t}¦Λ(u)¦_∞≤Ŵ(I_0)+ε(2/s)∫_0^tB̂(I(s))ds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:wreg, bpN:p12:fbounds, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-flow#data, stepN:p12:id-eq, K:bp:p1:ext-integral, bpN:p12:ext-markov
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:wreg | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | D_Iu_kv bound b_k (d) and w=−Σu_ke_k
EDGE: bpN:p12:fbounds | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | ¦İ¦_∞≤ε·2/s
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L212 | Ŵ, B̂
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: stepN:p12:id-eq | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | dot I=epsilon a supplies the action speed bound
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L211-L211 | integrate and bound the derivative of each u_k along I
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-lambda@L212-L212 | sum the nonnegative integral bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:pw-q
KIND: step
TITLE: The other terms
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213
CONTRACT_ID: stepN:p12:pw-q
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: wreg (c),(d); ¦a¦_∞,¦∂_If¦_∞≤2/s
SOURCE_QUANTIFIERS: u≤t
SOURCE_CONCLUSION: ¦Q¦≤(2/s)(Ŵ_1+B̂) and ¦r¦≤R̂ along the orbit
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:wreg, bpN:p12:fbounds, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:corrector, bpN:p12:identity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:wreg | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | (b),(c),(d)
EDGE: bpN:p12:fbounds | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | ¦a¦_∞,¦∂_If¦_∞≤2/s
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | corrector or envelope formulas used here
EDGE: bpN:p12:identity | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-q@L213-L213 | Q is defined by the identity lemma notation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:pw-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L214-L215
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L214-L215
CONTRACT_ID: stepN:p12:pw-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: identity for each u≤t; bounds of pw-lambda, pw-q
SOURCE_QUANTIFIERS: u≤t
SOURCE_CONCLUSION: ¦I(u)−I_0¦≤2εŴ(I_0)+ε∫_0^t[ε(2/s)B̂+ε(2/s)(Ŵ_1+B̂)+R̂]ds, the bracket being Φ̂_{ε,κ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:identity, stepN:p12:pw-lambda, stepN:p12:pw-q, bpN:p12:corrector, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:identity | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L214-L214 | corrector identity at each u≤t
EDGE: stepN:p12:pw-lambda | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L215-L215 | sup of Λ
EDGE: stepN:p12:pw-q | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L215-L215 | bounds on Q and r
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L215-L215 | bracket equals Φ̂_{ε,κ}
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L215-L215 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:pw-sum@L215-L215 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:tr-cov
KIND: step
TITLE: Change of variables
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227
CONTRACT_ID: stepN:p12:tr-cov
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Φ_t:Ω_t→W_0 injective, C¹, det=1 (flow); D⊂Ω_t Borel; g≥0 Borel
SOURCE_QUANTIFIERS: t≥0; D; g
SOURCE_CONCLUSION: ∫_D g(I(t,x))dx=∫_{Φ_t(D)} g(y_2)dy, Φ_t(D) Borel, Φ_t(D)⊂ℝⁿ×G
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:flow, bpN:p12:ext-cov, bpN:p12:s-flow#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227 | Φ_t injective, C¹, det DΦ_t=1 (a)-(c)
EDGE: bpN:p12:ext-cov | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227 | change of variables formula
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227 | Ω_t, Φ_t
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cov@L227-L227 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:tr-cells
KIND: step
TITLE: Cells
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cells@L228-L228
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cells@L228-L228
CONTRACT_ID: stepN:p12:tr-cells
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: periodic translation Φ_t(x+(k,0))=Φ_t(x)+(k,0); D inside one half-open unit cell in the angle
SOURCE_QUANTIFIERS: m∈ℤⁿ
SOURCE_CONCLUSION: P_m=(Φ_t(D)∩((m+[0,1)ⁿ)×ℝⁿ))−(m,0)⊂[0,1)ⁿ×G are pairwise disjoint
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:flow, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cells@L228-L228 | (d) translation equivariance and injectivity of Φ_t
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cells@L228-L228 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-cells@L228-L228 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:tr-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229
CONTRACT_ID: stepN:p12:tr-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g(y_2) independent of y_1; Lebesgue measure translation invariant; P_m disjoint subsets of [0,1)ⁿ×G
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: ∫_{Φ_t(D)}g(y_2)dy=Σ_m∫_{P_m}g(y_2)dy=∫_{∪P_m}g≤∫_{[0,1)ⁿ×G}g(y_2)=∫_Gg
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:tr-cov, stepN:p12:tr-cells, bpN:p12:ext-markov, bpN:p12:s-setting#data, bpN:p12:s-flow#data, K:bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:tr-cov | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | the integral over Φ_t(D)
EDGE: stepN:p12:tr-cells | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | disjointness of the P_m
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | countable additivity / monotonicity for nonnegative Borel functions
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: K:bp:p1:ext-measure | blueprint-N/parts/p12-averaging.tex#stepN:p12:tr-sum@L229-L229 | product measure and unit-cell volume give the integral over G
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:stopped
KIND: proposition
TITLE: Stopped mean estimate
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L236-L239
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L240-L246
CONTRACT_ID: bpN:p12:stopped
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-trans#psi; 0<ε≤1; κ=√ε
SOURCE_QUANTIFIERS: K; ε∈(0,1]; x∈K
SOURCE_CONCLUSION: Ψ:K→[0,∞] is Borel and ∫_KΨ dx≤A_1√ε with A_1=max(1,N_K(c_Φ+4c_W)); moreover for every x∈K and t_1=min(T,τ(x)) (t_1<T_+(x), I(u,x)∈G for u≤t_1): e_{t_1}(x):=max_{0≤u≤t_1}¦I(u,x)−I_0¦≤Ψ(x)
CONSTANT_SCOPE: A_1 depends on n,R,s,h,K only (not on f beyond ¦f¦≤1, not on ε)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-trans#psi, bpN:p12:s-trans#data, bpN:p12:s-setting#data, stepN:p12:st-meas, stepN:p12:st-pt, stepN:p12:st-int, bpN:p12:envelopes
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L232-L238 | Ψ
EDGE: bpN:p12:s-trans#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L237-L237 | N_K, K_ℓ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L237-L237 | K
EDGE: stepN:p12:st-meas | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L241-L241 | proof step
EDGE: stepN:p12:st-pt | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L242-L242 | proof step
EDGE: stepN:p12:st-int | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L243-L243 | proof step
EDGE: bpN:p12:envelopes | blueprint-N/parts/p12-averaging.tex#bpN:p12:stopped@L237-L237 | A_1 directly uses c_Phi and c_W defined in envelopes
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:st-meas
KIND: step
TITLE: Measurability
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241
CONTRACT_ID: stepN:p12:st-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K⊂W_0; S open; I(s,x) continuous on 𝒟; Φ̂, Ŵ Borel
SOURCE_QUANTIFIERS: ε; κ=√ε
SOURCE_CONCLUSION: (s,x)↦1_S(s,x)Φ̂(I(s,x)) is Borel on [0,T]×K and Ψ is Borel (Tonelli)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:exit, bpN:p12:flow, bpN:p12:ext-markov, bpN:p12:s-trans#psi, bpN:p12:s-flow#data, bpN:p12:s-setting#data, bpN:p12:corrector
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | S open
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | I(s,x) continuous on 𝒟 (a)
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | Tonelli for the Borel dependence on x
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | Ψ
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | 𝒟
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-meas@L241-L241 | corrector or envelope formulas used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:st-pt
KIND: step
TITLE: The pointwise bound
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242
CONTRACT_ID: stepN:p12:st-pt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x∈K; t_1=min(T,τ(x)); exit lemma (i),(ii),(iii); pointwise estimate
SOURCE_QUANTIFIERS: x∈K
SOURCE_CONCLUSION: t_1<T_+(x), ¦I(u)−I_0¦≤ρ and ¦I(u)¦≤3R/4 on [0,t_1], and ∫_0^{t_1}=∫_0^T1_S, so e_{t_1}(x)≤Ψ(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:exit, bpN:p12:pointwise, bpN:p12:s-trans#psi, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242 | (i),(ii): t_1<T_+; (iii): ¦I(u)¦≤3R/4
EDGE: bpN:p12:pointwise | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242 | max bound with t=t_1
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242 | Ψ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242 | ρ, G
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-pt@L242-L242 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:st-int
KIND: step
TITLE: Integral
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L245
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L245
CONTRACT_ID: stepN:p12:st-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: transport lemma with D=D_s={x∈K_ℓ:(s,x)∈S}, g=Φ̂_{ε,κ}; envelope integrals; K_ℓ in a unit cell × B(0,R/2)
SOURCE_QUANTIFIERS: ℓ; s∈[0,T]
SOURCE_CONCLUSION: ∫_{K_ℓ}ε∫_0^T1_SΦ̂(I(s,x))dsdx≤∫_GΦ̂≤c_Φ√ε and ∫_{K_ℓ}2εŴ(I_0)dx≤4c_W√ε; summing over the N_K cells gives ∫_KΨ≤N_K(c_Φ+4c_W)√ε≤A_1√ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:transport, bpN:p12:exit, bpN:p12:envelopes, bpN:p12:ext-markov, bpN:p12:s-trans#data, bpN:p12:s-trans#psi, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:corrector
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:transport | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L244 | Liouville transport at fixed time s
EDGE: bpN:p12:exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L243 | I(s,x)∈G on S by (iii)
EDGE: bpN:p12:envelopes | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L244-L245 | ∫_GΦ̂≤c_Φ√ε, 2ε∫Ŵ≤4c_W√ε
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L243 | Tonelli: exchange ∫dx and ∫ds
EDGE: bpN:p12:s-trans#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L245 | K_ℓ and N_K
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L244-L244 | Ψ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L245-L245 | K⊂ unit cell × B(0,R/2)
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L243-L243 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:corrector | blueprint-N/parts/p12-averaging.tex#stepN:p12:st-int@L244-L244 | corrector or envelope formulas used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:s-most#data
KIND: definition
TITLE: Section data of §s-most: constants ρ, ε_0, η_0, A and T, κ
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:s-most#data@L250-L250
PROOF_SOURCE: -
CONTRACT_ID: bpN:p12:s-most#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed n≥1,R,s>0,h,f,K and their analytic/rank/compactness hypotheses; A_1 is the fixed-data constant defined in stopped; epsilon has not yet been selected
SOURCE_QUANTIFIERS: fixed n,R,s,h,f,K and hypotheses; define A,epsilon_0,eta_0; then ε∈(0,1], η∈(0,eta_0]
SOURCE_CONCLUSION: defines the constants of the proof of avg-most: ρ=R/8, ε_0=1, η_0=R/8 (≤R/4), A=A_1 of Proposition stopped (depending on n,R,s,h,K only); and for 0<ε≤1, 0<η≤η_0: T=1/ε, κ=√ε
CONSTANT_SCOPE: A,ε_0,η_0 depend on n,R,s,h,K only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:stopped, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-most#data@L250-L250 | A=A_1
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-most#data@L250-L250 | ρ=R/8, R
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data for coverage item p12:prose-L250-L250; consumers: good, bad, mo-E, mo-z
```

```text
NODE: bpN:p12:good
KIND: lemma
TITLE: The good set is open in $K$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L252-L254
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L255-L257
CONTRACT_ID: bpN:p12:good
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-flow#data; bpN:p12:s-most#data; 0<η≤η_0; ε∈(0,1]
SOURCE_QUANTIFIERS: ε; η
SOURCE_CONCLUSION: Γ_η={x∈K: T<T_+(x) and max_{0≤t≤T}¦I(t,x)−I_0¦<η} is relatively open in K, hence Borel; E:=K∖Γ_η is measurable
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:s-most#data, bpN:p12:s-flow#data, bpN:p12:flow, bpN:p12:ext-markov#compact-max, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L253-L253 | T, η, K
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L256-L256 | Ω_T open, Φ continuous
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L256-L256 | Ω_T open and I(t,x) continuous on 𝒟 (a)
EDGE: bpN:p12:ext-markov#compact-max | blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L256-L256 | x↦max_{[0,T]}¦I(t,x)−I_0¦ continuous on Ω_T (fixed-time compact maximum)
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:good@L253-L253 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
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
DEPS: bpN:p12:s-most#data, bpN:p12:s-trans#psi, stepN:p12:bd-exit, stepN:p12:bd-stay, stepN:p12:bd-concl, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | ρ, η, T
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | Ψ
EDGE: stepN:p12:bd-exit | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L263-L263 | proof step
EDGE: stepN:p12:bd-stay | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L264-L264 | proof step
EDGE: stepN:p12:bd-concl | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L265-L265 | proof step
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:bad@L260-L260 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:bd-exit
KIND: step
TITLE: Case $\tau(x)\le T$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263
CONTRACT_ID: stepN:p12:bd-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: τ(x)≤T; exit lemma (i); ρ≥η
SOURCE_QUANTIFIERS: x∈K∖Γ_η
SOURCE_CONCLUSION: t_1=τ<T_+, ¦I(τ)−I_0¦=ρ, so e_{t_1}(x)≥ρ≥η
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:exit, bpN:p12:s-most#data, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263 | (i): τ<T_+ and ¦I(τ)−I_0¦=ρ
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263 | T, ρ≥η
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-exit@L263-L263 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:bd-stay
KIND: step
TITLE: Case $\tau(x)>T$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264
CONTRACT_ID: stepN:p12:bd-stay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: τ(x)>T; x∉Γ_η
SOURCE_QUANTIFIERS: x∈K∖Γ_η
SOURCE_CONCLUSION: T<T_+(x), ¦I−I_0¦<ρ on [0,T], and max_{[0,T]}¦I−I_0¦≥η, so e_{t_1}(x)=e_T(x)≥η with t_1=T
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:exit, bpN:p12:good, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-most#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264 | T<τ≤T_+ and the definition of τ
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264 | definition of Γ_η (x∉Γ_η)
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-stay@L264-L264 | the most-section T,eta,rho=eta_0 are used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:bd-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265
CONTRACT_ID: stepN:p12:bd-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: e_{t_1}(x)≥η in both cases; stopped estimate e_{t_1}≤Ψ
SOURCE_QUANTIFIERS: x∈K∖Γ_η
SOURCE_CONCLUSION: Ψ(x)≥e_{t_1}(x)≥η
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:stopped, stepN:p12:bd-exit, stepN:p12:bd-stay, bpN:p12:s-trans#psi, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-most#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | e_{t_1}(x)≤Ψ(x)
EDGE: stepN:p12:bd-exit | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | case τ≤T
EDGE: stepN:p12:bd-stay | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | case τ>T
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | Ψ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:bd-concl@L265-L265 | the most-section T,eta,rho=eta_0 are used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:mo-E
KIND: step
TITLE: The exceptional set
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269
CONTRACT_ID: stepN:p12:mo-E
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data bpN:p12:s-setting#data (n≥1, R,s>0, h, f, K, ε>0); bpN:p12:s-most#data; ε∈(0,1], η∈(0,η_0]
SOURCE_QUANTIFIERS: ε; η
SOURCE_CONCLUSION: E=K∖Γ_η is measurable, E⊂K and η Vol E≤∫_EΨ≤∫_KΨ≤A√ε, hence Vol E≤A√ε/η, i.e. Vol E≤ofReal(A√ε/η)
CONSTANT_SCOPE: A=A_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:good, bpN:p12:bad, bpN:p12:stopped, bpN:p12:ext-markov, bpN:p12:s-most#data, bpN:p12:s-setting#data, bpN:p12:s-trans#psi
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | E measurable
EDGE: bpN:p12:bad | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | Ψ≥η on E
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | ∫_KΨ≤A_1√ε, Ψ Borel
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | Markov inequality
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | A, η
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-E@L269-L269 | Psi is the section-defined stopped functional
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:mo-z
KIND: step
TITLE: The solution
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270
CONTRACT_ID: stepN:p12:mo-z
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x∈Γ_η; maximal solution γ_x; Proposition ham-reduction
SOURCE_QUANTIFIERS: x∈K∖E
SOURCE_CONCLUSION: z=γ_x (extended by x outside (T_−,T_+)) satisfies z(0)=x, [0,T]⊂(T_−,T_+) with T_−<0, IsSolutionOn H B(0,R) [0,T] z and ¦z(t)_2−x_2¦<η on [0,T]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p12:good, bpN:p12:s-flow#data, bpN:p12:s-most#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270 | IsSolIn X_H W_0 ⇒ IsSolutionOn H B(0,R)
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270 | definition of Γ_η gives T<T_+ and the bound
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270 | γ_x, T_±
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270 | T
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:mo-z@L270-L270 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:s-mean#data
KIND: definition
TITLE: Section data of §s-mean: constants ε_0, A=13A_1
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:s-mean#data@L275-L275
PROOF_SOURCE: -
CONTRACT_ID: bpN:p12:s-mean#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed n≥1,R,s>0,h,f,K and their analytic/rank/compactness hypotheses; A_1 is the fixed-data constant defined in stopped; epsilon has not yet been selected
SOURCE_QUANTIFIERS: fixed n,R,s,h,f,K and hypotheses; define A,epsilon_0; then ε∈(0,1] and the supplied family Φ with the frozen flow premise
SOURCE_CONCLUSION: defines the constants of the proof of avg-mean: ε_0=1, A=13A_1; ε∈(0,1]; Φ as in the theorem
CONSTANT_SCOPE: A,ε_0 depend on n,R,s,h,K only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:stopped, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-mean#data@L275-L275 | A=13A_1
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#bpN:p12:s-mean#data@L275-L275 | R, K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data for coverage item p12:prose-L275-L275; consumers: me-mean, me-markov
```

```text
NODE: stepN:p12:me-flow
KIND: step
TITLE: The family is the flow
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278
CONTRACT_ID: stepN:p12:me-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x∈K; Φ x solution on [0,T] with Φ x 0=x (the flow premise of avg-mean)
SOURCE_QUANTIFIERS: x∈K
SOURCE_CONCLUSION: [0,T]⊂(T_−(x),T_+(x)), Φ x=γ_x on [0,T]; K⊂Ω_T and (Φ x t)_2=I(t,x) for t∈[0,T]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:gen-maximal, bpN:p12:s-flow#data, bpN:p12:s-mean#data, bpN:p12:s-setting#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278 | IsSolutionOn ⇔ IsSolIn X_H W_0
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278 | a solution through x on [0,T] lies in the maximal one and equals γ_x
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278 | γ_x, T_±, Ω_T
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278 | Φ, ε
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-flow@L278-L278 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:me-cont
KIND: step
TITLE: The error is continuous on $K$
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280
CONTRACT_ID: stepN:p12:me-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: me-flow; averagingError is the real sSup (Remark avg-totality); K compact
SOURCE_QUANTIFIERS: ε∈(0,1]; x∈K
SOURCE_CONCLUSION: e^Φ_ε(x)=max_{[0,T]}¦I(t,x)−I_0¦=:m(x) for x∈K; m continuous on Ω_T⊃K, bounded and Borel on K, so e^Φ_ε is integrable on K (agrees with a continuous function, Vol K<∞)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:me-flow, bpN:p0:avg-totality, bpN:p0:avg-error#averagingError, bpN:p12:ext-markov#compact-max, bpN:p12:flow, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-mean#data, bpN:p12:ext-markov
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:me-flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | (Φ x t)_2=I(t,x) and K⊂Ω_T
EDGE: bpN:p0:avg-totality | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | the supremum is a true maximum for a continuous function on [0,T]
EDGE: bpN:p0:avg-error#averagingError | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | e^Φ_ε is the sSup
EDGE: bpN:p12:ext-markov#compact-max | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | m continuous on Ω_T
EDGE: bpN:p12:flow | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | Ω_T open, I continuous on 𝒟
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | the supplied Phi and fixed epsilon are the mean-section data
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-cont@L280-L280 | boundedness and attainment on compact time and K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:me-good
KIND: step
TITLE: Bound by $\Psi$ on good data
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282
CONTRACT_ID: stepN:p12:me-good
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Γ_ρ (good lemma with η=ρ); stopped estimate; τ(x)>T on Γ_ρ
SOURCE_QUANTIFIERS: x∈Γ_ρ
SOURCE_CONCLUSION: τ(x)>T, t_1=T and m(x)=e_T(x)≤Ψ(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:good, bpN:p12:stopped, stepN:p12:me-cont, bpN:p12:s-trans#psi, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-most#data, bpN:p12:s-mean#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | Γ_ρ
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | e_{t_1}≤Ψ
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | m(x)=e^Φ_ε(x)
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | Ψ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | the most-section T,eta,rho=eta_0 are used here
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-good@L282-L282 | the supplied Phi and fixed epsilon are the mean-section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:me-bad
KIND: step
TITLE: Bound on bad data
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284
CONTRACT_ID: stepN:p12:me-bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x∈K∖Γ_ρ; the supplied solution has actions in B(0,R); ¦I_0¦<R/2; bad lemma with η=ρ
SOURCE_QUANTIFIERS: x∈K∖Γ_ρ
SOURCE_CONCLUSION: m(x)≤R+R/2 (the bound 3R/2) and ρ Vol(K∖Γ_ρ)≤∫Ψ≤A_1√ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:bad, bpN:p12:stopped, bpN:p12:ext-markov, stepN:p12:me-cont, bpN:p0:sol#IsSolutionOn, bpN:p12:good, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-most#data, bpN:p12:s-mean#data, bpN:p12:s-trans#psi
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:bad | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | Ψ≥ρ on K∖Γ_ρ
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | ∫_KΨ≤A_1√ε
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | Markov inequality
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | m(x)=e^Φ_ε(x)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | the supplied solution has actions in B(0,R)
EDGE: bpN:p12:good | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | Γ_ρ
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | the most-section T,eta,rho=eta_0 are used here
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | the supplied Phi and fixed epsilon are the mean-section data
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-bad@L284-L284 | Psi is the section-defined stopped functional
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
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
DEPS: stepN:p12:me-good, stepN:p12:me-bad, stepN:p12:me-cont, bpN:p12:stopped, bpN:p12:s-mean#data, bpN:p12:s-setting#data, bpN:p12:s-flow#data, bpN:p12:s-most#data, bpN:p12:s-trans#psi
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:me-good | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | bound by Ψ on Γ_ρ
EDGE: stepN:p12:me-bad | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | bound on the bad data
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | m integrable, nonnegative
EDGE: bpN:p12:stopped | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | ∫_KΨ≤A_1√ε
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | A=13A_1
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | ρ=R/8, R
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
EDGE: bpN:p12:s-most#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | the most-section T,eta,rho=eta_0 are used here
EDGE: bpN:p12:s-trans#psi | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-mean@L286-L286 | Psi is the section-defined stopped functional
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p12:me-markov
KIND: step
TITLE: The Markov clause
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288
CONTRACT_ID: stepN:p12:me-markov
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m continuous on K; ∫_Km≤A√ε; κ>0
SOURCE_QUANTIFIERS: κ>0
SOURCE_CONCLUSION: E={x∈K:m(x)>λ}, λ=A√ε/κ, is measurable, E⊂K, Vol E≤κ, and ¦(Φ x t)_2−x_2¦≤m(x)≤λ for x∈K∖E, t∈[0,T]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p12:me-mean, stepN:p12:me-cont, bpN:p12:ext-markov, bpN:p12:s-mean#data, bpN:p12:s-setting#data, bpN:p12:s-flow#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p12:me-mean | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | ∫_Km≤A√ε
EDGE: stepN:p12:me-cont | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | m continuous on K; (Φ x t)_2=I(t,x)
EDGE: bpN:p12:ext-markov | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | Markov inequality
EDGE: bpN:p12:s-mean#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | A
EDGE: bpN:p12:s-setting#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | standing R,s,h,f,K,epsilon and/or W_0,F,G,rho used here
EDGE: bpN:p12:s-flow#data | blueprint-N/parts/p12-averaging.tex#stepN:p12:me-markov@L288-L288 | maximal flow Phi_t, I(t,x), Omega_t or T_± used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p12:ext-dep#complete-contraction
KIND: step
TITLE: Complete-metric contraction at the family-space carrier
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#complete-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a closed Picard tube or bounded continuous matrix-family space with sup distance; contraction factor q<1
SOURCE_QUANTIFIERS: the two complete family spaces and their contraction operators
SOURCE_CONCLUSION: a continuous fixed family exists and Picard iterates converge uniformly
CONSTANT_SCOPE: choices depend on N,W,F,x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L37 invokes Banach contraction on bounded continuous families. N7 ext-banach is stated only for closed subsets of finite-dimensional R^N and cannot be applied here. The general complete-metric version is K bp:p1:ext-banach, not currently an N import. Obtain a SPEC/import ruling for it or provide a source proof; this node is not a newly assumed external.
```

```text
NODE: bpN:p12:ext-dep#derivative-limit
KIND: step
TITLE: Uniform derivative limit on an open real ball
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#derivative-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C1 initial-data maps y_m and uniform convergence of y_m,D_x y_m to continuous y,Y on the local domain
SOURCE_QUANTIFIERS: the local open initial ball and the sequence and limits
SOURCE_CONCLUSION: D_x y exists, equals Y, and is jointly continuous
CONSTANT_SCOPE: choices depend on N,W,F,x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the last L37 inference uses a sequence derivative-limit theorem on an open real ball without proof or admitted input at that type. ext-tsum needs summable derivative bounds and does not imply this sequence theorem. Expose the tool rather than silently assuming the C1-dependence claim.
```

```text
NODE: bpN:p12:ext-dep#picard
KIND: step
TITLE: Trapping ball, time selection and Picard family
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#picard
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C1 on open W⊂R^N; x_0∈W
SOURCE_QUANTIFIERS: N,W,F,x_0; then delta,L,Lambda,r,a,q and iterates
SOURCE_CONCLUSION: choose compact B=closedBall(x_0,2delta)⊂W, L=sup_B¦F¦ and Lambda=sup_B‖DF‖, r=delta/2 and a>0 with aL<delta/2 and q=aLambda<1; y_0=x, y_{m+1}=x+integral_0^t F(y_m) stay in closedBall(x,delta/2), are continuous and converge uniformly to y in W satisfying the integral equation
CONSTANT_SCOPE: choices depend on N,W,F,x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact, K:bp:p1:ext-mvt, K:bp:p1:ext-integral, bpN:p12:ext-dep#complete-contraction
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p12:ext-dep#complete-contraction | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Substantive construction and time/ball choice at L37; no averaging premise or normalized Part-5 flow is assumed.
```

```text
NODE: bpN:p12:ext-dep#linear
KIND: step
TITLE: Derivative iterates and linear Volterra fixed family
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#linear
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the iterates and trapping choices constructed in the Picard step
SOURCE_QUANTIFIERS: local families, m, and continuous matrix families Z
SOURCE_CONCLUSION: D_x y_0=Id; Y_{m+1}=Id+integral DF(y_m)Y_m=D_x y_{m+1}; sup‖Y_m‖≤1/(1-q); Z↦Id+integral DF(y)Z is a contraction with continuous fixed point Y; uniform continuity of DF gives d_m→0 and sup‖Y_{m+1}-Y‖≤q sup‖Y_m-Y‖+a d_m/(1-q)→0
CONSTANT_SCOPE: choices depend on N,W,F,x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-dep#picard, bpN:p12:ext-dep#complete-contraction, bpN:p3:ext-compact, bpN:p3:ext-calc, K:bp:p1:ext-integral, bpN:p12:ext-dep#parameter-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-dep#picard | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p12:ext-dep#complete-contraction | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p12:ext-dep#parameter-integral | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | differentiate the Picard integral in the initial-data parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Separate derivative/Volterra and convergence obligations in the source sketch; not hypotheses of the parent claim.
```

```text
NODE: bpN:p12:ext-dep#identify
KIND: step
TITLE: Identify the limit derivative and variational equation
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#identify
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the families constructed by picard and linear and their convergence
SOURCE_QUANTIFIERS: the local time/initial-data domain
SOURCE_CONCLUSION: D_x y=Y is jointly continuous; y(0,x)=x; partial_t y=F(y); Y=Id+integral DF(y)Y
CONSTANT_SCOPE: choices depend on N,W,F,x_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p12:ext-dep#picard, bpN:p12:ext-dep#linear, bpN:p12:ext-dep#derivative-limit, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p12:ext-dep#picard | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p12:ext-dep#linear | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: bpN:p12:ext-dep#derivative-limit | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37 | input to the explicit local differentiable-dependence construction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Final derivative identification uses the uncited sequence derivative-limit input recorded separately.
```

```text
NODE: bpN:p12:ext-dep#parameter-integral
KIND: step
TITLE: Differentiate the real parameter integral of a continuous C1 family
STATEMENT_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
PROOF_SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
CONTRACT_ID: bpN:p12:ext-dep#parameter-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a compact time segment and an open real initial-data ball; the integrand and its initial-data derivative are jointly continuous, with the local domination supplied by the trapping bounds
SOURCE_QUANTIFIERS: local time and initial-data domains; integrand and its parameter derivative
SOURCE_CONCLUSION: the time integral is C1 in the initial-data parameter and its derivative is the integral of the parameter derivative, continuously in the remaining time parameter
CONSTANT_SCOPE: local domination from the trapping data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L37 asserts the parameter derivative formula for the Picard integrals. K ext-integral supplies integration/FTC but not differentiation in a real parameter; N4 ext-param is stated for a holomorphic parameter. No real C1 parameter-integral theorem or proof is admitted here. Record the exact real input or its proof rather than silently applying the holomorphic theorem to a merely C1 field.
```

## Replacement coverage block

```text
ITEM: bpN:p12:ext-dep
KIND: claim
SOURCE: blueprint-N/parts/p12-averaging.tex#bpN:p12:ext-dep@L37-L37
DISPOSITION: NODE bpN:p12:ext-dep, bpN:p12:ext-dep#parameter-integral, bpN:p12:ext-dep#complete-contraction, bpN:p12:ext-dep#derivative-limit, bpN:p12:ext-dep#picard, bpN:p12:ext-dep#linear, bpN:p12:ext-dep#identify
REASON: inline proof has separate trapping/Picard, derivative/Volterra and derivative-identification obligations; complete-metric contraction, real parameter differentiation and uniform derivative-limit inputs are exposed as SOURCE_GAP steps pending a source proof or authorized exact import
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p12
REVIEWER: -
```

## Checks and handoff

Original-packet read-only Python checks: 89 distinct nodes, 321 EDGE records, 122 coverage items; all local prerequisites resolve in the combined packet set; every local node is reachable from one of the six N roots; no cycle in those closures. Every syntactic source range is within the pinned file. The semantic use-site errors in F5 are not detected by that bounds check. D28 manifest path/export/contract/ABI identity comparisons pass for all four anchors.

The frozen rank is the global disjunction, including nonzero frequency in branch B. Period one, max norms and 2π factors remain intact. Error is from the initial action, not a corrected/shifted datum. Exceptional measures are absolute phase volumes. Constants precede epsilon/eta/Phi. MEAN's supplied closed-interval solution is identified by ham-reduction and all-interval maximality; MOST's actual solution existence remains a conclusion.

No lint_sources.sh or targeted build was run: this brief explicitly prohibits Lean, and the source linter invokes Lean ABI checks. No axiom/implementation receipt is inferred. This is a slice review, not global graph acceptance. Only `docs/graph/N/reviews/N-p12-review.md` is authored.

Final report verification: `inp_depgraph_apply_review.py ... --dry-run` parses every replacement and resolves every FAIL row. Additional read-only checks found no unresolved prerequisites or cycles after overlaying the proposed blocks, and exact agreement between each DEPS list and its EDGE targets. Both theorem anchors retain all original frozen identity, source-statement, statement-locator and proof-locator fields. Input source/packet hashes were rechecked unchanged. `git diff --check -- docs/graph/N/reviews/N-p12-review.md` passed.
