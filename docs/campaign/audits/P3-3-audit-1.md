# P3-3 independent package audit 1

Overall verdict: **PASS WITH NOTES**.

Audited on 2026-10-27, branch `k/p3-3`, HEAD
`302bcfbd9f92dbebf9bffc99c13b169a6e2fb019`. The handoff names `80bf7a6`,
which is an ancestor of this main-merge HEAD. The reviewed package scope is
`git diff k/p3-2...HEAD`, with `k/p3-2` at
`e1971f9ec560252a6811a8131485bca1dd019e4a`. The requested initial comparison
`git diff main...HEAD` was also inspected (`main` at
`24bf3c3dffe878bd6548558575ca9fc0241b823e`). P3-2's phase proof is outside
this audit; its `diffMap` definition was inspected as a semantic dependency.

The only new Lean implementation in the scoped diff is
`KAM/Uniq/Difference.lean` (510 lines), SHA256
`a5276f960a8e27f8b481382cb927276c89a99158807b845fe65ba2bfcd582c04`.
Other diff entries are the generated root import, generated HQ updates and
merged campaign briefs/history. This audit changes only this report.

Authority: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`,
`docs/campaign/briefs/{AUDIT-PACKAGE,P3-3,P23-COMMON,PROVER-COMMON}.md`,
the handoff, `docs/campaign/design/PART23-LEAN-DESIGN.md` (especially §§1–2,
L1–L4/L8/L12 and Appendix A), and the graph contracts at
`docs/graph/K/DEPGRAPH.md:8815–8958`. The mathematical source for this
package is the blueprint, not a new claim of fidelity to the external papers.
The graph records no frozen anchor for these five nodes. This is an
infrastructure audit, not a seal of frozen G2.

## Node verdicts

All implementation locators below refer to `KAM/Uniq/Difference.lean`.

| Node | Lean declaration | Verdict | Evidence and reason |
|---|---|---|---|
| `bp:p3:difference-equation` | `KAM.Uniq.difference_equation` (452–506) | PASS | Matches Appendix A exactly, including all premises, four component identities, both differential equations, all three bounds, the factor ½ and the full strip. Blueprint `p3-uniqueness.tex:350–373`; L8 is a legitimate strengthening. |
| `step:p3:diff-regularity` | `KAM.Uniq.DiffAux.step_regularity` (392–411) | PASS | All regularity, periodicity and reconstruction conclusions at blueprint 376–384. No smallness premise: both composed points lie in the domain directly by S3/S4. |
| `step:p3:diff-linearized` | `KAM.Uniq.DiffAux.step_linearized` (270–290) | PASS | Subtracts the two invariance equations at the correct shifted points; translation derivative is the identity. Blueprint 386–391. S3/S4 include the required holomorphy and invariance. |
| `step:p3:diff-triangular` | `KAM.Uniq.DiffAux.step_triangular` (416–425), core `fderiv_diffXi_eq` (303–353), components in `difference_equation` (491–506) | PASS | Product rule and exact reducibility give the vector system; the main result supplies both component equations. Blueprint 393–397. No closeness premise is needed. |
| `step:p3:diff-bounds` | `KAM.Uniq.DiffAux.step_bounds` (430–443), with `norm_remainder_le` (253–260) | PASS WITH NOTE | Blueprint 399–405 includes the intermediate remainder bound as well as the three final bounds. The two declarations together cover it; the full four-bound conjunction was independently elaborated. `step_bounds` alone omits the intermediate bound from its conclusion. See F1. |

## Statement fidelity and expanded binder audit

Directly reconstructed source: fix the Part 3 parameters, assume S1–S4,
choose a real phase, define the shifted difference, and assume its strip
supremum is below μ. Define the remainder, inverse-frame coordinates and
forcing by the formulas at blueprint 363–364. The conclusions are precisely
items (a)–(c), plus the displayed component formulas at 366–367.

The main theorem has no existential constant or witness. `C_P` is the
pre-existing literal definition `2 * n * σK * (1 + σB)`
(`KAM/Uniq/Standing.lean:116–117`), depending only on `n, σK, σB`.
There is no dependence on the Hamiltonian, tori, domain, phase or γ.

The following table expands all top-level data binders and all logical leaves
of `hP`, `h1`–`h4`, and `hΔ`. Source locators are in
`blueprint/parts/p3-uniqueness.tex`. Nested point/shift variables in each
displayed predicate are universally quantified in the same order as the
source; no additional premise is suppressed by those quantifiers.

| Binder or expanded field | Content | Bin | Source |
|---|---|---|---|
| `n` (implicit) | natural dimension | TYPING | 50 |
| `τ` (implicit) | real exponent | TYPING | 50 |
| `ρ` (implicit) | real strip width | TYPING | 50 |
| `M` (implicit) | real derivative bound | TYPING | 50 |
| `σK` (implicit) | real tangent bound | TYPING | 50 |
| `σB` (implicit) | real Gram-inverse bound | TYPING | 50 |
| `σT` (implicit) | real twist-inverse bound | TYPING | 50 |
| `μ` (implicit) | real margin | TYPING | 50 |
| `𝔅` (implicit) | subset of the complex pair space | TYPING | 56 |
| `h` (implicit) | complex scalar function on the pair space | TYPING | 56 |
| `ω` (implicit) | `Fin n → ℝ` | TYPING | 57 |
| `γ` (implicit) | real Diophantine parameter | TYPING | 57 |
| `K₁` (implicit) | map from complex vectors to complex pairs | TYPING | 57 |
| `K₂` (implicit) | map from complex vectors to complex pairs | TYPING | 57 |
| `ψ` (explicit) | `Fin n → ℝ` | TYPING | 350, 360 |
| `hP.two_le` | `2 ≤ n` | STANDING | 50 |
| `hP.tau_ge` | `n - 1 ≤ τ` | STANDING | 50 |
| `hP.ρ_pos` | `0 < ρ` | STANDING | 50 |
| `hP.M_pos` | `0 < M` | STANDING | 50 |
| `hP.σK_pos` | `0 < σK` | STANDING | 50 |
| `hP.σB_pos` | `0 < σB` | STANDING | 50 |
| `hP.σT_pos` | `0 < σT` | STANDING | 50 |
| `hP.μ_pos` | `0 < μ` | STANDING | 50 |
| `h1.isOpen` | open domain | SOURCE | 59 |
| `h1.transl_mem` | integer angle translations preserve domain | SOURCE | 59–60 |
| `h1.holo` | Hamiltonian complex differentiable on domain | SOURCE | 60 |
| `h1.periodic` | Hamiltonian invariant under those translations | SOURCE | 60 |
| `h1.real` | imaginary part vanishes at real domain points | SOURCE | 60–61 |
| `h1.bounds.1` | derivative of Hamiltonian bounded by M | SOURCE | 61–62 |
| `h1.bounds.2.1` | vector field bounded by M | SOURCE | 61–62 |
| `h1.bounds.2.2.1` | vector-field derivative bounded by M | SOURCE | 61–62 |
| `h1.bounds.2.2.2` | bilinear second derivative bounded by M | SOURCE | 61–62 |
| `h2.gamma_pos` | `0 < γ` | SOURCE | 63 |
| `h2.dio` | for every nonzero integer k, `γ / (Σᵢ |kᵢ|)^τ ≤ |Σᵢ kᵢ ωᵢ|` | SOURCE | 63; Part 0 Diophantine convention |
| `h3.holo` | K₁ holomorphic on strip | SOURCE | 64 |
| `h3.primary` | for θ in strip and integer k, `K₁(θ+k) = K₁ θ + (k,0)` | SOURCE | 64 |
| `h3.real` | K₁ maps real inputs to real pairs | SOURCE | 64–65 |
| `h3.ball_sub` | radius-μ open ball around each K₁ θ contained in domain | SOURCE | 65–66 |
| `h3.deriv_le` | `‖DK₁ θ‖ ≤ σK - μ` | SOURCE | 66 |
| `h3.gram.1` | Gram determinant a unit | SOURCE | 66–67 |
| `h3.gram.2` | Gram inverse operator norm ≤ σB - μ | SOURCE | 67 |
| `h3.twist.1` | average torsion determinant a unit | SOURCE | 67–68 |
| `h3.twist.2` | inverse average torsion operator norm ≤ σT - μ | SOURCE | 68 |
| `h3.invariant` | `X_h(K₁ θ) - DK₁ θ ω = 0` on strip | SOURCE | 68 |
| `h4.holo` | K₂ holomorphic on strip | SOURCE | 69 |
| `h4.primary` | for θ in strip and integer k, `K₂(θ+k) = K₂ θ + (k,0)` | SOURCE | 69 |
| `h4.real` | K₂ maps real inputs to real pairs | SOURCE | 69 |
| `h4.mem` | K₂ maps strip into domain | SOURCE | 70 |
| `h4.invariant` | `X_h(K₂ θ) - DK₂ θ ω = 0` on strip | SOURCE | 70 |
| `hΔ` | pointwise `‖K₂(θ+ψ)-K₁ θ‖ < μ` on strip | SOURCE | 360–361; design L8 weakening of premise |

Counts: SOURCE 27; STANDING 8; TYPING 15; RULED 0; EXCESS 0. There are no
project typeclass assumptions on the main result. STANDING here denotes
the explicit Part 3 parameter convention, not an extra global graph input.
The module docstring explicitly invokes S1–S4 and the blueprint Part 3 setting.

For the steps, the binder audit is inherited by restriction: regularity and
triangular use the same parameter/S1–S4/phase rows and omit `hΔ`; linearized
uses S3/S4/phase and a point θ with strip membership; bounds uses the
parameter/S1–S3 rows, arbitrary Δ of the same pair-valued map type, and its
pointwise smallness premise. θ and strip membership are respectively typing
and source domain data, not extra estimates. S4 and phase are unnecessary
for bounds. The general inverse helper's finite index, normed space and
invertibility inputs are typing data and the usual hypotheses of matrix
inversion, and are supplied in `step_regularity:400–404`.

Conditional algebra/calculus helpers such as `fderiv_diffXi_eq`,
`frameInv_mulVec_inl/inr` and `norm_diffQ_le` are distinctly named. Their
intermediate identities/bounds are supplied by proved results inside the
package, not assumed by the source-facing theorem. In particular
`step_triangular:422–425` supplies holomorphy, invertibility, reducibility
and the linearized equation from actual predecessor applications.

## Definitions and semantic carriers

| New definition | Classification | Body and carrier verdict |
|---|---|---|
| `KAM.Uniq.remainder` (72–75) | Literal formula | PASS: exactly `X_h(K₁+Δ)-X_h(K₁)-DX_h(K₁)Δ`, complex pair valued, on the full declared carrier. |
| `KAM.Uniq.diffXi` (78–80) | Literal formula | PASS: exactly `P⁻¹ *ᵥ sumVec Δ`, with coordinates indexed by `Fin n ⊕ Fin n`. |
| `KAM.Uniq.diffQ` (83–85) | Literal formula | PASS: exactly `P⁻¹ *ᵥ sumVec R`, same coordinate carrier. |

For each definition separately:
`BODY_MATCH: OK`; `PUBLIC_CARRIER: OK`; `WELL_DEFINEDNESS: N/A_LITERAL`;
`CHARACTERIZATION: N/A_LITERAL`; `CHOICE_INDEPENDENCE: N/A`;
`DEFINITION_VERDICT: PASS`.

There are no new abbrevs or structures. All three definition texts occur
verbatim in Appendix A; independently elaborated defining equations close
by `rfl`. They introduce no `choose`, conditional branch or substituted
object. The source expressly adopts total `fderiv` and matrix inversion
(Part 0, `p0-conventions.tex:57–63`; design §0 and L2). Off-domain totality
is consequently the declared convention, not a hidden valid-locus repair.
Every inverse cancellation here is guarded by proved unit determinant;
derivative calculations occur on the open strip/domain with holomorphy.

Semantic dependencies inspected: `diffMap` in `Phase.lean:62–64` is exactly
the real translate difference; `sumVec` is `Sum.elim` and is an isometry
(`Torus/Basic.lean:54–73`); `frameMat` is `(L N)`, `linMat` represents
`DX_h ∘ K₁`, and `triangularMat` has blocks `(0,T;0,0)`
(`Torus/Objects.lean:55–106`). The frozen strip, primarity, realness,
Hamiltonian field, Gram, invariance and torsion definitions were inspected:
no Hermitian transpose, Euclidean norm, sign substitution, different
period, or alternative vector field is being used. The existing exact
reducibility theorem supplies the inverse formula and torsion identification.
Frozen identity/ABI checks below additionally bind the unchanged definitions.

## Strengthenings, proof checks and the factor ½

Design L8 replaces a uniform strict supremum bound by strict pointwise
bounds. The original hypothesis implies the new one; pointwise strictness
need not give a uniform strict gap. Thus the Lean main statement is genuinely
stronger, with the same conclusions. No equivalence of these two strict
conditions is claimed.

Regularity needs no smallness: `add_real_mem` preserves the strip, and
`add_diffMap` identifies `K₁+Δ` with `K₂(·+ψ)`. S4 supplies domain
membership for that composition; S3 and μ > 0 supply membership of K₁.
Holomorphy of the vector field and its derivative is proved from the
Hamiltonian standing package. Holomorphy of the inverse follows from the
proved unit determinant. The generalized finite-index inverse helper uses
Mathlib's differentiable inverse, without a resource override.

The linearized identity subtracts the two actual invariance equations.
In `fderiv_diffXi_eq:319–353`, the identity `sumVec Δ = P ξ` holds on an
open neighbourhood, so differentiating it is justified. The product rule,
`A P - ∂ω P = P Λ`, and inverse cancellation give `∂ω ξ = Λ ξ + q`.
`fderiv_reindex` and the two block multiplication lemmas recover both
components with the same signs as the blueprint.

For the Taylor bound (`norm_remainder_le:253–260`), set
`z = K₁ θ`, `w = Δ θ`, `F = X_h`, `U = 𝔅`, `A = M`.
Both endpoints lie in the radius-μ ball: the centre by μ > 0 and the other
endpoint by strict pointwise smallness. Convexity places the entire real
segment in that ball and then in 𝔅. The application of
`KAM.taylor_iteratedFDeriv` uses exactly S1's bound on the bilinear
`iteratedFDeriv ℂ 2 X_h`. Its implementation in `KAM/Strip/Taylor.lean`
converts to `‖D(DX_h)‖` by the norm identities and retains `M / 2`.
Multiplication by the inverse-frame norm gives exactly
`1 / 2 * C_P * M * ‖Δ‖ ^ 2` (`norm_diffQ_le:241–249`).
The other two estimates use the row-sum operator norm and the isometry
`norm_sumVec`; there is no dimension factor lost in a carrier conversion.

`step_bounds` works for arbitrary Δ because only this segment construction
and pointwise matrix estimates are needed. It assumes no holomorphy,
periodicity, invariance or realization by a second torus for Δ. Instantiating
it with `diffMap` supplies the blueprint instance directly. These are
permitted stronger results, not unproved replacement premises.

## Independent checks

All Lean executions were serialized, with `nice -n 5`; the source linter
(which also performs ABI elaboration) finished before the targeted build,
and the build finished before either probe invocation. No clean, broad
rebuild, heartbeat/recursion/synthesis override or state-changing git command
was used.

1. `sh scripts/lint_sources.sh` — exit 0, output:

   ```text
   check_lean_modules: PASS (259 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

2. `nice -n 5 lake build KAM.Uniq.Difference` — exit 0, output:

   ```text
   Build completed successfully (3190 jobs).
   ```

   This was a targeted build against the existing snapshot, with no
   compilation diagnostics. The Lake job count is not a count of rebuilt
   Mathlib files.

3. `git diff --check k/p3-2...HEAD` — exit 0, no output.
   `git diff k/p3-2...HEAD -- KAM/Frozen manifest` and
   `git diff main...HEAD -- KAM/Frozen manifest` — no output.

4. Python literal substring comparison against the design appendix — output:

   ```text
   remainder: exact definition substring in Appendix A = True
   diffXi: exact definition substring in Appendix A = True
   diffQ: exact definition substring in Appendix A = True
   difference_equation: exact signature substring in Appendix A = True
   Difference.lean SHA256 = a5276f960a8e27f8b481382cb927276c89a99158807b845fe65ba2bfcd582c04
   Difference.lean lines = 510
   ```

   Method: for each definition extract from `def <name> ` through its next
   blank line, including the body; for the theorem extract from
   `theorem difference_equation ` to ` := by`, then test its signature
   followed by ` :=` against the appendix text.

5. Direct source scan, in addition to lint — output:

   ```text
   Forbidden-token matches in Difference.lean: 0
   New declarations: 3 defs; 28 theorems; 0 abbrevs; 0 structures
   ```

   Pattern: `\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option\s+(maxHeartbeats|maxRecDepth|synthInstance\.maxHeartbeats)`.
   The module has copyright, `module`, interface `public import`s, module
   docstring, and `@[expose] public noncomputable section`. It is below 1500
   physical lines, hence below the code-line cap. No provider or frozen
   theorem is imported directly; axiom closure below excludes hidden sorry
   dependence as well. Generated root-import consistency passed lint.

6. `nice -n 5 lake env lean .lake/abi-scratch/P33Audit.lean` — exit 0
   on both the initial probe and the expanded composition probe. No errors.
   The initial probe printed only the 31 axiom lines described below. The
   expanded probe additionally printed this audit-probe-only warning:

   ```text
   .lake/abi-scratch/P33Audit.lean:57:37: warning: Variable name `h4` is not explicitly referenced.
   ```

   This is expected: the bounds proof needs no S4 premise. The diagnostic
   suggested removing/renaming that binder and mentioned an option to
   disable the linter; no option was set. No package source warning occurred.
   The probe imported only `KAM.Uniq.Difference`, opened the matrix norm
   scope, reconstructed the variable context, copied the exact Appendix A
   main theorem type into an anonymous `example`, and applied
   `difference_equation hP h1 h2 h3 h4 ψ hΔ`. Three additional examples
   checked the literal defining equations with `rfl`.

   The expanded probe also stated the complete graph bounds conclusion
   (including `‖R‖ ≤ M / 2 * ‖Δ‖²`) under the source assumptions. Its proof
   applied `step_bounds`, supplied the Hamiltonian holomorphy from
   `Apost.differentiableOn_ham (standing_of hP h1 h2)`, and applied
   `norm_remainder_le` with `hP.μ_pos`, `h3.ball_sub θ hθ` and `hΔ θ hθ`.
   The four estimates assembled by `exact ⟨hξ, hδ, hR, hq⟩`.
   Thus F1 is a mapping issue, not a missing inequality.

   The probe is temporary and was deleted after checking. No provider
   exact-frozen-type probe is applicable: this package has no provider and
   none of its five nodes is a frozen theorem. The exact Appendix A probe
   above passed; it does not promote G2.

Every one of the following `#print axioms` commands printed the exact set
`[propext, Classical.choice, Quot.sound]`. In the original output the line
format was `'<fully qualified name>' depends on axioms: [propext, Classical.choice, Quot.sound]`.

```lean
#print axioms KAM.Uniq.DiffAux.add_real_mem
#print axioms KAM.Uniq.DiffAux.add_diffMap
#print axioms KAM.Uniq.DiffAux.differentiableOn_diffMap
#print axioms KAM.Uniq.DiffAux.periodic_diffMap
#print axioms KAM.Uniq.DiffAux.differentiableOn_remainder_aux
#print axioms KAM.Uniq.DiffAux.differentiableOn_remainder
#print axioms KAM.Uniq.DiffAux.differentiableOn_inv_of_isUnit_det
#print axioms KAM.Uniq.DiffAux.differentiableOn_diffXi
#print axioms KAM.Uniq.DiffAux.differentiableOn_diffQ
#print axioms KAM.Uniq.DiffAux.periodic_diffXi
#print axioms KAM.Uniq.DiffAux.inv_mulVec_mulVec
#print axioms KAM.Uniq.DiffAux.mulVec_inv_mulVec
#print axioms KAM.Uniq.DiffAux.sumVec_eq_mulVec_diffXi
#print axioms KAM.Uniq.DiffAux.frameInv_mulVec_inl
#print axioms KAM.Uniq.DiffAux.frameInv_mulVec_inr
#print axioms KAM.Uniq.DiffAux.norm_diffXi_le
#print axioms KAM.Uniq.DiffAux.norm_diffMap_le
#print axioms KAM.Uniq.DiffAux.norm_diffQ_le
#print axioms KAM.Uniq.DiffAux.norm_remainder_le
#print axioms KAM.Uniq.DiffAux.step_linearized
#print axioms KAM.Uniq.DiffAux.fderiv_diffXi_eq
#print axioms KAM.Uniq.DiffAux.fderiv_reindex
#print axioms KAM.Uniq.DiffAux.triangularMat_mulVec_inl
#print axioms KAM.Uniq.DiffAux.triangularMat_mulVec_inr
#print axioms KAM.Uniq.DiffAux.step_regularity
#print axioms KAM.Uniq.DiffAux.step_triangular
#print axioms KAM.Uniq.DiffAux.step_bounds
#print axioms KAM.Uniq.difference_equation
#print axioms KAM.Uniq.remainder
#print axioms KAM.Uniq.diffXi
#print axioms KAM.Uniq.diffQ
```

## Findings, errata, deviations and limits

**F1 — minor: complete the handoff mapping for the bounds step.**
`docs/graph/K/DEPGRAPH.md:8942–8943` includes the intermediate remainder
estimate in the bounds step's conclusion. `Difference.lean:430–436` exposes
only the three final bounds in `step_bounds`; the intermediate estimate is
separately proved at 253–260 and consumed at 441. Proposed fix: map this
node to both `KAM.Uniq.DiffAux.step_bounds` and
`KAM.Uniq.DiffAux.norm_remainder_le`, as this report does. No proof or
signature change is required; the independently compiled composition
confirms full coverage.

No blocking or major finding. No suspected blueprint/source erratum was
found in this scope. Accepted departures: L8's weaker pointwise premise,
the further removal of unnecessary smallness in regularity/triangular,
and arbitrary-Δ bounds; carrier, totality and periodicity conventions are
those explicitly adopted by the design. No deviation was introduced by
the auditor.

P3-2 remains subject to its separate audit. This report checks the actual
P3-3 proof's axiom closure and its use of `diffMap`, but does not certify
the phase construction or any downstream quadratic/uniqueness theorem.
External-paper source errata and frozen G2 sealing are outside this package.
