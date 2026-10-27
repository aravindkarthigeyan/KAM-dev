# Independent design audit: Part 3 / G2

Date: 2026-10-27. Auditor: dsgn-p3-1.

## Verdict

**PASS WITH NOTES for the design signatures in scope.** No incorrect Part 3 signature, unauthorized premise, weakened conclusion, or wider constant dependence was found. No corrected signature is required. This is a statement/design audit, not a proof acceptance or a G2 seal: all ten Part 3 theorem bodies are still `sorry`, and essential Part 1 interfaces remain pending.

Scope: `KAM.Uniq.Params`, `S1`–`S4`, all eight constants including `threshold`, all four difference definitions, all ten Part 3 theorem signatures, the G2 assembly example, and design §§2.4 and 7.3. Shared carrier definitions and the cohomological operator were inspected where consumed by Part 3. Part 2's remaining signatures are outside this audit.

## Inputs and reproducibility

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, and `docs/campaign/briefs/AUDIT-DESIGN-P23.md` before the audit. Compared the design directly with `docs/graph/K/DEPGRAPH.md`, `blueprint/parts/p3-uniqueness.tex`, the relevant Part 1 and Part 2 text, and `KAM/Frozen/Theorems/LocalUniquenessFlow.lean`. Inspected the frozen Gram/normal-frame/torsion/error conventions used at the interface.

Snapshot:

- Audit worktree HEAD: `9cc85c10f7260b6d740268554971b477a636516a` (`k/design`).
- Observed `main`: `53c88837b9d7bf597c94ba7fe664b8403c616ddc`.
- Inspected `k/zmap`: `473e89fe5d0946f98fb16d03256bf2ed8ab2699c`.
- Observed `k/p1c`: `bc2331e1e29a6e8894bc3a51d6394220406227f2`.
- `.drafts/design/Part23Signatures.lean`: 1219 lines; SHA-256 `68ed2cf8d04a99ee2d4321fd3848305bd11ace6b427706d298a039cb45521118`.

A Python comparison confirmed that Appendix A is verbatim the signature file (up to the final trailing whitespace). The design's older main snapshot is historical; the interface availability statements below are based on the actual files and branch objects inspected in this audit.

## Signature inventory

All Lean names in the next table have prefix `KAM.Uniq.`. Line numbers refer to `.drafts/design/Part23Signatures.lean`. Blueprint line references are in `blueprint/parts/p3-uniqueness.tex`; node names are those in `docs/graph/K/DEPGRAPH.md`.

| Lean name / line | Graph node | Verdict | Reason |
|---|---|---|---|
| `Params`, 947 | `bp:p3:standing` (setting, L50–53) | PASS | Exactly the fixed dimension, exponent and six strict positivity conditions. These are standing source parameters, not additional local premises. |
| `S1`, 958 | `bp:p3:standing`, L59–62 | PASS | Open translation-invariant domain; holomorphy, periodicity, realness and all four derivative/vector-field bounds, including `Dh`. |
| `S2`, 971 | `bp:p3:standing`, L63 | PASS | Exactly positive gamma and the frozen flow-Diophantine condition. |
| `S3`, 976 | `bp:p3:standing`, L64–68 | PASS | All reference-torus hypotheses and margins retained, including Gram and average-torsion invertibility and exact invariance. Operator-norm form of the row bounds is equivalent here. |
| `S4`, 989 | `bp:p3:standing`, L69–70 | PASS | All second-torus premises retained; no derivative, Gram or twist premise added for this torus. |
| `C_P`, 1000 | `bp:p3:standing#constants`, L99 | PASS | Exactly `2 n sigmaK (1 + sigmaB)`; depends only on those three arguments. |
| `C_Gamma`, 1001 | `bp:p3:standing#constants`, L99 | PASS | Exactly `C_P M`. |
| `C_tor`, 1002 | `bp:p3:standing#constants`, L100 | PASS | Exactly `C_P^2 M (1 + 4 n C_P / rho)`. |
| `C_coh`, 1003 | `bp:p3:standing#constants`, L101–104 | PASS | Uses the exact Part 1 constant `cohConst`, without replacing it by `max 1 cohConst`. Proof interface remains pending. |
| `C_N`, 1004 | `bp:p3:standing#constants`, L107–108 | PASS | Both summands, the factor one half, and the exponent `tau + n` agree. |
| `C_L`, 1006 | `bp:p3:standing#constants`, L109 | PASS | Exact tangential estimate constant, with its outer `C_coh`. |
| `C_quad`, 1008 | `bp:p3:standing#constants`, L110 | PASS | Exact maximum of the tangential bound and the absorbed normal bound, multiplied by `C_P`. |
| `threshold`, 1011 | `step:p3:g2-constant`, L513–524 | PASS | All three minimum terms and the outer phase factor agree with equation `eq:p3:c`; no gamma, frequency, domain or torus argument. |
| `standing_of`, 1022 | `bp:p3:standing`, L74–77 | PASS | Extracts exactly Part 2 standing data from fixed parameters and S1/S2; it does not demand S3/S4 or a conclusion of another lemma. |
| `matrix_norms`, 1029 | `bp:p3:matrix-norms`, L124–131 | PASS | S3 only, besides the fixed setting. All seven bounds appear in source order, with the stacked matrix and operator norm intact. |
| `lagrangian`, 1038 | `bp:p3:lagrangian`, L149–151 | PASS | S1–S3 only; concludes the zero bilinear pullback matrix on the entire original strip. |
| `frequency_bound`, 1042 | `bp:p3:frequency-bound`, L176–178 | PASS | Both max-norm omega bound and gamma bound, with the prescribed Gamma; no extra upper bound on gamma. |
| `reducibility`, 1046 | `bp:p3:reducibility`, L193–203 | PASS | Holomorphy of B/N/P, invertibility, inverse formula, symplectic identity, torsion identity and exact triangular reduction all retained. Derivative sign agrees. |
| `torsion_bound`, 1060 | `bp:p3:torsion-bound`, L241–245 | PASS | Original-strip holomorphy, continuity on all real points, bound on the three-quarter strip, entrywise integrability and frozen-average agreement. |
| `diffMap`, 1072 | `bp:p3:difference-equation`; `eq:p3:Delta`, L350–352 | PASS | Exactly the real phase translate of K2 minus K1, in the frozen pair carrier. |
| `remainder`, 1077 | `bp:p3:difference-equation`, L363–364 | PASS | Exactly the nonlinear remainder after subtracting the first derivative at K1. |
| `diffXi`, 1083 | `bp:p3:difference-equation`, L363–367 | PASS | Genuine frame inverse times the difference after `sumVec` conversion on the stated strip hypotheses. |
| `diffQ`, 1088 | `bp:p3:difference-equation`, L363–367 | PASS | Same inverse applied to the intended remainder; no fallback construction introduced. |
| `phase`, 1093 | `bp:p3:phase`, L279–288 | PASS | S1–S4, same smallness denominator, real phase, same radius and zero tangential average. Arbitrary pointwise upper bound eta is a justified monotone strengthening. |
| `difference_equation`, 1102 | `bp:p3:difference-equation`, L359–373 | PASS | All items (a)–(c) and the component formulas retained. Both triangular equations have the source signs; the quadratic remainder keeps one half. Pointwise strict smallness suffices. |
| `quadratic`, 1136 | `bp:p3:quadratic`, L415–425 | PASS | Same assumptions, normalization, ordered positive radii, two equal strip losses, exact C_quad and gamma exponent. Universal pointwise bound Y retains the source sup estimate. |
| `g2_explicit`, 1151 | `bp:p0:g2`, proof steps `step:p3:g2-*` | PASS | Frozen body with only its existential constant instantiated by `threshold`; positivity is proved before quantifying the data. |
| final anonymous `example`, 1184 onward | `bp:p0:g2` assembly | PASS | Anonymous constructor elaborates against the frozen type; direct normalized-text comparison also returns equality. It is conditional on the unproved `g2_explicit`. |

The example's introductory comment begins before its `example` binder; its purpose is assembly, not an additional graph theorem.

## Standing structures, definitions and departures

**Structures: PASS.** Every field is a source premise. Exact invariance in S3/S4 is a hypothesis of the frozen uniqueness theorem, not an assumed Lagrangian, phase, reducibility or quadratic conclusion. S1 retains the bound on `Dh` even though Part 2 standing data drops it. The only local hypothesis of `matrix_norms` is S3, as required; the remaining geometry lemmas use S1–S3, and phase/difference/quadratic use S1–S4. The fixed `Params` package merely makes the part's global setting explicit.

**Definitions and carriers: PASS on the intended carriers.** Pairs of coordinate functions use the max product norm; `sumVec` is the linear rearrangement to sum-indexed coordinate functions. `colMat` and `sqMat` are their coordinate matrices. The operator-norm scope is open. Transposes are bilinear, with no conjugation. The definitions of L, N, P and the directional derivative of N agree with the frozen normal-frame and torsion formulas once the shared frozen-agreement lemmas are proved. These conversion lemmas are draft obligations, not established library results in this audit.

`diffXi` and `diffQ` are total off the strip, where a matrix inverse may have an arbitrary totalized value. Every Part 3 theorem using them assumes S3 and obtains genuine frame invertibility from reducibility on the original strip. Holomorphic maps are differentiated on open domains where their derivatives exist. All real evaluation points lie inside the positive-width strip. Torsion and phase averages are integrals of continuous restrictions; the average in S3 is the frozen entrywise integral. No use of a default inverse, derivative or integral value is needed by the proposed proof.

Checked the departures in design §3.2 that affect this scope:

- L1/L3/L4: sum-index carriers, determinant units and operator-norm inverse bounds preserve meaning. For the square matrices here `n >= 2`, and the norm/row-sum conversion is available; a negative proposed bound is ruled out by nonemptiness and norm nonnegativity.
- L5: all free strip widths are positive; quadratic's inequalities imply positivity of its intermediate widths and losses.
- L6/L7: positive strips are nonempty, so pointwise bounds Y/eta are nonnegative. The source's bounded sup can be used as such a bound, and every such bound supports the proof. No attainment of a supremum is assumed.
- L8: pointwise `norm Delta < mu` is genuinely weaker than strict smallness of the supremum, hence strengthens the lemma. It still gives the uniform non-strict bound `norm Delta <= mu`, sufficient for boundedness in the quadratic argument, and places every Taylor segment in the open ball. G2 supplies the stronger uniform `mu/2` bound.
- L11/L12/L14: coordinatewise periodicity converts to integer periodicity; vector/scalar cohomological solutions retain the same norm bound and uniqueness on the smaller strip. The exact-constant Part 1 interface is pending as specified below.
- L19/L21/L22: dependencies are fixed syntactically, entrywise torsion integrability loses no finite-matrix content, and the explicit threshold changes only the existential witness.

No departure introduces an unlisted hypothesis or hides an estimated conclusion in a structure.

## G2 assembly

**PASS as a design/conditional assembly.** The frozen theorem's explicit outer binders appear in the same order: dimension, exponent, positive width, and five positive bounds/margin. Its existential constant precedes the domain, Hamiltonian, tori, frequency and gamma. The example preserves every H1 clause, every K1 margin and invertibility clause, positive Diophantine gamma, both exact-invariance hypotheses, all K2 clauses and the original closeness bound. The conclusion is equality on the half-width strip with a real phase. No extra standing package escapes into the provider-facing type.

A direct comparison of the frozen declaration and the example, stripping line comments and whitespace, returned `True`. The constructor `⟨_, g2_explicit hn hτ hρ hM hσK hσB hσT hμ⟩` elaborated. This checks the interface, not a derivation of `g2_explicit` from the smaller lemmas.

The proposed derivation also fits the signatures mathematically. Write A = 1 + 2 C_P sigmaK and choose eta = threshold * gamma^2 * rho^(2 tau). Frequency bounded by Gamma and the first two threshold terms give the phase condition and A eta <= mu/2. After phase normalization, increments on the original convex strip give `norm Delta <= A eta`. The third term gives the initial quadratic-iteration smallness. With p = 2(tau+n), radii `(1/2 + 2^(-m-2)) rho` have half-loss `2^(-m-4) rho`; thus Q = C_quad gamma^(-2) (rho/16)^(-p), and `Q 2^p A eta <= 1/2`. An explicit nonnegative majorant obeying the recurrence fits `KAM.quadratic_iteration`. Every point of the half strip belongs to every iteration strip. Finally evaluate Delta at theta minus psi, giving the frozen orientation with phi = -psi.

All constants needed for positivity are positive under Params: in particular tau >= 1, so the exact `cohConst` is positive, as are C_N, C_L, C_quad and each threshold minimum term. There is no added bound `gamma <= 1` or `rho <= 1`.

## Part 1 interfaces: design §§2.4 and 7.3

**PASS for honest interface status; implementation remains gated.**

| Interface | Evidence / status | Consumer check |
|---|---|---|
| Fourier solution and constant | Draft L39–49 defines `cohConst` and `cohSolution`; Part 1 L900–903 gives exactly that constant. `KAM/Strip/FourierSeries.lean:145` defines `fourierSum` by the same series; `KAM/Diophantine/Cohomological.lean:50` supplies the zero-mode-zero, period-one coefficient solver. | Correct Fourier sign, `2 pi` divisor and geometric widths. The shared radius-free solution is meaningful on each positive smaller strip once summability is proved. No global convergence outside those strips is needed. These two new names are proposed definitions, not existing main declarations. |
| I-STRIP-3 | No `KAM/Strip/Cohomological.lean` implementation in this snapshot; package is explicitly open. Design §§2.4/7.3 expressly require the solver properties, exact `cohConst`, realness, uniqueness without a boundedness premise on the candidate, and the matrix operator-norm form. | Adequate pending contract for lagrangian/quadratic. The Part 2 wrapper uses the larger `cR`; it alone does not certify Part 3's smaller exact C_coh. Part 3 must retain direct access to the exact bound or a proved adapter. |
| Cauchy/regularity adapters | Inspected `k/zmap:KAM/Strip/Bridges.lean`: `holomorphic_regularity_of_finiteDimensional`, `holomorphic_regularity`, `cauchy_strip`, transpose and directional corollaries. | General finite-dimensional domains cover frozen pairs; generic normed targets cover matrices. The transpose corollary is Fin-indexed, so the design correctly lists its extra finite-index bridge. Directional real-frequency cast agrees with frozen derivatives. |
| Averages adapters | Same branch: `averages`, `averages_matrix`, `torusAverage_matrix_apply`. | Positive width, holomorphy, coordinatewise periodicity and a pointwise bound yield zero directional average. Continuous matrix restrictions give entrywise/Bochner agreement. These requirements are available from the proposed Part 3 lemmas. |
| Existing inverse and norm API | `KAM/Matrix/Inverse.lean:82,159`; `KAM/Matrix/Norms.lean`. Files inspected are byte-identical to observed main. | Real inverse, holomorphic inverse, row sums, block norms and omega-zero matrix norms have the required carriers. `IsUnit det` converts to the nonzero determinant required by the holomorphic inverse. |
| Existing increments / iteration | `KAM/Strip/Limits.lean:63`, `KAM/Analysis/Iteration.lean:147`; byte-identical to observed main. | `increments_open` accepts an open domain, holomorphy, derivative bound and segment inclusion. `quadratic_iteration` accepts positive Q, nonnegative p and sequence, the recurrence and initial smallness, and supplies convergence. G2 can construct these inputs. |
| I-P1C Taylor and strip increments | Explicitly pending in the design. Observed `k/p1c` contains a package brief but no Taylor/increments implementation. Part 1 L436–439 and L551–555 state the mathematical contracts. | Taylor must keep the factor one half and work for pair-valued maps on pair domains, directly or by an isometric adapter. Strip increments must handle both pair-valued W and rectangular-matrix-valued L in the operator norm. The design identifies these consumers, but does not provide exact Lean declarations for this new package. |

Existing `periodic_int_shift`, `norm_torusAverage_le`, `fourierSum`, inverse/norm infrastructure, and iteration are actual declarations, not merely graph names. The inspected main files for Limits, Periodic, Averages, FourierSeries, Matrix/Inverse, Matrix/Norms and Analysis/Iteration match the worktree contents. The zmap interfaces above were inspected at the branch object; they were not rebuilt or imported into this worktree by the auditor.

## Findings and limits

1. **Medium, implementation gate (already disclosed): exact cohomological contract pending.** The draft elaborates because it does not import or prove I-STRIP-3. Do not infer from that elaboration that the exact-constant operator, unbounded-class uniqueness or matrix estimate is implemented. Keep this dependency explicit before accepting P3-1/P3-4.
2. **Low, interface specificity: I-P1C has mathematical contracts but no exact Lean signatures in this design.** This is allowed by the audit brief's pending-interface alternative. Before dependent packages are implemented, agree the finite-dimensional domain/target generality and preserve the Taylor factor one half. No change to the audited Part 3 signatures is indicated.
3. **Informational, assembly evidence is conditional.** Both anonymous examples elaborate, but G2 and its sublemmas still use `sorryAx`; this is not proof closure. The shared carrier/frozen-agreement lemmas also remain draft obligations.
4. **Informational, status wording is historical.** The design calls I-P1C “unclaimed”; an I-P1C brief now exists on its branch. No implementation was found there, so the dependency is still pending. Refresh ownership/status when assigning packages.

No critical/high finding or substantive signature FAIL. No new suspected defect in a pinned mathematical source was identified in this signature audit. Existing GJLV05/HL19 errata/deviation assertions in the blueprint were not independently revalidated against PDFs here; no new source claim or ledger entry is being made. No deviation from either frozen statement was introduced.

## Checks and handoff

Only deliverable: `docs/campaign/audits/DESIGN-P23-P3-audit-1.md`. No source, frozen anchor, manifest, generated file or git state was edited. Temporary axiom probe was placed in `.lake/abi-scratch/` and removed.

- `nice -n 5 lake env lean .drafts/design/Part23Signatures.lean` — run once, exit 0; exactly 39 diagnostics, each ``warning: declaration uses `sorry` ``; no errors or other warnings. The two assembly examples elaborate.
- A temporary copy with `#print axioms` for all ten Part 3 theorem names, checked with `nice -n 5 lake env lean .lake/abi-scratch/DsgnP3Audit1.lean` — exit 0; each reports `[propext, sorryAx, Classical.choice, Quot.sound]`. This includes `g2_explicit`; it is a design stub.
- `scripts/lint_sources.sh` — exit 0. Output: `check_lean_modules: PASS (201 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Python consistency checks — 1219 signature lines; expected SHA-256; Appendix A verbatim `True`; frozen G2/example normalized declaration equality `True`.
- Final `git diff --check` — exit 0; `git status --short` shows only the requested audit report as untracked. Report whitespace checked separately because it is untracked.
- No targeted library build applies: this audit creates no Lean module and changes no implementation. The prescribed draft elaboration is the targeted Lean check; no library rebuild was requested or performed.

Remaining uncertainty is proof implementation and landing of the pending interfaces, not a detected contract mismatch. No independent kernel replay or completed-provider axiom audit is claimed.
