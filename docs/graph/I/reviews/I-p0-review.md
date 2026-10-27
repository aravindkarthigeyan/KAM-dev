# I-p0 slice topology review

Reviewer: `sol-review-I-p0` (Codex), 2026-10-27. Marker: `rev-I-p0`.

## Verdict: FAIL

The 34 frozen identities match, and the four theorem contracts preserve the frozen hypotheses, quantifiers, conclusions and constant scopes. The packet nevertheless needs seven node repairs and four supplemental coverage dispositions. One definition contract includes an extra property, one direct edge is spurious, and several proof/use locators are inaccurate. No frozen declaration change is proposed.

Read the complete REVIEW-BRIEF and SPEC; all Part 0 raw source and both slice packets; the imports packet; the exact 30 frozen definition bodies and four theorem signatures; and the cited Part 2, 5, 6 and 8 proof units. Checked later owners of the Part 0 derived assertions in Parts 6–7, the relevant totality/remark references in Parts 1–2/5/8, and the K domain-openness proof. The review uses no implementation, provider, Lean-build or proof-status evidence. Manifest comparison uses only identity fields. Source-PDF errata from earlier tasks are not evidence for this graph review.

## Per-node results

Every row includes an independent check of SOURCE_HYPOTHESES, SOURCE_QUANTIFIERS, SOURCE_CONCLUSION and CONSTANT_SCOPE against the indicated Part 0 range and frozen declaration. All rows also pass the manifest identity tuple check: file, export, anchor ID, contract ID/version and ABI hash. “PASS” is source/topology fidelity, not theorem proof status. The implicit dimension in definitions is read from their finite-coordinate carriers; no positivity or regularity hypothesis is inferred merely from total fderiv/inverse/integral syntax.

| Node ID | Verdict | Source spans reread | Reason / check |
|---|---|---|---|
| `bpI:p0:domains#complexStrip` | PASS | L41-L47, KAM/Frozen/Defs/ComplexStrip.lean:23 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:domains#actionNbhd` | FAIL | L41-L47, KAM/Frozen/Defs/ActionNbhd.lean:24 | SOURCE_CONCLUSION adds the unfrozen assertion “B_r is open” to the declaration contract. Separate that property from the frozen set definition (coverage repair below). |
| `bpI:p0:diophantine#IsDiophantine` | PASS | L49-L54, KAM/Frozen/Defs/IsDiophantine.lean:24 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:hamiltonian#hamiltonianVectorField` | PASS | L56-L63, KAM/Frozen/Defs/HamiltonianVectorField.lean:24 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:hamiltonian#hamiltonianVectorFieldC` | PASS | L56-L63, KAM/Frozen/Defs/HamiltonianVectorFieldC.lean:25 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:realham#realHamiltonian` | PASS | L65-L72, KAM/Frozen/Defs/RealHamiltonian.lean:23 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:realham#frequencyMap` | PASS | L65-L72, KAM/Frozen/Defs/FrequencyMap.lean:25 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#IsPrimaryOnStrip` | PASS | L74-L92, KAM/Frozen/Defs/IsPrimaryOnStrip.lean:25 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#IsRealOnReals` | PASS | L74-L92, KAM/Frozen/Defs/IsRealOnReals.lean:23 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#dotC` | PASS | L74-L92, KAM/Frozen/Defs/DotC.lean:23 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#omegaZero` | PASS | L74-L92, KAM/Frozen/Defs/OmegaZero.lean:23 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#invarianceError` | PASS | L74-L92, KAM/Frozen/Defs/InvarianceError.lean:25 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#gramMatrix` | PASS | L74-L92, KAM/Frozen/Defs/GramMatrix.lean:27 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#normalFrame` | PASS | L74-L92, KAM/Frozen/Defs/NormalFrame.lean:28 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:stripdata#torsion` | PASS | L74-L92, KAM/Frozen/Defs/Torsion.lean:29 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:extended#energyAverage` | PASS | L96-L109, KAM/Frozen/Iso/Defs/EnergyAverage.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:extended#extendedTorsion` | PASS | L96-L109, KAM/Frozen/Iso/Defs/ExtendedTorsion.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:extended#extendedTorsionAverage` | PASS | L96-L109, KAM/Frozen/Iso/Defs/ExtendedTorsionAverage.lean:38 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:bordered#borderedHessian` | PASS | L111-L120, KAM/Frozen/Iso/Defs/BorderedHessian.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:hamsol#IsHamiltonianSolutionOn` | PASS | L122-L128, KAM/Frozen/Iso/Defs/IsHamiltonianSolutionOn.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:primaries#radiusSq` | PASS | L130-L137, KAM/Frozen/Iso/Defs/RadiusSq.lean:36 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:primaries#radius` | PASS | L130-L137, KAM/Frozen/Iso/Defs/Radius.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:primaries#primary1` | PASS | L130-L137, KAM/Frozen/Iso/Defs/Primary1.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:primaries#primary2` | PASS | L130-L137, KAM/Frozen/Iso/Defs/Primary2.lean:36 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:primaries#CollisionFree` | PASS | L130-L137, KAM/Frozen/Iso/Defs/CollisionFree.lean:40 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:restricted#restrictedHamiltonian` | FAIL | L139-L153, KAM/Frozen/Iso/Defs/RestrictedHamiltonian.lean:42 | The radius/primary EDGE locators L141 point to begin{align*}, not to the definitions of r_j and a_j used here at L140. |
| `bpI:p0:restricted#restrictedVectorField` | FAIL | L139-L153, KAM/Frozen/Iso/Defs/RestrictedVectorField.lean:41 | Spurious direct radiusSq dependency: its EDGE is the Hamiltonian kinetic term at L142, not the vector field at L144. RadiusSq is only transitive through radius. The three r_j/primary locators also point to L141 instead of L140. |
| `bpI:p0:restricted#IsRestrictedSolutionOn` | FAIL | L139-L153, KAM/Frozen/Iso/Defs/IsRestrictedSolutionOn.lean:39 | The CollisionFree EDGE points to L147, which introduces the solution name. The actual collision-free and derivative clauses are at L148. |
| `bpI:p0:nearcircular#NearCircular` | PASS | L155-L168, KAM/Frozen/Iso/Defs/NearCircular.lean:40 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:keplerborder#keplerBorder` | PASS | L170-L180, KAM/Frozen/Iso/Defs/KeplerBorder.lean:37 | Exact definition, carrier and direct dependencies; no constants introduced. |
| `bpI:p0:g1` | FAIL | L215-L253, KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean:44; Part 2 L329–355 | PROOF_SOURCE L329–337 contains only the Part 2 theorem statement, ending before begin{proof}; the proof is L338–355. Its delegation EDGE uses the Part 0 label in Part 2 rather than the actual bpI:p2:g1 unit/frozen binding. |
| `bpI:p0:head` | PASS | L268-L286, KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean:45; Part 5 L180–185 | Frozen contract matches: ε=0 allowed; B′ need not be nonempty; ε₀ before f, ε, z₀; all-time existence and uniqueness on every open interval (a,b) containing zero. Proof-step ownership and direct statement edges are correct. |
| `bpI:p0:kepler` | FAIL | L299-L303, KAM/Frozen/Iso/Theorems/KeplerBorderedDet.lean:43; Part 6 L37–48 | PROOF_SOURCE L37–42 contains only the Part 6 theorem statement; the proof is L43–48. Its delegation EDGE names bpI:p0:kepler in Part 6 instead of bpI:p6:kepler. |
| `bpI:p0:r3bp` | FAIL | L305-L319, KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean:48; Part 8 L214–232 | The primary₂ EDGE points at L311, which contains only primary₁; primary₂ occurs at L312. No source-field or quantifier defect found. |

## Contract and conditional-use checks

- I-G1 fixes all of `(n,τ,ρ,ρ∞,M,σK,σB,σT,μ,γbar,σω,ν,ωstar)` before choosing `C₁,C₂,C₃`, and only then quantifies `D,H,K,s,γ,e,E₀`. Part 2's reduced dependence list is a stronger claim of that proving node; it must not replace the anchor's list. The packet correctly retains all five derivative bounds, the two row-sum inverse bounds, Diophantinity of ωstar, both ν endpoint inequalities, nonnegative e, pointwise complex energy equality and non-strict closeness. The proof delegate explicitly checks (I1)–(I13) at L341–354. Neither a frame hypothesis for K∞ nor an extra endpoint-margin conclusion was inserted.
- The extended torsion uses `DH(K)N` off invariance, real frequency entries in its last column, and a complex entrywise average. The normal-frame inverse and Bochner integral definitions remain total definitions without hidden invertibility/integrability premises. The last row is not replaced by ωᵀ.
- I-HEAD retains the nonempty B but allows empty B′. The Part 5 proof first handles B′=∅, then chooses ε₀ before f,ε,z₀, including ε=0. Its nonempty branch checks the hypotheses of the local tori/confinement and ODE results in its child proof steps; no part-level nonempty-B′ package is added as a frozen premise. The root depends on those proof-step nodes, which own the local package applications. Likewise I-G1 delegates its internal standing packages to bpI:p2:g1; the frozen definition nodes do not acquire Part 1/2 standing hypotheses.
- I-KEPLER retains κ,Ω>0 and the positive-L subtype, and concludes both equality and strict positivity. The derivative-Hessian identification in Part 0 is a separate derived fact, not part of the frozen keplerBorder definition.
- I-R3BP retains openness and nonemptiness outside the coupling quantifier; μ₀,d,R precede μ,z₀, `0<μ₀≤1/2`, μ=0 is included, and all four physical bounds hold for every real time. The region is μ-independent, and uniqueness requires only the restricted solution predicate on `(a,b)`, not a second confinement assumption. The unlabelled opening of its proof directly uses topology and the constants package, and both edges are present. The later conditional applications belong to the seven child steps. Max norms in I-G1/I-HEAD are not substituted for physical Euclidean radius.

No provenance, negative-use or forward-pointer edge is retained in this slice. The Part 0 totality and reading remarks are dispensable commentary on guards and the exact contracts: the cited facts are supplied by hypotheses or their actual lemma owners, so the remarks do not become cyclic prerequisites. Their exclusion is accepted. The notation/carrier prose at L12–37 is also accepted as conventions, not a local hypothesis package; the graph header records its norms, periods and phase-space order. This does not authorize dropping local package edges in later slices.

## Coverage failures

The original packet has 62 items. These four additional claim items are missing: their assertions occur inside definition environments but are not themselves frozen definitions. Record their dispositions so a claim is not silently absorbed into an anchor contract or omitted. They require no new mathematical proof or new graph node: their later owners already exist, or the independently restated generality is outside root use.

| Coverage item | Verdict | Source span | Reason |
|---|---|---|---|
| `bpI:p0:domains#openness` | FAIL | blueprint-I/parts/p0-conventions.tex#bpI:p0:domains@L43-L44 | Missing inventory disposition. Outside every root closure as an independent arbitrary-B,r assertion: checked the domain-opening use in bpI:p3:hypothesis-d (L282–283), which invokes K:step:p4:h1-open; that owning proof (blueprint/parts/p4-measure.tex L316–319) proves openness for its working domain from the union-of-balls definition. Keep the frozen actionNbhd node as the set definition; the extra Part 0 property is a duplicate pointer, not a stronger frozen contract. |
| `bpI:p0:restricted#hamiltonian-agreement` | FAIL | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L146-L146 | Missing inventory disposition. Alias of the Hamiltonian-field agreement on the open collision-free set proved at bpI:p7:ham-eq (Part 7 L51–70). This derived assertion is not the definition of restrictedVectorField; linking it back from that definition would introduce a cycle. |
| `bpI:p0:nearcircular#witness-uniqueness` | FAIL | blueprint-I/parts/p0-conventions.tex#bpI:p0:nearcircular@L164-L164 | Missing inventory disposition. Alias of the witness identification/uniqueness in bpI:p7:near-circular, statement L267 and proof stepI:p7:nc-sub L272. Keep the existential frozen predicate separate from its derived uniqueness property. |
| `bpI:p0:keplerborder#hessian-agreement` | FAIL | blueprint-I/parts/p0-conventions.tex#bpI:p0:keplerborder@L176-L177 | Missing inventory disposition. Alias of bpI:p6:kep-border (Part 6 L69–108), identifying the bordered Hessian of the explicitly defined complex Kepler Hamiltonian with the frozen matrix after reindexing. The matrix definition alone does not assert this derivative identity. |

All other coverage items PASS. This includes all 34 declaration/theorem mappings, four administrative remarks, six headings, sixteen provenance citations and the two prose regions. The derived claims above are accounted for by the supplemental items rather than by importing pinned papers or making definitions depend on their own consequences.

## Replacement node fragments

Apply these complete blocks only to the named nodes. Their frozen identity and contract-identity fields are unchanged. Review tooling should tag the rewrites for a different delta reviewer; this review does not self-approve its replacements.

```text
NODE: bpI:p0:domains#actionNbhd
KIND: definition
TITLE: Strip, action neighbourhood: KAM.actionNbhd
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:domains@L41-L47
PROOF_SOURCE: -
CONTRACT_ID: kam.actionNbhd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: B subset R^n, r in R
SOURCE_QUANTIFIERS: B, r
SOURCE_CONCLUSION: defines B_r = {I in C^n : exists J in B, max-norm ¦I-J¦ < r} (KAM.actionNbhd); for real I, I in B_r iff exists J in B with ¦I-J¦ < r
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/ActionNbhd.lean
FROZEN_DECL: KAM.actionNbhd
FROZEN_ANCHOR_ID: kam.actionNbhd.v1
FROZEN_ABI_SHA256: b05e2aeddf393c0b232bd809f64d9d8040e0fdf54248c4f880ab1ad98c040f21
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:restricted#restrictedHamiltonian
KIND: definition
TITLE: Restricted Hamiltonian and field: KAM.Iso.restrictedHamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L139-L153
PROOF_SOURCE: -
CONTRACT_ID: iso.restrictedHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: mu, z = (q,p) collision free; r_j = rad(q - a_j(mu))
SOURCE_QUANTIFIERS: mu, z
SOURCE_CONCLUSION: defines Ham^R3_mu(q,p) = ¦p¦_2^2/2 + q_1 p_0 - q_0 p_1 - (1-mu)/r_1 - mu/r_2
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Iso/Defs/RestrictedHamiltonian.lean
FROZEN_DECL: KAM.Iso.restrictedHamiltonian
FROZEN_ANCHOR_ID: iso.restrictedHamiltonian.v1
FROZEN_ABI_SHA256: cb461337f8575c139de5daa594ad98c79c78610a0b84977605a40e168c2365c3
DEPS: bpI:p0:primaries#radius, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#CollisionFree, bpI:p0:primaries#radiusSq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | r_j = rad(q - a_j(mu))
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | a_2(mu)
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | defined on collision-free points
EDGE: bpI:p0:primaries#radiusSq | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L142-L142 | ¦p¦_2^2 = p_0^2+p_1^2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:restricted#restrictedVectorField
KIND: definition
TITLE: Restricted Hamiltonian and field: KAM.Iso.restrictedVectorField
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L139-L153
PROOF_SOURCE: -
CONTRACT_ID: iso.restrictedVectorField
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: mu, z = (q,p) collision free
SOURCE_QUANTIFIERS: mu, z
SOURCE_CONCLUSION: defines V_mu(q,p) = ((p_0+q_1, p_1-q_0), (p_1,-p_0) - (1-mu)/r_1^3 (q-a_1) - mu/r_2^3 (q-a_2))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Iso/Defs/RestrictedVectorField.lean
FROZEN_DECL: KAM.Iso.restrictedVectorField
FROZEN_ANCHOR_ID: iso.restrictedVectorField.v1
FROZEN_ABI_SHA256: 7f23620e590d0b874e5e94198c0e04331fa179347cb63925313f28703115520a
DEPS: bpI:p0:primaries#radius, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#CollisionFree
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | r_j = rad(q - a_j(mu))
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | a_2(mu)
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L140-L140 | defined on collision-free points
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:restricted#IsRestrictedSolutionOn
KIND: definition
TITLE: Restricted Hamiltonian and field: KAM.Iso.IsRestrictedSolutionOn
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L139-L153
PROOF_SOURCE: -
CONTRACT_ID: iso.IsRestrictedSolutionOn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: mu in R, J subset R, z : R -> R^2 x R^2
SOURCE_QUANTIFIERS: mu, J, z
SOURCE_CONCLUSION: defines RSol_mu(J,z): for every t in J, z(t) is collision free and z is differentiable at t with z'(t) = V_mu(z(t))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Iso/Defs/IsRestrictedSolutionOn.lean
FROZEN_DECL: KAM.Iso.IsRestrictedSolutionOn
FROZEN_ANCHOR_ID: iso.IsRestrictedSolutionOn.v1
FROZEN_ABI_SHA256: f8e83a3360d7b983683d6d48e29e232ef15fc8c7a9546eede0512d09d6a00059
DEPS: bpI:p0:primaries#CollisionFree, bpI:p0:restricted#restrictedVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L148-L148 | z(t) collision free
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L148-L148 | z'(t) = V_mu(z(t))
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:g1
KIND: theorem
TITLE: I-G1: isoenergetic a-posteriori KAM
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L215-L253
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L338-L355
CONTRACT_ID: iso.isoenergetic_kam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; tau in R, tau >= n-1; rho, rho_inf in R, 0 < rho_inf < rho; M, sigma_K, sigma_B, sigma_T, mu, gammabar > 0; sigma_omega > 1; nu > 0; omega* in R^n, omega* != 0; for the inner statement: (I1) D open and Z^n-invariant in theta; (I2) H holomorphic on D and Z^n-periodic in theta on D; (I3) Im H = 0 at real phase points of D; (I4) ¦DH¦,¦X_H¦,¦D X_H¦,¦D^2 X_H¦,¦D^2 H¦ <= M on D; (I5) K holomorphic, primary and real on reals on T_rho; (I6) B_mu(K(theta)) subset D and ¦DK(theta)¦ <= sigma_K - mu on T_rho; (I7) det G_K(theta) != 0 and row-sum ¦G_K^{-1}¦ <= sigma_B - mu on T_rho; (I8) det avg(T_H) != 0 for T_H built from (H,K,s omega*), row-sum ¦avg(T_H)^{-1}¦ <= sigma_T - mu; (I9) 1 < s < sigma_omega, nu <= (s-1)¦omega*¦, nu <= (sigma_omega-s)¦omega*¦; (I10) 0 < gamma <= gammabar, omega* in Dio_{gamma,tau}, 0 <= e; (I11) ¦E_{H,K,s omega*}(theta)¦ <= e on T_rho; (I12) ¦Ebar_H(K) - E_0¦ <= e; (I13) C_1 e/(gamma^4 rho^{4 tau}) < 1
SOURCE_QUANTIFIERS: n, tau, rho, rho_inf, M, sigma_K, sigma_B, sigma_T, mu, gammabar, sigma_omega, nu, omega* fixed; then exists C_1, C_2, C_3 > 0; then for all D, H, K, s, gamma, e, E_0 satisfying (I1)-(I13); then exists K_inf, s_inf
SOURCE_CONCLUSION: (O1) K_inf holomorphic, primary and real on reals on T_rho_inf; (O2) E_{H,K_inf,s_inf omega*} = 0 on T_rho_inf; (O3) H(K_inf(theta)) = E_0 for all theta in T_rho_inf (pointwise); (O4) B_{mu/2}(K_inf(theta)) subset D and ¦DK_inf¦ <= sigma_K - mu/2 on T_rho_inf; (O5) ¦K_inf - K¦ <= C_2 e/(gamma^2 rho^{2 tau}) on T_rho_inf; (O6) ¦s_inf omega* - s omega*¦ <= C_3 e/(gamma^2 rho^{2 tau}); with 1 < s_inf < sigma_omega
CONSTANT_SCOPE: C_1, C_2, C_3 chosen after n, tau, rho, rho_inf, M, sigma_K, sigma_B, sigma_T, mu, gammabar, sigma_omega, nu, omega* and before D, H, K, s, gamma, e, E_0; may depend on the former and on none of the latter
FROZEN_FILE: KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean
FROZEN_DECL: KAM.Iso.isoenergetic_kam
FROZEN_ANCHOR_ID: iso.isoenergetic_kam.v1
FROZEN_ABI_SHA256: 165645ea4aeb3d278f29d2336981a4bc924803cea8eaee49efbfca9874203b16
DEPS: bpI:p0:diophantine#IsDiophantine, bpI:p0:domains#complexStrip, bpI:p0:hamiltonian#hamiltonianVectorFieldC, bpI:p0:stripdata#IsPrimaryOnStrip, bpI:p0:stripdata#IsRealOnReals, bpI:p0:stripdata#gramMatrix, bpI:p0:extended#extendedTorsionAverage, bpI:p0:stripdata#invarianceError, bpI:p0:extended#energyAverage, bpI:p2:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L232-L232 | omega* in Dio_{gamma,tau}
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L226-L226 | strips T_rho, T_rho_inf
EDGE: bpI:p0:hamiltonian#hamiltonianVectorFieldC | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L224-L224 | bounds on X_H, D X_H, D^2 X_H
EDGE: bpI:p0:stripdata#IsPrimaryOnStrip | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L226-L226 | K primary on T_rho
EDGE: bpI:p0:stripdata#IsRealOnReals | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L226-L226 | K real on reals
EDGE: bpI:p0:stripdata#gramMatrix | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L228-L228 | det G_K and G_K^{-1} in (I7)
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L229-L229 | avg(T_H) in (I8)
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L233-L233 | E_{H,K,s omega*} in (I11), (O2)
EDGE: bpI:p0:extended#energyAverage | blueprint-I/parts/p0-conventions.tex#bpI:p0:g1@L234-L234 | Ebar_H(K) in (I12)
EDGE: bpI:p2:g1 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L335-L335 | frozen tag binds this proved result to the I-G1 anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:kepler
KIND: theorem
TITLE: I-KEPLER: the classical isoenergetic determinant
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:kepler@L299-L303
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L43-L48
CONTRACT_ID: iso.kepler_bordered_det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa, Omega > 0; L > 0
SOURCE_QUANTIFIERS: kappa, Omega, L
SOURCE_CONCLUSION: det K_{kappa,Omega}(L) = 3 kappa Omega^2 / L^4 and det K_{kappa,Omega}(L) > 0
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Iso/Theorems/KeplerBorderedDet.lean
FROZEN_DECL: KAM.Iso.kepler_bordered_det
FROZEN_ANCHOR_ID: iso.kepler_bordered_det.v1
FROZEN_ABI_SHA256: 3c46c0a138ba6567ea3d7a46bfdd0da666047c423b6222bda82f9cb864193cc8
DEPS: bpI:p0:keplerborder#keplerBorder, bpI:p6:kepler
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p0-conventions.tex#bpI:p0:kepler@L300-L300 | det K_{kappa,Omega}(L)
EDGE: bpI:p6:kepler | blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L40-L40 | frozen tag binds this proved result to the I-KEPLER anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p0:r3bp
KIND: theorem
TITLE: I-R3BP: near-circular region of the restricted three-body problem
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L305-L319
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L214-L232
CONTRACT_ID: iso.restricted_near_circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_-, a_+, e_-, e_+ in R with 0 < a_- < a_+, 0 < e_- < e_+ < 1/4, a_+(1+e_+) < 1; for the inner statement: mu in [0,mu_0), z_0 in N(a_-,a_+,e_-,e_+)
SOURCE_QUANTIFIERS: a_-, a_+, e_-, e_+ fixed; then exists mu_0, d, R in R (0 < mu_0 <= 1/2, d > 0, R > 0); then for all mu in [0,mu_0), z_0 in N; then exists z; then for all a < 0 < b and y
SOURCE_CONCLUSION: N is open and nonempty; and (with the above) exists z : R -> R^2 x R^2 with z(0) = z_0, RSol_mu(R,z), and for all t: rad(q(t)-a_1(mu)) >= d, rad(q(t)-a_2(mu)) >= d, rad(q(t)) <= R, rad(p(t)) <= R; and for all a<0<b and y with y(0) = z_0 and RSol_mu((a,b),y): y(t) = z(t) on (a,b)
CONSTANT_SCOPE: mu_0, d, R depend on a_-, a_+, e_-, e_+ only, not on mu or z_0
FROZEN_FILE: KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean
FROZEN_DECL: KAM.Iso.restricted_near_circular
FROZEN_ANCHOR_ID: iso.restricted_near_circular.v1
FROZEN_ABI_SHA256: 51ef78464ec9887a4af758841d92ff8ebd3a8b16d5455a50490c8df10bf6cc2e
DEPS: bpI:p0:nearcircular#NearCircular, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:primaries#radius, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, stepI:p8:pf-coord, stepI:p8:pf-small, stepI:p8:pf-head, stepI:p8:pf-sol, stepI:p8:pf-bounds, stepI:p8:pf-dist, stepI:p8:pf-uniq, bpI:p8:topology, bpI:p8:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:nearcircular#NearCircular | blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L307-L307 | the region N
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L309-L309 | RSol_mu
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L311-L311 | rad bounds
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L311-L311 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p0-conventions.tex#bpI:p0:r3bp@L312-L312 | a_2(mu)
EDGE: stepI:p8:pf-coord | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L217-L217 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-small | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L219-L219 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-head | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L221-L221 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-sol | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L223-L223 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-bounds | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L225-L225 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-dist | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L227-L227 | proof of the anchor: this step is part of the proof
EDGE: stepI:p8:pf-uniq | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L229-L229 | proof of the anchor: this step is part of the proof
EDGE: bpI:p8:topology | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L215-L215 | cited at this line (proof; \ref{bpI:p8:topology})
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#bpI:p0:r3bp@L215-L215 | cited at this line (proof; \ref{bpI:p8:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Supplemental coverage fragments

```text
ITEM: bpI:p0:domains#openness
KIND: claim
SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:domains@L43-L44
DISPOSITION: EXCLUDED
REASON: Outside every root closure as an independent arbitrary-B,r assertion: checked the domain-opening use in bpI:p3:hypothesis-d (L282–283), which invokes K:step:p4:h1-open; that owning proof (blueprint/parts/p4-measure.tex L316–319) proves openness for its working domain from the union-of-balls definition. Keep the frozen actionNbhd node as the set definition; the extra Part 0 property is a duplicate pointer, not a stronger frozen contract.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p0
REVIEWER: -
```

```text
ITEM: bpI:p0:restricted#hamiltonian-agreement
KIND: claim
SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L146-L146
DISPOSITION: NODE bpI:p7:ham-eq
REASON: Alias of the Hamiltonian-field agreement on the open collision-free set proved at bpI:p7:ham-eq (Part 7 L51–70). This derived assertion is not the definition of restrictedVectorField; linking it back from that definition would introduce a cycle.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p0
REVIEWER: -
```

```text
ITEM: bpI:p0:nearcircular#witness-uniqueness
KIND: claim
SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:nearcircular@L164-L164
DISPOSITION: NODE bpI:p7:near-circular
REASON: Alias of the witness identification/uniqueness in bpI:p7:near-circular, statement L267 and proof stepI:p7:nc-sub L272. Keep the existential frozen predicate separate from its derived uniqueness property.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p0
REVIEWER: -
```

```text
ITEM: bpI:p0:keplerborder#hessian-agreement
KIND: claim
SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:keplerborder@L176-L177
DISPOSITION: NODE bpI:p6:kep-border
REASON: Alias of bpI:p6:kep-border (Part 6 L69–108), identifying the bordered Hessian of the explicitly defined complex Kepler Hamiltonian with the frozen matrix after reindexing. The matrix definition alone does not assert this derivative identity.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p0
REVIEWER: -
```

## Suspected blueprint defects

No new mathematical blueprint defect or pinned-source erratum is established by this slice review. The extra Part 0 assertions about openness, Hamiltonian-field agreement, element uniqueness and the Kepler Hessian are true claims with the later owners identified above; the defect is their graph accounting. The guarded totality discussion does not add hypotheses to the frozen contracts. No errata ledger or blueprint file was edited.

## Verification and limits

- Current I-p0 packet: 34 nodes, 66 edges, 62 coverage items. The unmodified slice checker reports `I-p0: 34 nodes, 66 edges, 62 coverage items, 0 problems`. This validates structure/range bounds, not semantic edge locations or frozen-contract fidelity; it does not detect the failures above.
- All eight corpus hashes match `docs/graph/I/CORPUS.sha256`.
- Independently compared all 34 identity tuples to the manifest: 34 matches, no missing or duplicate anchor. This compares the recorded ABI identities; it does not recompute elaborated ABI hashes or use manifest state fields.
- Review fragment dry-run and owned-path whitespace check are recorded at closeout below. No packet was patched by the reviewer. No Lean execution, provider inspection, state-changing git or generated graph edit was performed.
- The review is scoped to I-p0; it does not certify later slices' source fields, standing-package edges or the eventual global reachability/cycle audit. It requests no new imports and no SOURCE_GAP node: the separated consumed properties already have blueprint proofs.

Input hashes: nodes `edafc729bf2769843540fbf7cc3cff61ccbd37f3620ca3c111d8899139a87080`; coverage `1f341c680195ebb161ce9dd911b84a0c18392dc874ed1b4e22bef739d7c61495`; manifest identity snapshot `4ddae7948f05799a2824ff96b11bcb3025ac3373d98a5098634555919bfffc49`.

Closeout checks: review application with `--dry-run` reports `I-p0: 7 replaced, 0 added, 4 coverage items, 0 unresolved FAILs, 27 PASS nodes`. Fragment field/edge consistency and identity preservation checks pass. Both packet hashes remain those reviewed above. `git diff --check -- docs/graph/I/reviews/I-p0-review.md` passes. Only the requested review file was authored.
