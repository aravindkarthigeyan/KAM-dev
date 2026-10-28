# Closure check: Parts 11a-1 and 11a-2

Reviewer marker: `closure-p11a12`. Date: 2026-10-28.

**Part 11a-1: OPEN, solely for one residual plan statement (P11A1-P01).** All five local findings and the substantive measure/selection hand-off are fixed. The plan's target still conflates a lifted cell with a quotient and still asserts compactness of the half-open cell image. The written theorems in 11a-4/5 correctly distinguish these objects. This remaining item is minor; it does not invalidate the measure estimates or the finite-stage construction.

**Part 11a-2: CLOSED.** All four findings are fixed, including the finite-stage divisor obligation supplied by 11a-3. No remaining major defect was found in the changed steps or the 11a-1 → 11a-2 → 11a-3 hand-offs.

The binary OPEN verdict for 11a-1 means that not *every* required original correction is present throughout the current text and plan. It is not a renewed REVISE verdict on its local measure package. Across the fourteen original tabled findings: **13 FIXED, 1 OPEN, 0 OBSOLETE**.

## Scope and snapshot

Independent, source-first closure audit under `.drafts/briefs/bp-review.md` and the manuscript-audit workflow. Read the two original reviews, the current two parts, their plan corrections, the relevant schedule, extension, finite-stage and limiting arguments in 11a-3, review 3 of 11a-3, and the later 11a-4/5 reviews and consumer statements. Later acceptance is corroboration, not a substitute for checking the arguments.

HEAD at inspection: `cdd0849325af3d590fe5f47c8dac05550fbdeb12`, branch `inp`. Locators below refer to this snapshot, with `11a-1`, `11a-2`, `11a-3`, `11a-4`, and `11a-5` abbreviating their respective files in `blueprint-P/parts/`. `PLAN` means `blueprint-P/PLAN-11a.md`.

| Input | Lines / bytes where relevant | SHA-256 |
|---|---|---|
| `p11a1-weak-measure.tex` | 239 / 48,498 | `66b5ce26db59b57dbf934938a7bae2fead6b6ff4c7c9d420d33b9582e272bab5` |
| `p11a2-cutoff-step.tex` | 333 / 57,060 | `990694a832aa02dca0138c5cbb3bab842984583f4ca92576479eff04786ed3ec` |
| `p11a3-iteration-selection.tex` | 441 | `90251ed2045353dd2c9574b5f2c53588eb5762ea9dbc86ed9075c00bf8d9ad1c` |
| `PLAN-11a.md` | 133 | `a77098286f1b910ae838f2f996c4f26ae64de264c29874da05ebd899ff376c5d` |
| `p11a4-limit-family.tex` | consumer | `c88030106491131ffde29078d1f0919ae092592bf37e1bbc68a87ab087369b2b` |
| `p11a5-quantitative-theorem.tex` | consumer | `f4ea938ec9baf0a280fded708fc7b2bbac4584a6347ad9d49da1291c73ad9b1d` |

History confirms the relevant sequence: `f52632c` repaired the initial measure/plan review; `80a8c06` added 11a-2; `98fe335` corrected I3 and the 11a-2 minors; `2f0e224` repaired the subsequent I3 frequency/divisor bookkeeping and budget dependence. The 11a-1, 11a-2 and PLAN hashes still equal those recorded in 11a-3 review 3. The subsequent change to 11a-3 is its L399 necessity-example specialization; `git diff 2f0e224 HEAD -- blueprint-P/parts/p11a3-iteration-selection.tex` confirms that it does not alter the finite-stage proof or the exported sums.

## Part 11a-1 findings

| Original ID | Status | Current evidence and countercheck |
|---|---|---|
| P11A1-01 | FIXED | `index-def`, L42–46, bounds derivative orders by the available regularity L, reserves unbounded-order statements for analytic/smooth maps, and preserves the natural zero-order amount. `rc-reduce`, L55, explicitly replaces a possibly zero finite-type witness by max(1,j₀). Thus the constant-frequency counterexample no longer contradicts the positive-index bound. |
| P11A1-02 | FIXED | `scalar-sublevel` source note, L96, credits Rus01's Taylor-plus-integral extension and identifies Bakhtin as the imported estimate; it explicitly disclaims an extension erratum. `power-law` source note, L180, distinguishes the CP09 threshold exponent μ/2 from the loss exponent 2/μ. Notes L226–228 retain the same provenance. Direct PDF checks confirm both corrections. The redundant inline `sourcegap` noted in the original validation paragraph is absent. |
| P11A1-03 | FIXED | F4, L34, now names `Orthonormal.exists_orthonormalBasis_extension` and supplies a direct Householder construction on the coordinate space, with the identity case handled separately. Euclidean lengths are explicit and the ambient max norm is retained. This is a mathematical locator/bridge correction, not a claim of Lean elaboration. |
| P11A1-04 | FIXED | L27 now distinguishes closed sublevel/good sets from Borel differences and countable unions and allows outer measure. It no longer calls every measured set closed. |
| P11A1-05 | FIXED | L163, L174 and `consumers`, L212–219, explicitly distinguish a map per mode from one Diophantine vector. `limit-bridge`, L188–194, pays the 2γ-to-γ margin using ℓ¹–ℓ∞ duality. Mode selection uses the cutoff's ℓ¹ norm. I3, L216, now uses the upper endpoint T_m for every m≥0; L218 bounds a frequency difference before multiplying by |k|₁. The finite retained-set version is proved in 11a-3 `finite-divisor`, L240–251, and used at L298–300; the limiting version is separately proved at L330–334. |

The original review also cautioned about finite norms on arbitrary noncompact A in the standalone stability notation (11a-1 L23–24, L59–74). The audited consumer uses the compact thickening K_ϑ strictly inside the analytic domain (11a-3 L35–37), so its M₀ and derivative norms are finite; this observation does not introduce a missing hypothesis into the actual hand-off. The standalone sup notation should be interpreted as an extended supremum, or restricted to bounded derivatives when translated to real-valued Lean norms. This is not an additional refutation of the consumer.

## Plan findings inherited from the 11a-1 review

| Original ID | Status | Current evidence and countercheck |
|---|---|---|
| P11A1-P01 | OPEN | PLAN L25–26 now correctly requires primary equivariance and periodicity of the defect. PLAN L104, 11a-4 `evaluation-bilipschitz` L213–231, and 11a-5 L85 distinguish the Borel half-open image from the compact closed-cell/quotient image. However PLAN L27 still describes the Euclidean-valued evaluation as a map on H×ℝᴺ/ℤᴺ, and L28 still says its image is compact. A primary lift does not descend into the Euclidean target; even the identity family has noncompact lifted image [0,1)ᴺ×H. The following L29 adds the correct compactness statement but does not remove the false preceding one. Exact replacement below. |
| P11A1-P02 | FIXED | PLAN L69–75 and 11a-2 `fourier-cutoff`/`loss-choice`, L42–81, use the newly proved bound c_N(1+d⁻ᴺ)e^(−πTd) and d_T=[log(2c_N/α)+N log(πT)]/(πT), conditional on d_T≤1. `loss-sum`, L84–91, computes its geometric sum. 11a-3 `strip-budget`, L99–112, chooses T₀ and pays all losses, obtaining r_ν≥s/2 and d_ν≤1/4. The invalid old substitution is explicitly rejected, not reused. |
| P11A1-P03 | FIXED | PLAN L21–24, L29 and L111 include angular width s and its possible rate a_s. 11a-3 `sel-data` L35, `schedule` L91–95 and `strip-budget` supply the independent strip datum and its expenditure. `adm-budget`, L374 onward, includes a_s; the actual theorem's data in 11a-5 L73 include s. No angular width is inferred from action thickness. |
| P11A1-P04 | FIXED | PLAN L33 explicitly calls the displayed sequence geometric, records Rus01's κ=24/25 and distinguishes d_cut from the diameter. The actual replacement is fully specified in 11a-3 L58–112: ε_ν=ε₀ϖ^ν, not a claimed quadratic recursion; L304–306 checks the linear cutoff and quadratic terms against that sequence. |
| P11A1-P05 | FIXED | PLAN L29/L104 and 11a-4 L215–231 use inverse Lipschitz constant (1−λ)⁻¹, hence lower volume factor (1−λ)^(2N), with the weaker 2^(−2N) bound. The actual measure is taken on the Borel half-open lifted cell. The remaining compactness wording is isolated in P01; it does not affect this corrected factor or the written measure proof. |

### Exact remaining fix: P11A1-P01

Severity now **minor, plan-only**. Replace PLAN's entire target item (iv), starting at L27 and ending immediately before `(v)` on L29, by:

```text
(iv) the lifted evaluation map 𝒦:H×ℝ^N→ℝ^N×ℝ^N,
𝒦(b,θ)=𝒦_b(θ), is injective and satisfies
(1−λ) max{|b−b'|∞,|θ−θ'|∞}
 ≤ |𝒦(b,θ)−𝒦(b',θ')|∞
 ≤ (1+λ) max{|b−b'|∞,|θ−θ'|∞}, with λ≤1/4.
The image 𝒦(H×[0,1)^N) is Borel and has measure at least
(1−λ)^(2N) meas H ≥ 2^(−2N) meas H.
The closed-cell image 𝒦(H×[0,1]^N) is compact.
Writing q:ℝ^N×ℝ^N→(ℝ^N/ℤ^N)×ℝ^N for the target quotient,
q∘𝒦 descends to an injective map H×(ℝ^N/ℤ^N) into that
quotient target, and its image is compact;
```

This is precisely the distinction already proved in 11a-4, not a new theorem or a strengthening. For the injective quotient assertion, equality after applying q gives a lattice translate of one lifted image; equivariance followed by lifted injectivity yields equal b and equal angles modulo ℤᴺ. No change to either assigned TeX file is needed to fix this residual item.

## Part 11a-2 findings

| Original ID | Status | Current evidence and countercheck |
|---|---|---|
| P11A2-01 | FIXED | `divisor-wide` proof L154 explicitly calls `finite-divisor` on K_{ν+1}; T1/T5, L319/L323, identify that finite-stage obligation. I3 is corrected in 11a-1 L216–218 and PLAN L94. 11a-3 L116–129 proves S_m≤γT_m^(−τ−1) for all m≥0, and L240–251 proves the old-to-current bound by a finite sum on K_{ν+1}. The actual invocation at L300 uses E=K_{ν+1}, t=t_{ν+1}, B=B_{ν+1}; no limit frequency is used to run the finite step. |
| P11A2-02 | FIXED | L28 and D-12 L307 now explain the row/column conversion of Rus01's J and state the same scalar Hamiltonian field/bracket. The positive equation at L174 and cancellation at L183/L197 are preserved. Rus01's row multiplication gives (S_y,−S_x), so the corrected source attribution agrees with the mathematics. |
| P11A2-03 | FIXED | `affine-flow` L204 permits A₁≥0 and explicitly treats A₁=0. Canonical-step data L248 likewise handle ε=0, giving R_*=φ=0 and Φ=id; its proof never divides by ε or A₁. No positive-perturbation premise was added. |
| P11A2-04 | FIXED | `affine-flow` L211/L224 gives the diagonal and lower-left blocks separately. T3 L321 exports the fixed norm bound 2κ_ν+κ_νs_ν/σ_ν and explicitly requires its sum. 11a-3 O3 L288–289 and L312 reproduce it; `exported-sums` E2 L344/L353 proves its sum ≤2⁻¹². 11a-4 composes using this unscaled budget, not merely Σκ_ν in varying norms. |

## Recomputed hand-offs and regression checks

**Mode selection and finite stages.** 11a-3 L96 defines T_{−1}=0, so the first shell includes every nonzero mode up to T₀. For m=ν(k)≤ν and b∈K_{ν+1}, all increments Δω_j(b), m≤j<ν, are defined and bounded by ℓ_j on their original collars. Nesting preserves the stage-m test. Thus

```text
|ω_ν(b)−ω_m(b)|∞ ≤ Σ_{m≤j<ν}ℓ_j ≤ S_m
                  ≤ γT_m^(−τ−1) ≤ γ|k|₁^(−τ−1),
|k·ω_ν(b)| ≥ 2γ|k|₁^(−τ) − |k|₁ |ω_ν(b)−ω_m(b)|∞
             ≥ γ|k|₁^(−τ) ≥ γT_ν^(−τ).
```

The last inequality needs τ≥0, which 11a-3 L34 supplies. This is stronger than the measure theorem's potentially negative admissible τ in small dimensions; no stronger hypothesis is silently imposed on that measure theorem. The case m=ν uses an empty sum, and m=0 is explicitly covered. The upper-shell endpoint has the correct direction.

**The tail budget is proved.** ℓ_j=2λ₀ϱ^j with ϱ≤1/2 and ϱ≤2^(−τ−1); 4λ₀≤γT₀^(−τ−1). Therefore S_m≤4λ₀ϱ^m≤γT_m^(−τ−1), including m=0. This does not spend two bounds to an unknown limit. Once the construction exists, the uniform convergent sum separately gives |ω_*−ω_m|∞≤S_m and the `limit-bridge` applies (11a-3 L330–334).

**Complex divisors.** The actual canonical-step application restricts to B_{ν+1}=K_{ν+1}+t_{ν+1}. It uses L=2C₁ and S5, t_{ν+1}T_ν2C₁≤D_ν/2, before dividing by 2πi k·ω_ν. Thus every denominator has modulus at least πD_ν>0 throughout the complex collar. T1/T5 retain the generic notation t_ν for a step collar; the explicit substitution at 11a-3 L300 resolves the indexing. Even the stronger bound t_νT_ν2C₁≤D_ν/2 follows from S1, so this notation creates no unpaid estimate.

**Whole-collar increments and measure.** The averages defining Δh_ν and Δω_ν require no divisor. 11a-3 L308 therefore forms them on the *old* collar B_ν, although the flow runs only on B_{ν+1}. This supplies exactly the increments needed by `finite-extension`; support stays strictly inside B_j and V (L167–173). Its Euclidean target cost √N and t_j^(−μ) derivative cost are explicit. S3 and A5 pay uniform C^μ closeness in the original K_ϑ. At each finite stage an all-mode family is completed by freezing the last available extension (L269); no future extension or infinite iteration is assumed to prove nonemptiness. Inclusion H^(ν)⊂K_{ν+1} is then an induction (L271). Only after that does continuity from above give H_∞ of the required measure. All applications use **2γ**, with 2γ≤γ_*(ε*), so the measure cost is C_Dio(2γ)^(ρ/μ), not C_Dioγ^(ρ/μ).

**Cutoff and strip width.** Substitution of A=πTd_T gives e^(−A)=α(πT)^(−N)/(2c_N); A>1 and d_T≤1 imply c_N(1+d_T^(−N))e^(−A)≤α. The geometric sum of d_ν is paid by T₀ in `strip-budget`; the remaining δ_ν+2σ_ν sum is s/4, leaving r_ν≥s/2. The actual schedule uses constant α and a geometric remainder envelope, both covered by 11a-2. In the remainder recursion the three relative contributions are at most ϖ/8, ϖ/4 and ϖ/2, totaling 7ϖ/8. There is no reliance on describing geometric decay as superlinear.

**Fixed norm and zero case.** With W=diag(σ⁻¹I,2s⁻¹I), the lower-left block bound from the weighted derivative is κs/σ. The triangular matrix therefore has unweighted row norm at most 2κ+κs/σ. 11a-3 E2 sums precisely this expression; its proof uses s_ν/σ_ν≤t₀/varsigma₀ and the extra Ξ smallness factor. The real angle estimate alone is not used for the full map. Allowing zero in the local flow preserves the identity case without any division by the perturbation size. The later quantitative theorem also has an explicit integrable branch in 11a-5 `zero-case`, L61–68.

**Source corrections.** Read the pinned Rus01 printed p.180 (PDF p.62) directly: its extension is present and the estimate is then imported from Bakhtin. Read its printed pp.143 and 149–150 for the J convention and homological equation, and CP09 PDF p.18, equation (36), for the threshold proportional to (ε*)^(μ/2). These support the corrected provenance and reciprocal exponents. No new pinned-source erratum is established. The mathematical deviations—elementary cutoff, independently computed constants, mode-wise selection and mollified extension—remain explicit.

The later 11a-3 review 3 and 11a-4/5 acceptances are consistent with these checks. Their separate minor findings do not waive P11A1-P01's remaining plan wording. This closure report does not certify the final planetary theorem, the preparation/physical transport packages, or Lean proof closure.

## Validation and edit boundary

- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit 0, initially up to date. A subsequent `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` forced a fresh compilation: exit 0, 223 pages. Final log: zero `!` error lines, zero undefined-reference warnings, zero multiply-defined-label warnings. Layout warnings remain (26 overfull and 177 underfull boxes).
- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (327 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- Mechanical reference check against all current P part labels: 11a-1 has 40 distinct P references and 11a-2 has 25; **no unresolved P reference in either file**. The crucial forward references `finite-divisor`, `i3-corrected` and `exported-sums` resolve to the checked statements.
- The report's whitespace check passes. Repository-wide `git diff --check` also reports new blank lines at EOF in concurrently modified `docs/graph/P/packets/P-p13.coverage.md:549` and `P-p13.nodes.md:1057`; these are outside this review and were left untouched.
- Final verification: all six tabled source/plan hashes remained unchanged; all fourteen finding IDs occur once in the tables. Concurrent work advanced HEAD to `9cdffab5cb4e502284198f43df045f202bfd1a31` during this read-only audit; the hashes above identify the reviewed inputs independently of that movement.
- Only this report is authored. The unrelated pre-existing untracked `docs/tracks/N/audits/N3-9b-audit-1.md` and concurrent P-p13 packet edits are outside scope. No TeX, plan, frozen declaration, manifest, errata ledger or git history is changed by this review. No Lean invocation or axiom-printing run is claimed.

Closeout requirement: apply the single PLAN replacement above, then recheck that paragraph. No further mathematical repair is required by the fourteen original tabled findings. Until that edit lands, retain **11a-1 OPEN (plan only); 11a-2 CLOSED**.
