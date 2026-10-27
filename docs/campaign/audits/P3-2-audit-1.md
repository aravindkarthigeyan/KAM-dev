# P3-2 independent audit 1

Overall verdict: **PASS WITH NOTES**.

The package proves `KAM.Uniq.phase` with the binding Appendix A signature, the stated constants, and no additional premise. Its real fixed point gives exactly the required zero complex average. The authorized mean value substitution is valid. The notes concern the granularity of the handoff's graph-step references, not a missing premise or a gap in the phase theorem.

## Snapshot and scope

Audit date: 2026-10-27. Checked-out HEAD: `e1971f9ec560252a6811a8131485bca1dd019e4a`; comparison `main`: `24bf3c3dffe878bd6548558575ca9fc0241b823e`. The handoff identifies the earlier implementation commit `2067a81`; this audit applies to the actual merged checkout above.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit brief, `P3-2.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, the relevant design sections and Appendix A, and the raw blueprint and graph contracts. No repository implementation was edited. The only durable file created by the auditor is this report; the supplied untracked handoff was preserved.

`git diff main...HEAD` contains only the 502-line `KAM/Uniq/Phase.lean` and the generated root import for it. No provider is part of P3-2. Its graph result has no frozen anchor or manifest ID (`DEPGRAPH.md:8639–8653`); this is an internal infrastructure audit, not sealing or proving frozen G2.

SHA-256:

```text
c0b80a04a11396710bf37f377991e454945f34355564d270509ca1af1dd61830  KAM/Uniq/Phase.lean
1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125  docs/campaign/design/PART23-LEAN-DESIGN.md
bbd7738a0706a2c39bc53f0a9902ec29c0bd483a8221a0febd543c6694951e19  blueprint/parts/p3-uniqueness.tex
```

## Node checks

Below `U` means `KAM.Uniq`, and `A` means `KAM.Uniq.PhaseAux`. All implementation locators are in `KAM/Uniq/Phase.lean`.

| Node | Lean declaration and locator | Verdict | Evidence |
|---|---|---|---|
| `bp:p3:phase` | `U.phase`, line 456 | PASS | Signature byte-equal to design lines 1645–1651, before the proof delimiter. Exact-type application probe passed. Blueprint lines 279–288: same real witness, radius, smallness denominator, and zero average. |
| `eq:p3:Delta` (definition, not a separate graph node) | `U.diffMap`, line 62 | PASS | Exactly `K₂(θ + ofReal ψ) - K₁ θ`, design lines 1623–1627 and blueprint lines 350–353. Defining-equation `rfl` probe passed. |
| `step:p3:phase-real` | `A.im_integrand`, line 220; `A.continuous_integrand`, line 200; `U.phase`, lines 482–488 | PASS WITH NOTES | The combined residual integrand is real and continuous. Inherited `Apost.hasRealEntries_inv_gramMatrix` uses `KAM.real_inverse`; derivative realness is proved in the inherited helpers. These supply realness of its average. See N1 on the source's separately written summands. |
| `step:p3:phase-fixed-point` | `A.redMat_mulVec_diffMap`, line 177; `A.phaseMap`, line 365; `U.phase`, lines 472–497 | PASS WITH NOTES | Pointwise complex identity plus continuity and realness gives the averaged equivalence. Both directions independently elaborated in the audit probe. The handoff's single identity declaration does not itself state the complete iff; see N1. |
| `step:p3:phase-derivatives` | `A.norm_sub_le_real`, line 93; `A.norm_taylor_defect_le`, line 106 | PASS | `increments` with δ = ρ/2 gives the W bound; applying it to the holomorphic derivative gives the L bound. The latter is used locally at lines 133–140 inside the stronger complex-ball remainder estimate. No replacement norm or extra source assumption. |
| `step:p3:phase-contraction` | `A.norm_integrand_sub_le`, line 310; `A.norm_phaseMap_sub_le`, line 369; `A.lip_le_half`, line 281; `A.exists_fixedPoint`, lines 423–437 | PASS | Exact Lipschitz coefficient, bounded averaging and real-part projection; ball invariance proved explicitly, rather than assumed. |
| `step:p3:phase-conclusion` | `A.exists_fixedPoint`, line 410; `U.phase`, line 456 | PASS | Complete closed real ball, contraction factor 1/2, exhibited initial point 0, then conversion of the real fixed point into the full complex normalization. |

The pointwise upper-bound formulation of η is the documented design departure L7 (`design:304`), not a new premise. Given the blueprint's finite supremum η, its pointwise bound supplies the Lean input. Conversely a chosen upper bound supports the same construction and stated witness bound. The standing parameters include n ≥ 2 and positive widths exactly as in Part 3; the module identifies the standing assumptions. Retaining unused S1 and S2 is faithful, and the docstring explicitly says the proof needs only S3 and S4.

## Expanded binder audit for `phase`

References: P = `blueprint/parts/p3-uniqueness.tex:50–53`; S1 = lines 59–62; S2 = line 63; S3 = lines 64–68; S4 = lines 69–70; L = lines 279–288; A = design lines 1645–1651. The imported structures were opened and checked field by field against those raw source clauses, not accepted from their names.

Every outer data binder is implicit, as specified in design §3; `hP`, `h1`–`h4`, `hη`, `hsmall` are explicit and η is implicit at its stated position. There are no instance binders in the public theorem. Logical conjunctions in structure fields are split below; universally quantified points and lattice indices remain local to the source propositions, not extra theorem assumptions.

| Expanded binder/input | Bin | Source or typing reason |
|---|---|---|
| n : ℕ | TYPING | P, dimension |
| τ : ℝ | TYPING | P, exponent |
| ρ : ℝ | TYPING | P, strip width |
| M : ℝ | TYPING | P, Hamiltonian bound |
| σK : ℝ | TYPING | P, derivative bound |
| σB : ℝ | TYPING | P, Gram inverse bound |
| σT : ℝ | TYPING | P, torsion inverse bound |
| μ : ℝ | TYPING | P, margin |
| 𝔅 : Set (ℂⁿ × ℂⁿ) | TYPING | S1, domain |
| h : (ℂⁿ × ℂⁿ) → ℂ | TYPING | S1, Hamiltonian |
| ω : ℝⁿ | TYPING | S2, frequency |
| γ : ℝ | TYPING | S2, Diophantine constant |
| K₁ : ℂⁿ → ℂⁿ × ℂⁿ | TYPING | S3, reference map |
| K₂ : ℂⁿ → ℂⁿ × ℂⁿ | TYPING | S4, second map |
| η : ℝ | TYPING | L and A, bound |
| hP.two_le | STANDING | P: 2 ≤ n |
| hP.tau_ge | STANDING | P: n − 1 ≤ τ |
| hP.ρ_pos | STANDING | P: 0 < ρ |
| hP.M_pos | STANDING | P: 0 < M |
| hP.σK_pos | STANDING | P: 0 < σK |
| hP.σB_pos | STANDING | P: 0 < σB |
| hP.σT_pos | STANDING | P: 0 < σT |
| hP.μ_pos | STANDING | P: 0 < μ |
| h1.isOpen | STANDING | S1: domain open |
| h1.transl_mem | STANDING | S1: integer angle translations preserve domain |
| h1.holo | STANDING | S1: h holomorphic |
| h1.periodic | STANDING | S1: h invariant under integer angle translations |
| h1.real | STANDING | S1: imaginary part zero at real domain points |
| h1.bounds, Dh component | STANDING | S1: ‖Dh‖ ≤ M |
| h1.bounds, Xh component | STANDING | S1: ‖Xh‖ ≤ M |
| h1.bounds, DXh component | STANDING | S1: ‖DXh‖ ≤ M |
| h1.bounds, D²Xh component | STANDING | S1: ‖D²Xh‖ ≤ M |
| h2.gamma_pos | STANDING | S2: γ > 0 |
| h2.dio | STANDING | S2: for every nonzero integer k, γ/(Σᵢ|kᵢ|)^τ ≤ |Σᵢkᵢωᵢ| |
| h3.holo | STANDING | S3: K₁ holomorphic on Tρ |
| h3.primary | STANDING | S3: K₁(θ+k) = K₁θ+(k,0), θ ∈ Tρ, k ∈ ℤⁿ |
| h3.real | STANDING | S3: every real input has a real pair as output |
| h3.ball_sub | STANDING | S3: open μ-ball about K₁θ lies in 𝔅 |
| h3.deriv_le | STANDING | S3: ‖DK₁θ‖ ≤ σK−μ |
| h3.gram, unit component | STANDING | S3: Gram determinant a unit |
| h3.gram, norm component | STANDING | S3: ‖G⁻¹‖ ≤ σB−μ |
| h3.twist, unit component | STANDING | S3: average torsion determinant a unit |
| h3.twist, norm component | STANDING | S3: ‖average torsion inverse‖ ≤ σT−μ |
| h3.invariant | STANDING | S3: Xh(K₁θ)−DK₁θ·ω = 0 |
| h4.holo | STANDING | S4: K₂ holomorphic on Tρ |
| h4.primary | STANDING | S4: K₂(θ+k) = K₂θ+(k,0) |
| h4.real | STANDING | S4: every real input has a real pair as output |
| h4.mem | STANDING | S4: K₂(Tρ) ⊆ 𝔅 |
| h4.invariant | STANDING | S4: Xh(K₂θ)−DK₂θ·ω = 0 |
| hη | SOURCE | L, A: pointwise bound on ‖K₂−K₁‖ |
| hsmall | SOURCE | L, A: η ≤ ρ/[4n C_P(1+2 C_P σK)] |

Counts: SOURCE 2; STANDING 34; TYPING 15; RULED 0; EXCESS 0. The norms are max norms on functions and pairs and the row-sum matrix operator norm, with ordinary bilinear transpose. `C_P` is the imported literal `2*n*σK*(1+σB)` (`Standing.lean:117`, blueprint lines 97–100); it does not depend on h, the tori, ω, γ, η, or ψ. The existential ψ comes after all data and premises, with exactly the stated radius and normalization.

## Definition classification

There are four new definitions, no new abbreviations or structures.

| Definition | Classification and whole-carrier check |
|---|---|
| `U.diffMap`, line 62 | Literal shifted difference for arbitrary total maps, arbitrary real phase, arbitrary complex argument. No branch, choice, or restriction to a valid locus. Moving it from the proposed Difference grouping into Phase avoids a dependency cycle and preserves its name and body. |
| `A.redMat`, line 164 | Literal `(gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ`; same BLᵀ as the source. Uses the ordinary total matrix inverse, with invertibility supplied by S3 before inverse identities are used. No added fallback. |
| `A.integrand`, line 170 | Literal BLᵀ applied to the shifted difference minus DK₁θ·ψ, in the isometric `sumVec` carrier. Algebraically equals the blueprint's sum of W and the K₁ first-order defect. No assumed remainder estimate. |
| `A.phaseMap`, line 365 | Literal negative coordinatewise real part of the average of that integrand, total on real phases. Realness of the average is proved; no imaginary information is discarded in the normalization. Continuity is established before average linearity is used. |

For all four: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. Total `fderiv`, integration and matrix inverse are the intended underlying operations; the proof establishes holomorphy, continuity/integrability and invertibility where their analytic or algebraic laws are required.

The imported semantic dictionary was checked at its definitions: `sumVec` is the pair-to-sum linear equivalence with max-norm isometry (`Torus/Basic.lean:54–72`), `avg` is integration of the real restriction over the unit cube (`Basic.lean:134`, `Strip/Averages.lean:32`), `tangentMat` represents the derivative, and `gramMatrix` uses the bilinear dot product. `complexStrip` is the open coordinatewise imaginary-part strip. Primary, real-on-reals, and Diophantine predicates expand as recorded above. No replacement norm, Hermitian transpose, or altered periodicity is hidden in an alias.

## Analytic and arithmetic checks

1. `η ≥ 0` follows from hη at θ=0, which belongs to Tρ by ρ>0 (`Phase:416–419`). Thus R = 2 C_P η is nonnegative; even η=0 yields a nonempty complete ball.
2. `radius_lt` (`Phase:265–276`) proves the strict R < ρ/2 from the exact non-strict smallness premise, positivity, and n ≥ 2. There is no added strict-smallness premise. All translated complex points needed by the MVT argument therefore lie in T(ρ−ρ/2).
3. For the Taylor-defect increment, `norm_taylor_defect_le` proves the derivative of `w ↦ K₁(a+w)−DK₁(a)w`, bounds it by `n*(ρ/2)⁻¹*σK*R` throughout the closed complex ball, and applies Mathlib's mean value inequality on that convex ball. Holomorphic regularity supplies differentiability of DK₁. The endpoints are in the ball and its translate stays inside the open strip. This is precisely the authorized design §7.2(5) substitution; it requires no second-order Taylor factor 1/2.
4. Combining the W increment and this defect with ‖BLᵀ‖ ≤ C_P gives
   `q = C_P*(n*(ρ/2)⁻¹*η + n*(ρ/2)⁻¹*σK*R)`.
   With R = 2 C_P η, this is `2*n*C_P*η*(1+2*C_P*σK)/ρ`. `lip_le_half` establishes q ≤ 1/2 with exactly the source denominator. The real-part projection has norm at most one; `norm_sumVec` loses no dimension factor.
5. ‖Φ(0)‖ ≤ C_P η and ‖Φψ−Φ0‖ ≤ ‖ψ‖/2 imply ‖Φψ‖ ≤ R. Both continuity and integrability are supplied before subtracting averages (`Phase:376–387`); the cube has volume one. The fixed-point theorem uses completeness of the closed real ball and base point 0 (`Phase:438–444`).
6. Finally the real part of the fixed point and the vanishing imaginary part of the average give `avg integrand = −ofReal ψ`. Averaging the pointwise BLᵀ identity then gives exactly zero (`Phase:472–497`). No frozen theorem or provider is used as a shortcut; axiom closure independently excludes `sorryAx`.

## Checks and output

All Lean invocations were serialized. No heartbeat, recursion-depth, or synthesis budget was changed. No clean or scratch rebuild of the library was performed.

```text
$ nice -n 5 lake build KAM.Uniq.Phase
Build completed successfully (3189 jobs).
[exit 0]

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (258 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]

$ git diff --exit-code main...HEAD -- KAM/Frozen manifest
[no output; exit 0]

$ git diff --check main...HEAD
[no output; exit 0]

$ wc -l KAM/Uniq/Phase.lean
502 KAM/Uniq/Phase.lean

$ rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Uniq/Phase.lean
[no output; exit 1, meaning no matches]

$ git diff --name-only main...HEAD
KAM.lean
KAM/Uniq/Phase.lean
```

The generated root check is included in the successful lint. The module has the required copyright, `module`, public interface import, module docstring, exposed public noncomputable section and operator norm scope.

The first transient probe `.lake/abi-scratch/P32Audit1.lean` contained the Appendix A phase statement copied directly from the design, with body `phase hP h1 h2 h3 h4 hη hsmall`, a `rfl` check of `diffMap`, and `#print axioms` for every package theorem and definition. The Python extraction compared the design statement and implementation statement literally, printing:

```text
Appendix A phase signature byte equality: True
Probe generated: .lake/abi-scratch/P32Audit1.lean
Package theorem count: 20
```

```text
$ nice -n 5 lake env lean .lake/abi-scratch/P32Audit1.lean
'KAM.Uniq.PhaseAux.mem_complexStrip_of_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.abs_im_le_norm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.add_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_sub_le_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_taylor_defect_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.ofReal_vec_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.ofReal_vec_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.redMat_mulVec_diffMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.differentiableOn_redMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.continuous_integrand' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.im_integrand' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.torusAverage_const_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.radius_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.lip_le_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_integrand_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_integrand_zero_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_phaseMap_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.norm_phaseMap_zero_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.exists_fixedPoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.phase' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.diffMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.redMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.integrand' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.PhaseAux.phaseMap' depends on axioms: [propext, Classical.choice, Quot.sound]
[exit 0]
```

The second probe retained the exact-type and defining-equation checks and replaced the axiom commands with the independently reconstructed equivalence:

```lean
example (hP : Params n τ ρ M σK σB σT μ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) (ψ : Fin n → ℝ) :
    (avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
      sumVec n (diffMap K₁ K₂ ψ θ)) = 0) ↔ PhaseAux.phaseMap K₁ K₂ ψ = ψ := by
  -- Compose the shipped pointwise identity, continuous averaging, and realness.
  -- The actual transient probe supplied both directions in full, with no holes.
```

Its full proof first established `avg(BLᵀ Δ) = ofReal ψ + avg(integrand ψ)` using `redMat_mulVec_diffMap` and `torusAverage_const_add`. The forward direction took coordinatewise real parts; the reverse used the real fixed-point equality and `im_integrand` under `torusAverage_vector_apply`. This works without S1, S2 or smallness, so introduces no excess source premise.

```text
$ nice -n 5 lake env lean .lake/abi-scratch/P32Audit1.lean
[no output; exit 0]
```

The scratch probe was deleted after the checks. Provider exact-type probe: **N/A, package has no provider**. The independent Appendix A application probe above passed; it does not claim to instantiate the frozen local uniqueness theorem.

## Findings, deviations and limits

**N1 — minor: the handoff's graph-step references are abbreviated.** Evidence: graph `step:p3:phase-real` (`DEPGRAPH.md:8672–8682`, blueprint lines 294–300) mentions the two residual summands separately, whereas `im_integrand` and `continuous_integrand` concern their combined integrand. The combined version is all the phase proof consumes. Similarly `step:p3:phase-fixed-point` (`DEPGRAPH.md:8699–8709`, blueprint lines 302–312) states a full iff, while `redMat_mulVec_diffMap` is its pointwise algebraic identity and `phase` explicitly consumes the fixed-point-to-normalization direction. The independent iff probe confirmed the reverse direction is also derivable from the shipped lemmas. This is not a weakened statement of the package's required Appendix A theorem. Proposed fix: expand the handoff/graph `LEAN_NOTE` to identify continuity, realness and averaging composition, and distinguish combined-integrand coverage from literal separate-summand exports. If literal standalone step exports are wanted, add distinctly named equivalence and separate-summand helpers before claiming those exact exports. No change to `phase` is required.

No blocking or major finding. No suspected mathematical erratum in the audited blueprint statements. No original GJLV05/HL19 PDF erratum is asserted: this audit compares the package directly to its local blueprint and binding design, not a new independent audit of those external papers. The MVT route is an authorized proof substitution, and placing `diffMap` in Phase is the disclosed module organization change. The auditor introduced no mathematical deviation.

The broader G2 theorem, later Difference/Quadratic modules, and the entire inherited Part 1/Part 2 proof campaign were not re-audited here. Imported predicate bodies relevant to this statement, the analytic interfaces actually used, frozen integrity and transitive axiom closure were checked. No frozen theorem status changes follow from this report.

Final workspace check: `git diff --check` exited 0 with no output. `git status --short` showed only this new report and the pre-existing untracked `P3-2-handoff.md`. The scratch probe no longer exists.
