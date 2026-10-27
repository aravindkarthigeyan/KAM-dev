# Independent design audit: Part 2 (G1), audit 1

**Verdict: PASS WITH NOTES for signature design and frozen-type assembly.** No FAIL signature or blocking mathematical mismatch was found in the bounded scope. This is not approval of a proof of G1: 29 in-scope theorem bodies are `sorry`, the cohomological strip interface is pending, and the frozen G1 still depends on `sorryAx`.

Audit date: 2026-10-27. Auditor: dsgn-p2-1. Scope: the Part 1 interface definitions consumed here, carrier infrastructure, every `KAM.Torus` and `KAM.Apost` declaration preceding Part 3, and the G1 assembly example. Part 3 theorem signatures and its assembly are outside this verdict.

## Authority, snapshot and method

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, and `docs/campaign/briefs/AUDIT-DESIGN-P23.md`. Used the manuscript-audit skill as a focused tier-2 correspondence review. The brief already authorizes the report, one draft elaboration and scratch probes; no additional permission gate was needed. No subagents, state-changing git operations, source edits or repairs were used. This is an independent audit of the designer's work, with a separate adversarial pass by this auditor; it does not claim a second independent reviewer.

Snapshot S1: branch `k/design`, HEAD `9cc85c10f7260b6d740268554971b477a636516a`, initially clean tracked working tree. The local draft is ignored by git, so its content hash is essential. Line locators below refer to S1. Appendix A was mechanically compared with the draft and is identical.

| Input | SHA-256 |
|---|---|
| `AGENTS.md` | `5dd4dba201e1f3c88021716f62924a8f1237aaddd000453e4d37edb428dd2668` |
| `docs/PLAN.md` | `3efa6ab0e8da45cf578fcd9c294f330d6db4372fed34c07729e9ba6f6e1fb71f` |
| `docs/DECISIONS.md` | `6c062a76d3ed869d898e565735c828df80cc0737de16cce498f5aff7459869af` |
| `docs/campaign/briefs/AUDIT-DESIGN-P23.md` | `2bdd6e6f9f04ee504fe054201da52314c9d60030cfb31aac3a7ac80a2c19a093` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |
| `.drafts/design/Part23Signatures.lean` | `68ed2cf8d04a99ee2d4321fd3848305bd11ace6b427706d298a039cb45521118` |
| `docs/graph/K/DEPGRAPH.md` | `7d52cb596e4b09b4b4539ca34b8d88d3d172755cb35b59cad77a722f80520141` |
| `blueprint/parts/p0-conventions.tex` | `b22b60acce213ab45b3d588f17191fa284facc1235fea2c52542ce33bceeab3d` |
| `blueprint/parts/p1-analysis.tex` | `2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `KAM/Frozen/Theorems/AposterioriKam.lean` | `2efe30c0f2f0d5f54fb602a2d8eae64cc4aac941af32960774f4e5945b290b39` |

Part 1 branch references inspected read-only: `main` at `53c88837b9d7bf597c94ba7fe664b8403c616ddc`, `k/zmap` at `899839aa6e916b47ea88ccbc18a3db02abfde875`, `k/p1c` at `bc2331e1e29a6e8894bc3a51d6394220406227f2`. These are the refs observed during this audit, rather than the older refs quoted in the design introduction.

Acceptance criteria: classify every scoped declaration; compare each Part 2 result to its graph `STATEMENT_SOURCE` and the actual blueprint text; inspect structure fields, constant dependences, total definitions and frozen consumption; perform the requested elaboration; preserve all gaps and report verification limits. The graph locators were used as an index, not as a substitute for reading the statements and adjacent proofs.

## Complete signature inventory

PASS means the proposed signature/definition matches the specified contract, including the justified departures reviewed below. It does not mean its `sorry` body has been proved. Each row names one declaration; numbers are lines in `.drafts/design/Part23Signatures.lean` at S1. There are 101 named declarations (72 definitions/abbreviations/structures and 29 theorem signatures), plus one G1 assembly example.

| Lean name (line) | Graph node / role | Verdict | Reason |
|---|---|---|---|
| `KAM.cohConst` (39) | `bp:p1:cohomological` | PASS | Exact explicit c(n,τ) in p1, proof immediately after the lemma; pending interface definition. |
| `KAM.cohSolution` (45) | `bp:p1:cohomological` | PASS | Period-one coefficients divided by 2πi k·ω; zero mode is removed by Diophantine.solve; see totality review. |
| `KAM.Torus.sumVec` (58) | `infrastructure; L1` | PASS | Sum.elim linear equivalence; pair max norm agrees with sum-index max norm. |
| `KAM.Torus.norm_sumVec` (61) | `infrastructure; L1` | PASS | Exact isometry, including n = 0. |
| `KAM.Torus.colMat` (64) | `infrastructure; L1` | PASS | Columns are U applied to the coordinate basis, then sumVec. |
| `KAM.Torus.sqMat` (69) | `infrastructure; L1` | PASS | Conjugates a pair-valued endomorphism by sumVec. |
| `KAM.Torus.norm_colMat` (74) | `infrastructure; L1` | PASS | Complex max operator norm is the maximum absolute row sum; no dimension factor. |
| `KAM.Torus.colMat_mulVec` (77) | `infrastructure; L1` | PASS | Exact evaluation identity for every vector. |
| `KAM.Torus.norm_sqMat` (80) | `infrastructure; L1` | PASS | Conjugation by the max-norm isometry preserves operator norm. |
| `KAM.Torus.sqMat_mulVec` (83) | `infrastructure; L1` | PASS | Exact pair-to-matrix evaluation identity. |
| `KAM.Torus.IsPeriodicOn` (88) | `infrastructure; L12` | PASS | Coordinate unit periods; equivalent to integer periods on a translation-invariant strip. |
| `KAM.Torus.IsRealVec` (92) | `infrastructure` | PASS | All components have zero imaginary part at all real arguments. |
| `KAM.Torus.IsRealMat` (96) | `infrastructure` | PASS | Entrywise realness at all real arguments. |
| `KAM.Torus.avg` (100) | `bp:p2:averages; infrastructure` | PASS | Real-torus Bochner integral; matrix entries agree when continuity/integrability is established. |
| `KAM.Torus.cauchy_transpose_fintype` (105) | `bp:p1:cauchy-corollaries; bridge` | PASS | Correct card ι factor, loss δ, max norms; avoids an extra n from a crude transpose estimate. |
| `KAM.Torus.tangentMat` (123) | `bp:p2:objects` | PASS | Exact L = DK; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.linMat` (126) | `bp:p2:objects` | PASS | Exact A = DX_h ∘ K; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.lagrangeMat` (130) | `bp:p2:objects` | PASS | Exact LᵀΩ₀L; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.normalMat` (134) | `bp:p2:objects` | PASS | Exact Ω₀LB with frozen Gram inverse; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.frameMat` (138) | `bp:p2:objects` | PASS | Exact (L N); frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.normalFieldMat` (143) | `bp:p2:objects` | PASS | Exact AN − ∂ωN; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.symDefect` (147) | `bp:p2:objects` | PASS | Exact PᵀΩ₀P − Ω₀; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.reducer` (151) | `bp:p2:objects` | PASS | Exact −Ω₀PᵀΩ₀; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.eta` (155) | `bp:p2:objects` | PASS | Exact Ω₀PᵀΩ₀E; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.etaL` (160) | `bp:p2:objects` | PASS | Exact −NᵀΩ₀E; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.etaN` (164) | `bp:p2:objects` | PASS | Exact LᵀΩ₀E; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.errDerivMat` (168) | `bp:p2:objects` | PASS | Exact DE in matrix coordinates; frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.triangularMat` (172) | `bp:p2:objects` | PASS | Exact (0 T; 0 0); frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.redDefect` (176) | `bp:p2:objects` | PASS | Exact (NᵀΩ₀DE, 0; −LᵀΩ₀DE, (DE)ᵀΩ₀N); frozen pair values are transported by sumVec where needed. |
| `KAM.Torus.eta_eq_sumElim` (182) | `bp:p2:objects` | PASS | Correct signs: upper block −NᵀΩ₀E, lower block LᵀΩ₀E; algebraic identity is unconditional. |
| `KAM.Torus.frozen_agreement` (197) | `bp:p2:frozen-agreement` | PASS | Gram/normal/error identities hold globally; torsion derivative identity and inverse identities are restricted to the open nondegenerate strip; average bridge assumes continuity. |
| `KAM.Apost.Params` (221) | `bp:p2:standing` | PASS | Exactly n ≥ 2, τ ≥ n−1 and four positive size bounds. |
| `KAM.Apost.Standing` (230) | `bp:p2:standing` | PASS | Exactly the local standing assumption, extending Params; the blueprint expressly discards the unused Dh bound. |
| `KAM.Apost.Admissible` (247) | `bp:p2:admissible` | PASS | Positive r and β, 0 ≤ ε ≤ 1, and A1–A6; no computed-frame conclusion is assumed. |
| `KAM.Apost.kappa` (271) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.aExp` (272) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.cR` (273) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.mSize` (274) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.Theta` (275) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_X` (276) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_T` (277) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_Omega` (278) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_sym` (279) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_red` (280) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_xi0` (281) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_xiN` (283) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_g` (284) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_xi` (286) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_DK` (287) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_lin` (288) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_E` (290) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_G` (292) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_B` (293) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_DN` (294) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_DX` (295) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.C_DT` (297) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.c_step` (299) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.c_sum` (301) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.c_star` (303) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.delta0` (305) | `bp:p2:constants` | PASS | Literal formula in the ordered constants display; arguments are a subset of the allowed standing parameters, with μ only for c_star and widths only for delta0. |
| `KAM.Apost.constants_spec` (311) | `bp:p2:constants` | PASS | All listed constants ≥ 1, κ ≥ 1, a ≥ 4, positive δ₀ ≤ 1; no extra dependence. |
| `KAM.Apost.matrix_facts` (332) | `bp:p2:matrix` | PASS | All four items, including attained operator norm and block-diagonal equality; Ω₀ norm equality guarded by 0 < n. |
| `KAM.Apost.averages` (353) | `bp:p2:averages` | PASS | Linearity, integrability, entrywise/realness and derivative-average identities; Banach-valued extension is explicit L11. |
| `KAM.Apost.cohR` (375) | `bp:p2:cohomological` | PASS | Componentwise scalar solution, independent of strip width and loss. |
| `KAM.Apost.cohomological` (382) | `bp:p2:cohomological` | PASS | Both solution and matrix a-priori clauses with cR γ⁻¹δ^(−κ); uniqueness has no boundedness premise. |
| `KAM.Apost.hamiltonian` (403) | `bp:p2:hamiltonian` | PASS | Items (a)–(e), including the iterated-derivative norm, periodic/real Jacobian and M‖w‖² remainder. |
| `KAM.Apost.periodicity` (433) | `bp:p2:periodicity` | PASS | Full object list, action and primitive coefficients; inverse-dependent list and realness under the stated determinant/realness conditions. |
| `KAM.Apost.frequency` (460) | `bp:p2:frequency` | PASS | Only A3,A4,A6, image inclusion, ε ≤ 1 and positive r; reproduces all three inequalities. |
| `KAM.Apost.frame_basic` (469) | `bp:p2:frame-basic` | PASS | Only holomorphy and A2–A4; conditional error/frequency clauses preserve (c),(d); continuity of real torsion included. |
| `KAM.Apost.frame_identities` (504) | `bp:p2:frame-identities` | PASS | All six exact identities; correct signs and (2,2) reducibility block, with no primary/invariance premise. |
| `KAM.Apost.exactness` (527) | `bp:p2:exactness` | PASS | Both vanishing averages; no Gram inverse is used in ηN, so removing det G for that notation is justified L9. |
| `KAM.Apost.geometry` (535) | `bp:p2:geometry` | PASS | Same admissibility, 0 < δ ≤ 1, 2δ < r, six estimates and two strip levels. |
| `KAM.Apost.triU` (555) | `bp:p2:triangular` | PASS | Exactly 𝓡ηN; constant/vector/matrix carriers agree. |
| `KAM.Apost.triXi0` (557) | `bp:p2:triangular` | PASS | Exactly ⟨T⟩⁻¹(⟨ηL⟩ + ⟨T triU⟩); constant/vector/matrix carriers agree. |
| `KAM.Apost.triXiN` (560) | `bp:p2:triangular` | PASS | Exactly triXi0 − triU; constant/vector/matrix carriers agree. |
| `KAM.Apost.triGL` (562) | `bp:p2:triangular` | PASS | Exactly T triXiN − ηL; constant/vector/matrix carriers agree. |
| `KAM.Apost.triXiL` (564) | `bp:p2:triangular` | PASS | Exactly 𝓡 triGL; constant/vector/matrix carriers agree. |
| `KAM.Apost.triangular` (569) | `bp:p2:triangular` | PASS | All hypotheses and (a)–(d); mean cancellation, both equations, four bounds and realness. Component equations recover the omitted redundant block equation. |
| `KAM.Apost.xi` (601) | `bp:p2:correction` | PASS | Sum.elim of the two actual triangular solutions for the attached torsion and error data. |
| `KAM.Apost.correction` (607) | `bp:p2:correction` | PASS | Actual Pξ converted back to the frozen pair carrier. |
| `KAM.Apost.correction_spec` (612) | `bp:p2:correction` | PASS | Holomorphy/periodicity/realness and all five bounds with exact γ and δ powers and strip losses. |
| `KAM.Apost.newtonMap` (634) | `bp:p2:newton-error` | PASS | Equals K + correction on T_w and K elsewhere, exactly as prescribed. |
| `KAM.Apost.sMat` (639) | `bp:p2:newton-error` | PASS | Exactly I − Ω₀ E_sym. |
| `KAM.Apost.linError` (644) | `bp:p2:newton-error` | PASS | Exactly E_red ξ + Ω₀ E_sym ∂ωξ, with the positive sign. |
| `KAM.Apost.quadRemainder` (650) | `bp:p2:newton-error` | PASS | Exactly X(K + ΔK) − X(K) − DX(K)ΔK on the working strip; L16 is valid. |
| `KAM.Apost.newton_error` (657) | `bp:p2:newton-error` | PASS | Both extra smallness inequalities, domain inclusion, S inverse bound, exact error identity and quadratic bound. |
| `KAM.Apost.perturbation` (672) | `bp:p2:perturbation` | PASS | All six conclusions and original hypotheses; d ≥ 0 and β > 0 follow from hd on the nonempty strip and d < β. |
| `KAM.Apost.step` (697) | `bp:p2:step` | PASS | Same admissibility and c_step smallness; all six items, including distinct 2δ/3δ losses and inverse differences. |
| `KAM.Apost.deltaSeq` (725) | `bp:p2:schedule` | PASS | Exactly 2^(−s)δ₀. |
| `KAM.Apost.rSeq` (727) | `bp:p2:schedule` | PASS | Exactly ρ − 8δ₀(1 − 2^(−s)). |
| `KAM.Apost.epsSeq` (731) | `bp:p2:schedule` | PASS | Base e and explicit quadratic recurrence; ordinary Nat structural recursion, no proof-dependent choice. |
| `KAM.Apost.dSeq` (738) | `bp:p2:schedule` | PASS | Exactly C_DK ε_s/(γ²δ_s^a). |
| `KAM.Apost.schedule` (743) | `bp:p2:schedule` | PASS | All five schedule claims; γ and e are irrelevant to these radius-only identities. |
| `KAM.Apost.error_decay` (750) | `bp:p2:error-decay` | PASS | Correct q, exponent 2^s−1, full j ranges and geometric bounds; summability accompanies each tsum. |
| `KAM.Apost.kamSeq` (771) | `bp:p2:iteration` | PASS | Base K, successor the prescribed Newton map on r_s−2δ_s; no arbitrary sequence hypothesis. |
| `KAM.Apost.iteration` (777) | `bp:p2:iteration` | PASS | Exactly H2–H4 plus error/smallness; all six invariant groups and finite sums preserved for explicit kamSeq. |
| `KAM.Apost.kamLimit` (816) | `bp:p2:limit` | PASS | Pointwise limUnder on T_ρinf, K outside; convergence must be proved from iteration, not assumed. |
| `KAM.Apost.limit` (822) | `bp:p2:limit` | PASS | Repeats iteration inputs and supplies all (a)–(e), including both uniform convergences and explicit μ/4 closeness. |
| `KAM.Apost.C_1` (851) | `bp:p2:g1` | PASS | ρ^(4τ) max(γbar⁴,c_star δ₀^(−2a)); dependence exactly the permitted ten parameters. |
| `KAM.Apost.C_2` (855) | `bp:p2:g1` | PASS | 2 C_DK ρ^(2τ) δ₀^(−a); independent of μ, γbar, γ, e and the Hamiltonian/torus. |
| `KAM.Apost.g1_explicit` (860) | `bp:p2:g1` | PASS | Frozen inputs and seven output clauses with explicit positive C_1,C_2; no added hypothesis or changed quantifier order. |
| Anonymous G1 assembly `example` (896) | `bp:p0:g1` via `bp:p2:g1` | PASS | Frozen type matches mechanically after comments/whitespace removal; constructor elaborates from g1_explicit without a local sorry. |

No FAIL rows: consequently no corrected signatures are proposed. Do not change approved/frozen declarations on the strength of this report.

## Structure and constant verdicts

**PASS.** `Params` (221–227) is exactly the first sentence of `bp:p2:standing`, blueprint p2:56–65. `Standing` (230–243) extends it with the open translation-invariant domain, holomorphic/periodic/real Hamiltonian, the three vector-field bounds, positive γ and the Diophantine condition. Its omission of `‖Dh‖ ≤ M` follows the explicit blueprint sentence “which is not used” (p2:67–69). The frozen-facing G1 retains that bound; assembly merely projects the three required components. `γ ≤ γbar` belongs to the final smallness conversion, not to local Standing.

`Admissible` (247–261) contains exactly the parameter ranges and A1–A6 (p2:306–317). The inverse-Gram and twist conditions are source hypotheses, not a hidden frame invertibility/reducibility theorem. No field assumes exactness, a cohomological solution, a Newton estimate, convergence or G1 itself. Each result's bundled premise expands to the local standing assumption the blueprint declares throughout this part. `frequency`, `frame_basic` and `perturbation` retain their smaller, explicit K-premise lists rather than silently requiring all of Admissible.

Every constant formula at draft 271–305 was compared with p2:78–108, term by term, including parentheses and maxima. The argument lists do not contain h, K, 𝔅, ω, γ or e. Only c_star adds μ; delta0 only uses the widths. C_1 and C_2 match p2:1110–1123 and have exactly the final theorem's permitted dependence lists. `cohConst` matches the explicit constant in the proof of `bp:p1:cohomological`, with the period-one 2π normalization. The inequalities in `constants_spec` are compatible with n ≥ 2, τ ≥ n−1 and mSize,cR ≥ 1.

## Definitions, totality and adversarial checks

**PASS on the licensed mathematical carriers; total extensions are not analytic assertions off those carriers.**

- The sum-index coordinates are a max-norm isometry. For complex matrices the induced max operator norm is the maximum absolute row sum, so `norm_colMat` and `norm_sqMat` need no n factor. The frozen Gram pairing is bilinear, not Hermitian: ordinary transpose is correct throughout. Checked the actual frozen `gramMatrix`, `normalFrame`, `torsion`, `torsionAverage`, `invarianceError`, `omegaZero` and real/primary predicates through their imported definitions.
- Explicitly rechecked Ω₀'s signs: Ω₀(a,b) = (−b,a), N = Ω₀LB, LᵀΩ₀N = −I, η = (−NᵀΩ₀E,LᵀΩ₀E). Thus the first triangular equation is ∂ωξN = −ηN and the Newton error has **plus** Ω₀E_sym ∂ωξ. No sign change was found in the reduction or the (2,2) E_red block.
- `cohSolution` uses the actual Fourier coefficients on the real torus, the period-one character and `Diophantine.solve`, whose zero coefficient is explicitly 0. It is the intended convergent Fourier sum on every smaller valid strip. Off the bounded holomorphic nonresonant class a Lean tsum may be 0, so the definition alone supplies no solution theorem. The proposed cohomological theorem assumes exactly the class that must make the sum summable and identify its derivative. It does not assume that conclusion. This remains pending proof, not a fallback-based proof.
- `triXi0` inverts the actual Bochner average of T. The triangular hypotheses prove continuity on the real slice and determinant invertibility before interpreting it as an inverse. Average cancellation is exactly ⟨T⟩ξN₀ − ⟨T uN⟩ − ⟨ηL⟩ = 0. Both nested Fourier solutions are meaningful at real arguments since r−2δ > 0.
- `newtonMap` deliberately equals K outside its working strip; its derivative is used inside that open strip, where it agrees locally with K + ΔK. `quadRemainder` agrees there with the blueprint expression using Kbar. The branch boundary is never a derivative evaluation point licensed by these theorems.
- `kamSeq` actually iterates those Newton maps, including their total extensions. Each next working strip is inside the previous valid one, since r_(s+1) = r_s−4δ_s. All real points remain in every working strip, so global realness is preserved.
- `kamLimit` uses `limUnder`, which can choose a value off the convergence class. The iteration estimates supply summable increments for both maps and derivatives on T_ρinf: exponents a, a+1 and a+2 are in the error-decay summation range because a ≥ 8 here. Thus there is a genuine limit on the claimed carrier; no theorem assumes convergence or uses a junk limit. Outside that carrier it explicitly returns K.
- Tried degenerate widths, n = 0, negative error/bound data and vanishing denominators. Standing forces n ≥ 2 and γ > 0; all working strips have positive width. In iteration/limit, hE at θ = 0 derives e ≥ 0 even though it is not an extra binder. In perturbation, hd at θ = 0 gives d ≥ 0, and d < β gives β > 0. The generic carrier/matrix lemmas remain valid at empty finite index types; the sole norm-one Ω₀ claim correctly requires 0 < n. None yields a counterexample under its actual premises.

These are separate refutation checks of the highest-risk signatures, not kernel proofs of the unimplemented results.

## Review of design §3.2 departures

| Departure | Part 2 disposition |
|---|---|
| L1 | PASS: sum-index matrices and pair vectors are connected by the explicit isometry/evaluation bridges. |
| L2 | PASS: total algebraic definitions do not add holomorphy or nonsingularity conclusions; their uses have the required premises. |
| L3 | PASS: IsUnit det is equivalent to nonzero determinant over ℂ. |
| L4 | PASS: operator norm is the row-sum norm, not an entrywise max. Assembly derives nonnegative bounds and converts once. |
| L5 | PASS: positive widths/margins express the standing domain convention; frame_basic really needs β > 0 for image inclusion. |
| L6 | PASS: quantification over every finite pointwise bound X/Y gives the sup estimates for the bounded functions present here. |
| L7, L8 | Part 3 only; outside scope. |
| L9 | PASS: ηN = LᵀΩ₀E uses no inverse, so exactness needs no det G premise for this equality. |
| L10 | PASS: defining E_sym as the difference still leaves the substantive block-diagonal identity in the theorem. |
| L11 | PASS: stated Banach-valued extension of averages is mathematically valid; no proof assumed from the narrower finite-dimensional wrapper. See interface note below. |
| L12 | PASS: unit coordinate periods imply all integer periods on strips; Part 1 has the conversion. |
| L13 | PASS: gradients and real Jacobians are expressed in the precise sum-index coordinates. |
| L14 | PASS: uniqueness on T_(r−δ) is among all holomorphic periodic zero-average solutions, with no boundedness premise. |
| L15 | PASS: the omitted triangular block equation follows directly from the retained two component equations and definitions. |
| L16 | PASS: Kbar = K + correction locally on the open working strip. |
| L17 | PASS: explicit Newton sequence and limit are the construction in the blueprint proof, rather than new hypotheses. |
| L18 | PASS: nonnegative e and q ≤ 1 give geometric majorants and genuine Summable statements. |
| L19 | PASS: exact formulas and explicit argument lists control constant dependence. |
| L20 | PASS: arbitrary finite matrix indices are harmless, including empty types; the Ω₀ norm-one assertion has the needed positivity guard. |
| L21 | Part 3 only; outside scope. |
| L22 | PASS for G1: instantiated frozen body, with all original input binders retained. |
| L23 | PASS: explicit sublists of A2–A6 match their respective statements and avoid unrequested assumptions. |

## Part 1 interfaces

**PASS as a dependency design with expressly pending inputs.** No claim that every input is already implemented.

| Input surface | Evidence and applicability | Status |
|---|---|---|
| Matrix norm/coordinate conversion | `KAM/Matrix/Norms.lean`: norm_le_iff_forall_rowSum (52), norm_continuousLinearMap_eq_norm_toMatrix' (168), operator_norms (307), norm_transpose_le_card_mul (340), norm_fromRows (404), Ω₀ identities (208–264). | Exists locally; types support the proposed bridges. |
| Matrix inverse | `KAM/Matrix/Inverse.lean`: real_inverse (82), differentiableOn_matrix_iff_entries (104), holomorphic_inverse (159). | Exists locally; determinant formulations convert over ℂ. |
| Averages and periodicity | `KAM/Strip/Averages.lean`: integrableOn_unitCube_of_continuous (119), torusAverage_complex_coordinate_eq_zero (172), torusAverage_complex_direction_eq_zero (199); strip integer-period conversion and periodic_bounded in `KAM/Strip/Periodic.lean`. | Exists locally. The Banach-valued Apost.averages is not literally the finite-dimensional zmap wrapper; the generic base lemmas and Bochner integral linearity support it. |
| Limits and increments | `KAM/Strip/Limits.lean`: uniform_limits (49), increments_open (63), uniform_limits_isPrimaryOnStrip (88), uniform_limits_isRealOnReals (131); iteration majorant in `KAM/Analysis/Iteration.lean`. | Exists locally. Complete pair and CLM targets meet the completeness hypotheses. |
| Fourier definitions/coefficients | `KAM/Strip/Fourier.lean`, `FourierSeries.lean` and `KAM/Diophantine/Cohomological.lean`: torus coefficients/characters, Fourier reconstruction infrastructure, solve (50). | Exists; coefficient solution alone does not supply the requested strip theorem. |
| zmap regularity/Cauchy | At pinned k/zmap: `KAM/Strip/Bridges.lean`, holomorphic_regularity_of_finiteDimensional (101), cauchy_strip (187), cauchy_corollaries_transpose (215), directional_real (257). | Branch-only dependencies explicitly identified. Pair domain is handled by the generic regularity lemma; arbitrary finite output index needs the proposed carrier bridge. |
| zmap averages/Neumann | At pinned k/zmap: `KAM/Strip/Bridges.lean`, torusAverage_matrix_apply (291); `KAM/Matrix/Bridges.lean`, neumann (33), neumann_pointwise (46). | Branch-only dependencies explicitly identified. neumann uses IsUnit A; matrix determinant units convert to that. |
| I-STRIP-3 | Design §§2.4, 5, 7.3 explicitly require the exact cohSolution, cohConst, unbounded-class uniqueness, vector solution and matrix operator-norm a-priori bound. | PENDING. No theorem with these full types was found in this worktree; no false assertion of availability. |
| I-P1C | Blueprint taylor/increments and design §§5, 7.2–7.3. A k/p1c ref exists, but its AnalyticTaylor material does not by itself establish these named contracts. | PENDING for this audit; Part 2 Hamiltonian item (e) only needs the weaker M‖w‖² version. |

## G1 assembly verdict

**PASS as an implication; proof delivery remains open.** The anonymous example (896–935) is a mechanically checked copy of the exact frozen `KAM.aposteriori_kam` type (frozen file 43–91). Its proof `⟨_, _, g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar⟩` elaborates. The constants precede every variable Hamiltonian/domain/torus/frequency/error binder. No Standing or Admissible structure escapes as an additional frozen premise.

The planned internal consumption is sufficient: H1 constructs Standing (the Dh bound can be ignored); H5 supplies γ > 0, Diophantine ω, and γ ≤ γbar; H2 gives the real/primary/holomorphic torus and its domain/derivative margin; H3/H4 convert row sums to norms. At θ = 0 and any row i (n ≥ 2), the row sums prove σB−μ and σT−μ nonnegative, as required by norm_le_iff_forall_rowSum. hE gives e ≥ 0. The C_1 smallness inequality implies both e < 1 and c_star e/(γ⁴δ₀^(2a)) < 1, using γ ≤ γbar. Thus limit's ≤ 1 inputs follow. Its seven conclusions give the frozen output, with the C_2 identity paying for the stated normalization ρ^(2τ).

The frozen Dh bound is retained but not analytically needed; this is explicit in the source and is not hypothesis smuggling. The proposed provider imports only its implementation module; nothing in the design requires an implementation import of a frozen theorem/provider. The frozen-facing example imports definition anchors only. Sealing the actual anchor and rerunning its guard/ABI checks belongs to the later proof campaign.

## Findings, severity and refutation status

No blocking findings and no corrected signatures. The following notes delimit the PASS.

| ID | Severity | Evidence / consequence | Refutation disposition |
|---|---|---|---|
| P2-N1 | Informational, proof status | Draft “Every result node … with body sorry”; all 29 scoped theorem bodies remain sorry. The frozen G1 axiom probe contains sorryAx. | Confirmed by actual elaboration and axiom output. Successful example assembly is conditional on g1_explicit. |
| P2-N2 | Informational, dependency gate | Design says “I-STRIP-3 … open” and “I-P1C … unclaimed”; these inputs have not been promoted to existing full contracts by this review. | Read-only declaration searches and branch inspections did not locate the complete required interfaces. Clearly marked pending, so not a signature FAIL. |
| P2-N3 | Low, blueprint wording already disclosed | p2:133–134 says “abs Ω₀ = 1” without a local dimension condition. At n = 0, its matrix norm is 0. Design F2 and L20 add the correct guard; Standing has n ≥ 2. | Degenerate-index check confirms the isolated wording issue and also refutes a blocker in this Part 2 application. |
| P2-N4 | Low, blueprint wording already disclosed | Design F1 records implicit positive strip widths/margins in some blueprint statements. The audited signatures state the needed positivity. | Attempted nonpositive-width counterexamples are excluded by actual signature premises and Part 0's positive-width convention. |
| P2-N5 | Low, snapshot metadata | Design introduction quotes older main/zmap refs and a historical build snapshot. Current observed refs differ; this report pins the inspected revisions. | Confirmed by git rev-parse; no signature change follows. |

Suspected pinned-source errata: none newly identified. The already disclosed blueprint wording issues F1/F2 above are retained; no new claim about an HL19/GJLV05 PDF defect is made. Those source PDFs were not re-audited here. Deviations introduced by this auditor: none; only this report is changed. Reviewed design departures are recorded above, rather than silently repaired.

## Verification and handoff

- `nice -n 5 lake env lean .drafts/design/Part23Signatures.lean` was run **once**: exit 0, exactly 39 diagnostics, each `warning: declaration uses sorry`; 29 in scope, 10 in Part 3. No other warnings or errors. Both assembly examples elaborate; only G1's type was audited here.
- `scripts/lint_sources.sh`: exit 0. Output: `check_lean_modules: PASS (201 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`. The lint intentionally excludes `.drafts`; this does not certify its module headers as production modules. The proposed library files still need the mandated module/public-section/expose headers when implemented.
- Mechanical Python comparisons: `Appendix A equals draft: True`; `G1 example type equals frozen type after comment/whitespace removal: True`; scoped declaration counts 29 theorem signatures and 72 definitions/abbreviations/structures.
- Scratch-only axiom probe: `nice -n 5 lake env lean .lake/abi-scratch/dsgn-p2-1-axioms.lean`, exit 0. `#print axioms KAM.aposteriori_kam` returns `[propext, sorryAx, Classical.choice, Quot.sound]`. `#print axioms KAM.norm_continuousLinearMap_eq_norm_toMatrix'` and `#print axioms KAM.norm_le_iff_forall_rowSum` each return `[propext, Classical.choice, Quot.sound]`. The scratch file was deleted. No new main theorem has been proved in this audit; the draft theorem bodies themselves are explicitly sorry, so their assembly provides no axiom-clean G1 proof.
- No `lake build` target was added: this report changes no library module, and the brief specifically requests the direct targeted draft elaboration. No clean/rebuild, heartbeat override or concurrent compile was used.

Files handed off: `docs/campaign/audits/DESIGN-P23-P2-audit-1.md` only. Approach: full declaration census, direct graph-to-blueprint fidelity review, algebraic/degenerate-carrier refutation pass, exact frozen assembly comparison, interface inspection and the checks above. Remaining uncertainty: implementation feasibility, actual proofs/axiom closure, pending interface delivery and eventual provider sealing are not established by a signature audit. Acceptance criteria for this bounded audit are complete.
