# P3-4 independent audit 1

Overall verdict: **PASS WITH NOTES**.

`KAM.Uniq.quadratic` proves the binding design statement, with the blueprint constants and no added mathematical premise. The two a-priori cohomological estimates apply to the actual coordinates with all required premises discharged. No blocking or major finding was found. The notes concern graph bookkeeping for the documented route substitution and the handoff's references to intermediate results.

## Snapshot and scope

Audit date: 2026-10-27. Audited HEAD: `222797a8a6c4b1aeb6f881e3de8bc6187673e06b`; requested comparison `k/p3-3`: `302bcfbd9f92dbebf9bffc99c13b169a6e2fb019`. The implementation commit is `0c7b9ec`, as named in the handoff; the checkout also includes subsequent merges.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P3-4.md`, the common briefs, the binding design (including Appendix A), the handoff, and the raw Part 3 blueprint and graph contracts. The requested `git diff k/p3-3...HEAD` contains 23 paths, including four merged Part 4 Lean modules, generated root/README updates and earlier audit/graph material. The mathematical verdict covers P3-4's `KAM/Uniq/Quadratic.lean` (408 lines); it does not independently certify those unrelated packages. Repository-wide lint was nevertheless run.

`Standing`, `Frame`, `Phase`, `Difference`, and `Strip/CohomologicalOperator` are unchanged against the requested comparison. Their contracts, relevant definition bodies and coefficient proofs were inspected where consumed. This report does not replace the separate P3-3 audit. P3-4 is infrastructure: its graph entry has no frozen anchor, export, ABI or manifest ID. No provider belongs to this package, and this is not a seal of frozen G2.

Only this report was added to tracked-source locations. The supplied untracked handoff was preserved. The temporary probe was placed under `.lake/abi-scratch/` and deleted after use. No state-changing git command was run.

SHA-256:

```text
49d2cd4d16b4a5a6ad1f9f4cff9e27c10f17108c403a0c00e14040ee101e31ed  KAM/Uniq/Quadratic.lean
1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125  docs/campaign/design/PART23-LEAN-DESIGN.md
bbd7738a0706a2c39bc53f0a9902ec29c0bd483a8221a0febd543c6694951e19  blueprint/parts/p3-uniqueness.tex
```

## Node verdicts

Below U = `KAM.Uniq`, Q = `KAM.Uniq.QuadAux`. Implementation lines refer to `KAM/Uniq/Quadratic.lean` unless another file is named. Source locators are in `blueprint/parts/p3-uniqueness.tex` and match `docs/graph/K/DEPGRAPH.md` and `packets/K-p3.nodes.md`.

| Node | Lean declaration / proof location | Verdict | Reason |
|---|---|---|---|
| `bp:p3:quadratic` | `U.quadratic`, 259–404 | PASS | Source 415–425; signature byte-identical to design 1688–1696, including binder order, constant and exponent. Exact design-type application elaborated. |
| `bp:p3:quadratic#absorb` | `U.quadratic` local `habs`, 294–295; `U.one_le_absorb`, Standing:338 | PASS | Source 428–433. `frequency_bound` supplies γ ≤ Γ; 0 < δ ≤ ρ and τ+n > 0 are proved from actual parameters. No independent absorption assumption. |
| `step:p3:quad-remainder` | `U.quadratic` local `hq`, 306–309 | PASS | Source 435–436. Uses `difference_equation`'s exact half-factor remainder and squares the supplied nonnegative pointwise bound. |
| `step:p3:quad-normal-osc` | `Q.osc_bound`, 111–133; its use in `Q.normal_bound`, 230–231 | PASS WITH NOTES | Source 438–448. Bounds ξᴺ−avg ξᴺ using the exact `cohConst`; holomorphy, periodicity and zero average are proved, not assumed of an unrelated solution. The separately written avg qᴺ=0 is not exported here; see N1. |
| `step:p3:quad-normal-avg` | `Q.norm_avg_le`, 144–197; `Q.normal_bound`, 232–238 | PASS | Source 450–461. Zero average of the tangential derivative is obtained from `Apost.averages`; splitting, multiplication by the inverse average torsion and both average bounds are proved. |
| `step:p3:quad-normal` | `Q.normal_bound`, 211–246; `U.quadratic` local `hN`, 338–350 | PASS WITH NOTES | Source 463–468. The helper gives the unabsorbed bound; the local `hN` uses `normal_coeff_le` to give the complete C_N estimate. See N2 on the handoff locator. |
| `step:p3:quad-tangent` | `U.quadratic` locals `hH`, `hξL0`, `hL`, `hXL`, 352–385 | PASS | Source 470–486. Tangential derivative bound, phase normalization, second loss δ and exact C_L bookkeeping all supplied in the proof. |
| `step:p3:quad-combine` | `U.quadratic` local `hXi` and final calculation, 387–404 | PASS | Source 488–499. Uses max of block norms (no dimension loss), Δ ≤ C_P ξ from the predecessor, absorption of the normal term, then exact real-power identity. |

## Statement and expanded premises

References: P = source 50–53 (fixed parameters); S1 = 59–62; S2 = 63; S3 = 64–68; S4 = 69–70; R = 415–425 (quadratic statement). Design departures L1, L3–L6, L8 and L12 (design 297–308) account for indexing, invertibility, norms, pointwise sup bounds and coordinatewise periodicity.

The fourteen outer data binders are implicit. `hP`, `h1`–`h4`, ψ, `hΔ` and `havg` are explicit, followed by the universally quantified radii, their inequalities, Y and its bound, then θ and strip membership. There are no instance binders in `quadratic`. Bundled hypotheses were opened rather than accepted by name; conjunctions that carry distinct premises are split below. Quantifiers internal to a listed premise are part of that source proposition.

| Expanded binder/input | Bin | Source / meaning |
|---|---|---|
| n : ℕ | TYPING | P, dimension |
| τ : ℝ | TYPING | P, exponent |
| ρ : ℝ | TYPING | P, width |
| M : ℝ | TYPING | P, Hamiltonian bound |
| σK : ℝ | TYPING | P, derivative bound |
| σB : ℝ | TYPING | P, Gram inverse bound |
| σT : ℝ | TYPING | P, torsion inverse bound |
| μ : ℝ | TYPING | P, margin |
| 𝔅 : Set (ℂⁿ × ℂⁿ) | TYPING | S1, domain |
| h : (ℂⁿ × ℂⁿ) → ℂ | TYPING | S1, Hamiltonian |
| ω : ℝⁿ | TYPING | S2, frequency |
| γ : ℝ | TYPING | S2, Diophantine constant |
| K₁ : ℂⁿ → ℂⁿ × ℂⁿ | TYPING | S3, reference torus |
| K₂ : ℂⁿ → ℂⁿ × ℂⁿ | TYPING | S4, second torus |
| hP.two_le | STANDING | P: 2 ≤ n |
| hP.tau_ge | STANDING | P: n−1 ≤ τ |
| hP.ρ_pos | STANDING | P: ρ > 0 |
| hP.M_pos | STANDING | P: M > 0 |
| hP.σK_pos | STANDING | P: σK > 0 |
| hP.σB_pos | STANDING | P: σB > 0 |
| hP.σT_pos | STANDING | P: σT > 0 |
| hP.μ_pos | STANDING | P: μ > 0 |
| h1.isOpen | STANDING | S1: 𝔅 open |
| h1.transl_mem | STANDING | S1: integer angle translations preserve 𝔅 |
| h1.holo | STANDING | S1: h holomorphic on 𝔅 |
| h1.periodic | STANDING | S1: h periodic on 𝔅 |
| h1.real | STANDING | S1: h real at real domain points |
| h1.bounds: Dh | STANDING | S1: ‖Dh‖ ≤ M |
| h1.bounds: Xh | STANDING | S1: ‖Xh‖ ≤ M |
| h1.bounds: DXh | STANDING | S1: ‖DXh‖ ≤ M |
| h1.bounds: D²Xh | STANDING | S1: ‖D²Xh‖ ≤ M |
| h2.gamma_pos | STANDING | S2: γ > 0 |
| h2.dio | STANDING | S2: all nonzero integer modes satisfy the (γ,τ) Diophantine inequality |
| h3.holo | STANDING | S3: K₁ holomorphic on Tρ |
| h3.primary | STANDING | S3: K₁(θ+k)=K₁θ+(k,0) |
| h3.real | STANDING | S3: K₁ real on real inputs |
| h3.ball_sub | STANDING | S3: μ-ball about K₁θ contained in 𝔅 for θ ∈ Tρ |
| h3.deriv_le | STANDING | S3: ‖DK₁‖ ≤ σK−μ |
| h3.gram: unit | STANDING | S3: Gram determinant invertible |
| h3.gram: bound | STANDING | S3: ‖G⁻¹‖ ≤ σB−μ |
| h3.twist: unit | STANDING | S3: average torsion determinant invertible |
| h3.twist: bound | STANDING | S3: ‖average torsion inverse‖ ≤ σT−μ |
| h3.invariant | STANDING | S3: Xh(K₁θ)−DK₁θ·ω=0 |
| h4.holo | STANDING | S4: K₂ holomorphic on Tρ |
| h4.primary | STANDING | S4: K₂ primary on Tρ |
| h4.real | STANDING | S4: K₂ real on real inputs |
| h4.mem | STANDING | S4: K₂(Tρ) ⊆ 𝔅 |
| h4.invariant | STANDING | S4: Xh(K₂θ)−DK₂θ·ω=0 |
| ψ : Fin n → ℝ | TYPING | R, real phase |
| hΔ | SOURCE | R, pointwise ‖Δθ‖ < μ; design L8 is a weaker premise, hence stronger theorem |
| havg | SOURCE | R, avg(B Lᵀ Δ)=0 |
| ρ'' : ℝ | TYPING | R, output width |
| ρ' : ℝ | TYPING | R, input width |
| 0 < ρ'' | SOURCE | R, positive output width |
| ρ'' < ρ' | SOURCE | R, positive strip loss |
| ρ' ≤ 3ρ/4 | SOURCE | R, torsion-bound window |
| Y : ℝ | TYPING | R, pointwise upper bound, design L6 |
| ∀ θ ∈ Tρ', ‖Δθ‖ ≤ Y | SOURCE | R, upper bound representing the sup norm |
| θ : Fin n → ℂ | TYPING | R, output point |
| θ ∈ Tρ'' | SOURCE | R, output strip |

Counts: SOURCE 7; STANDING 34; TYPING 19; RULED 0; EXCESS 0. No conclusion-shaped assumption is present. The additional premises of the distinct abstract helper lemmas are their explicitly conditional inputs, all produced at the actual application sites.

Norms are the max norm on `Fin n → ℂ`, the max product norm on phase-space pairs and the induced row-sum matrix operator norm (`open scoped Matrix.Norms.Operator`, line 47). `sumVec` is an isometry; the transpose is bilinear. Radii and exponents have the design's exact types: γ² and Y² are natural powers, δ to a real exponent is `Real.rpow`.

The formula of `C_quad` in Standing:131–132 is exactly C_P max{C_L, Γ ρ^(τ+n) C_N}; C_N and C_L are the formulas with the half-factor in source 103–110. `C_coh = cohConst n τ` (Standing:123). No `max 1 cohConst` enlargement is used. The constant depends only on n, τ, ρ, M, σK, σB, σT, and not on μ, γ, ω, h, 𝔅, the tori, ψ, Y or either intermediate radius. The output has the required γ⁻² and δ^(-2(τ+n)) factors.

## Actual-function cohomological route

The imported `KAM.cohomological_apriori_pi` (Strip/CohomologicalOperator:144–161) bounds u itself, given Diophantine ω, γ>0, τ≥0, 0<δ<r, holomorphy, coordinatewise periodicity, zero torus average and a bound on its directional derivative throughout T_r. Its scalar proof (119–140) derives regularity, periodicity and zero average of g=∂ωu, identifies u with `cohSolution` by `eq_cohSolution`, and applies `norm_cohSolution_le`. Thus the consumer avoids a separate uniqueness invocation; uniqueness is already discharged inside the proved infrastructure.

First application: `osc_bound` uses u=ξᴺ−avg ξᴺ on r=ρ'. Holomorphy and periodicity follow from the normal-coordinate projections of `difference_equation`, restricted to Tρ'. Lines 117–128 explicitly establish holomorphy, periodicity and zero average after subtracting the constant. Continuity on the real torus justifies average subtraction; its volume normalization is 1. Lines 129–132 show subtracting the constant leaves the directional derivative unchanged. `normal_bound` lines 230–231 supplies ∂ωξᴺ=qᴺ and the actual qᴺ bound. All sign, exponent and radius hypotheses are supplied; no boundedness assumption on a newly selected solution enters.

The normal average is then determined by the actual tangential equation. Lines 232–235 apply the zero-average directional-derivative item of `Apost.averages` to ξᴸ on the positive-width strip. `norm_avg_le` splits ξᴺ into its average c and oscillation, uses continuity to split integrals, and proves c=(avg T)⁻¹(-w) at 189–191. This is the source formula with the minus sign. The bounds use only real points contained in the positive intermediate strip. `torsion_bound` supplies continuity and identifies the frozen torsion average with `avg T`; S3 supplies invertibility and the norm bound, relaxed from σT−μ to σT at 311–316.

Second application: lines 352–366 bound ∂ωξᴸ=Tξᴺ+qᴸ on r=ρ'−δ using the actual hN, remainder bound and torsion estimate on T(3ρ/4). Lines 367–369 transfer the assumed avg(B Lᵀ Δ)=0 through the exact component identity from `difference_equation`, giving avg ξᴸ=0. Lines 370–374 supply holomorphy, periodicity, that average and the derivative bound to `cohomological_apriori_pi`. The loss δ is valid because δ<ρ'−δ; the output strip is exactly ρ'−2δ=ρ'' (277–284, 378). No extra premise about g, an independent cohomological solution, or its uniqueness is smuggled in.

Finally hXi combines the two components by the max norm, restricts the normal estimate to the smaller strip and uses `combine_coeff_le` with the already proved absorption. `inv_mul_rpow_sq` gives a²=(γ²)⁻¹ δ^(-2(τ+n)) with δ>0. No assumption γ≤1 or δ≤1 is used.

## Definition classification

There are **no new `def`, `abbrev` or `structure` commands** in Quadratic.lean. Its nine declarations are theorems; local `set` commands δ, a, c and w are explicit mathematical expressions, not selected witnesses or fallback constructions.

Relevant unchanged definitions were inspected: `diffMap` is exactly K₂(θ+ψ)−K₁θ (Phase:62); `remainder` is the literal first-order Taylor defect of Xh (Difference:72); `diffXi` and `diffQ` are P⁻¹Δ and P⁻¹R after `sumVec` (Difference:78,83). `avg` is integration over the real unit cube, `IsPeriodicOn` is coordinatewise unit-shift periodicity (Torus/Basic:122,134), and the constants are literal formulas. The existing total matrix inverse is used only with invertibility proved by the predecessor/S3, never by exploiting singular fallback values.

For these inspected literal definitions: BODY_MATCH OK; PUBLIC_CARRIER OK under the existing design's totality convention L2; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS in the consumed scope. No new definition requires a characterization or choice theorem.

## Checks and reproducible probe

Checks were serialized: the build completed before lint (which invokes ABI elaboration), and lint completed before the standalone probe. No full-library rebuild or resource override was requested.

`nice -n 5 lake build KAM.Uniq.Quadratic` exited 0:

```text
Build completed successfully (3192 jobs).
```

`sh scripts/lint_sources.sh` exited 0:

```text
check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The lint covers forbidden escapes and resource overrides, ambient carriers, file/line limits, module structure, generated root imports, errata rendering, provider quarantine, frozen bytes and ABI hashes. Quadratic.lean has 408 lines, a copyright header, `module`, interface `public import KAM.Uniq.Difference`, module docstring and `@[expose] public noncomputable section`. No forbidden command appears.

`git diff k/p3-3...HEAD -- KAM/Frozen manifest` exited 0, with empty output. `git diff --check k/p3-3...HEAD` exited 0, with empty output. A Python regex comparison of the complete text from `theorem quadratic` through its first `:=` in the design and implementation printed:

```text
quadratic signature byte-equal to Appendix A: True
```

The transient `.lake/abi-scratch/P34Audit1.lean` imported only `KAM.Uniq.Quadratic`, opened the design's matrix norm scope and namespace, declared the same fourteen implicit data binders, and copied the signature directly from Appendix A as an `example`. Its body was:

```lean
by exact quadratic hP h1 h2 h3 h4 ψ hΔ havg
```

`nice -n 5 lake env lean .lake/abi-scratch/P34Audit1.lean` exited 0, with no warning or error; the exact-type example elaborated and all nine axiom commands printed:

```text
'KAM.Uniq.QuadAux.differentiableOn_reindex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.isPeriodicOn_reindex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.norm_reindex_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.continuous_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.torusAverage_add'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.osc_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.norm_avg_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.QuadAux.normal_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.quadratic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The standard three axioms are the entire transitive closure; no `sorryAx` or project axiom occurs. Provider exact-type probe: **N/A**, no provider in this package. The infrastructure exact-type application above was run instead. These are Lean elaboration and axiom checks, not an independent `leanchecker` replay.

## Findings and handoff notes

**N1 — minor, route bookkeeping.** The handoff correctly discloses the a-priori-bound substitution. Source 438–448 and the `step:p3:quad-normal-osc` graph contract also state avg qᴺ=0. `osc_bound` exports only the oscillation estimate, and the package does not separately export that vector identity. The imported scalar a-priori proof derives the corresponding derivative zero average internally; no consumer here requires a separate avg qᴺ=0 result. This does not weaken `quadratic`. Proposed follow-up: when the orchestrator updates graph metadata, record the actual-function a-priori route and distinguish the unused standalone identity, consistently with D27. Do not describe the handoff as a separately exported proof of every clause of that graph step.

**N2 — minor, locator precision.** The handoff maps `step:p3:quad-normal` to `QuadAux.normal_bound`. That helper's conclusion at 224–225 is the unabsorbed sum, whereas the exact C_N result is local `hN` in `quadratic` at 338–350. Likewise the inverse-average identity is local `hcw` in `norm_avg_le`, and several other complete steps are local facts inside the root proof. Proposed follow-up: record these exact local ranges with the declarations that cover them. No mathematical repair is required.

Suspected pinned-source errata: **none identified in this scoped blueprint/implementation comparison**. No independent re-audit of the cited GJLV05/HL19 PDFs is claimed; the flow estimate is expressly the project's adaptation. Deviations: the disclosed a-priori route is valid; pointwise sup conventions and the stronger pointwise smallness premise are already binding design departures L6/L8. The auditor introduced no implementation deviation. Upstream audit acceptance and frozen G2 assembly remain outside this package's verdict.
