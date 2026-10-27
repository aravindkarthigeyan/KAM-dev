# Independent review 1: isoenergetic step, iteration and I-G1

## Verdict: REVISE

I recomputed every constant in the register and every absorption exponent. **No error was found in the numerical constants, the new-frequency Newton error, the uniform choice of C₁,C₂,C₃, or the ν to ν/2 endpoint budget.** The proof supplies the intended frozen conclusion once the auxiliary-contract issues below and the applicable Part-1 fixes are made. In particular the new error calculation correctly proves frame invertibility before using Q⁻¹, and the restated geometry does not assume invertibility of the unbordered torsion.

The substantive finding is an overstatement in `torsion`: an arbitrary admissible input has no unused σ_K or σ_B margin, so its perturbation cannot be asserted to satisfy the original B3–B4 bounds. The later induction correctly uses the separate increments and the original μ margin. A convergence sentence also omits n/δ₀ in the bound for the summed derivative changes. These are blueprint defects, not refutations of frozen I-G1. No frozen edit is proposed.

## Reviewed materials and checks

- `blueprint-I/parts/p2-iso-iteration.tex`: **405 lines, 46,552 bytes**, SHA-256 `589917ba23ff70a67c78445a70a493bdce2b1f3dd5bcc1acfe483db215b702a2`; initially 1 standing assumption, 3 definitions, 8 lemmas, 3 propositions, 1 theorem, 4 remarks, 45 proof steps. During the review, commit `2d5caa9` moved the two geometry/perturbation lemmas to Part 1 and updated their references. I checked the moved statements/proofs and verified mechanically that the entire correction-through-theorem text is unchanged except for those references. Current Part 2: **369 lines, 41,517 bytes**, SHA-256 `1451880314c2b18240f642c4b3ab8a8b80307944949f345640b6f8bae9d35eeb`; 38 proof steps. The moved helper text was inspected in Part 1, SHA-256 `879e8548e7a1c1619fc382c650ecaed73bc1165d3721a58c6c98738c2ec063b1`.
- Read the current `.drafts/briefs/bp-review.md`, project rules, governing PLAN/decisions, conventions ruling, track-I PLAN, Parts 0–1 and the previous Part-1 findings. Compared the frozen `IsoenergeticKam.lean` type and all definitions entering its invariance error, frame, extended average and energy. Read the actual K constants, admissibility conditions, frame/geometry/perturbation proofs, absorption pattern, recurrence and limit interfaces.
- Independently read pinned HL19 pp.48–53, 55 and 59 for the moving frequency, error terms, extended-torsion perturbation, iteration, Neumann lemma and source constants. Earlier source audits were used as navigation, not as a replacement for these pages. The constants here are newly derived conservative constants, not literal copies of the printed tables.
- `cd blueprint-I && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, initially 23 pages. The final rebuild after the relocation and concurrent additions also passed: **32 pages**, no undefined references. Two overfull boxes in this part: 5.13164 pt at lines 68–70 and 32.39536 pt at current line 136 (initial line 172). Every concrete local and K label resolves.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (94 frozen declarations)`. No Lean build or scratch elaboration was needed or run. No new theorem, provider sealing or fresh `#print axioms` receipt is claimed.

## Findings

| ID | Location / label | Severity | Finding | Evidence | Exact proposed fix |
|---|---|---|---|---|---|
| I2-01 | `bpI:p2:torsion`, current lines 205–207 (initial 241–243) | major | “bar K satisfies B1–B4” asserts the old absolute σ_K and σ_B bounds without an input margin. The given perturbation hypothesis proves only increment bounds and crude frame bounds. | An admissible K can saturate |DK|=σ_K or |B|=σ_B. Bounds |Dbar K−DK|≤nd/δ and |bar B−B|≤C_Bd/δ do not keep those same absolute bounds. For a flat K, take σ_K=1 and a nonconstant periodic tangential correction: its derivative cannot everywhere remain bounded by 1 while retaining the identity average. The actual induction supplies μ slack and correctly handles this. | Replace the B1–B4 assertion by holomorphy/primaryness/realness, the displayed domain and increment bounds, and nonzero bar Gram determinant, with the crude bounds from `perturbation` if desired. Conclude the original B3–B4 bounds only under explicit margin inequalities, or leave them to `iteration` as the proof already does. |
| I2-02 | `stepI:p2:lim-conv`, current line 306 (initial 342) | minor, exponent/factor | The parenthetical gives the same upper bound 2 CΔ e/(γ²δ₀^a) for both Σd_j and Σn d_j/δ_j. The second needs n/δ₀. | Direct substitution and the decay lemma give Σn d_j/δ_j ≤ **2n CΔ e/(γ²δ₀^(a+1))**. Finiteness and the independently proved μ/4 bound are sufficient for the limit proof; no conclusion constant must change. | Give the two sums their distinct bounds, or cite only their finiteness and the separate `it-sums` derivative budget. |
| I2-03 | moved `stepI:p1:pt-torsion`, Part 1 line 562 (initial Part 2 line 162) | minor, dependency | The stated general perturbation lemma does not assume primaryness, realness or an error bound, but its X_N estimate is cited from the more restrictive `bpI:p2:geometry`. | `perturbation` assumes only holomorphy, domain balls, DK/Gram bounds and |ω|≤Θ. Its needed |X_N|≤C_X/δ is already `bp:p2:frame-basic` (d), whose proof needs precisely those data and no A5. | Cite K's `frame-basic` (d) directly (or state that elementary estimate under these hypotheses). Do not add unnecessary admissibility/error/torsion assumptions to this perturbation helper. |
| I2-04 | Intro, lines 8–9 | minor | The border solve is described as imposing the full linearized energy equation exactly. It actually imposes its normal part; the remaining tangential average is a quadratic defect. | The construction uses ⟨Yξ^N⟩=−E^ω. The proof at line 227 correctly derives ⟨DH(K)ΔK⟩=−E^ω+E_lin^ω. | Say “the normal energy equation ⟨Yξ^N⟩=−E^ω”, followed by the separately estimated tangential defect. Preserve the correct later calculation. |
| I2-05 | Source description at current line 281 (initial 317); `bpI:p2:errata` | minor, source record | The “eighth term of (6.15)” locator repeats a source typo, and the source-error inventory omits the wrong error quantities in (6.33), (6.36), (6.44). | The eight-term maximum is (6.16), whereas (6.15) has two inequalities. Pp.49–51 print ‖E‖ on the right of those three correction estimates, even though a pure prescribed-energy discrepancy with E=0 can require nonzero corrections. This part correctly uses the combined error ε throughout. | Point to the eighth term of (6.16); report the three total-error replacements to the orchestrator along with E4. Keep the current combined-error proof; do not silently cite the smaller printed RHS. |
| I2-06 | Build | minor, cosmetic | Two overfull boxes, including a 32.39536 pt display. | Final review build log, lines identified above. | Break the constants list and the border-solve data display. |

## Full constant audit

In this section m denotes the blueprint's fraktur m, not a convexity parameter. All comparisons use n≥2, m≥1, c_R≥1, γ≤Θ and 0<δ≤1. Constants without hats are exactly the imported K constants. Every bound below was recomputed from the displayed definitions.

### Inherited constants

| Constant | Recomputed bound / purpose |
|---|---|
| κ=τ+n, a=2κ+2 | τ≥n−1 gives κ≥2n−1≥3 and **a≥8**. The estimates only need the weaker inequalities listed in the exponent table below. |
| c_R=max(1,c(n,τ)), m=max(1,M,σ_K,σ_B,σ_T), Θ=4nm³ | The Gram solve ω=B Lᵀ(X_H−E) gives |ω|≤2nσ_Kσ_B(M+ε)≤4nm³ when ε≤1. Diophantinity at a coordinate vector gives γ≤|ω|. No ordinary torsion inverse is used. |
| C_X=5n²m⁵ | |AN|≤m³ and |∂_ωN|≤nΘm²/δ=4n²m⁵/δ; with δ≤1 their sum is ≤C_X/δ. |
| C_T=2nm²C_X | Multiply the preceding bound by |Nᵀ|≤2nm². |
| C_Ω=2n(n+1)c_R m | |∂_ωΩ_K|≤2n(n+1)m ε/δ, zero average, and one cohomological solve give C_Ω ε/(γδ^(κ+1)). |
| C_sym=m²C_Ω | E_sym=diag(Ω_K,BΩ_KB); m≥1 gives the stated bound. |
| C_red=2n(n+1)m² | First block row ≤2n²m²ε/δ; second ≤(2n²m+2nm²)ε/δ≤2n(n+1)m²ε/δ. |
| C_ξ₀=2nm²(mΘ+c_RC_T) | Exactly the first entry in the bordered constant solve after multiplying its forcing bound by σ_T≤m. |
| C_G=6n²m | The Gram difference is bounded by (4n²+2n)m d/δ≤6n²m d/δ. |
| C_B=2m²C_G | Neumann inverse-difference bound. |
| C_ΔN=2nm+mC_B | From (Ltilde−L)Btilde+L(Btilde−B), using |Btilde|≤2m. |
| C_ΔX=2m³+(m+nΘ)C_ΔN | The A difference times Ntilde costs 2m³d; the A times N difference costs mC_ΔN d/δ; its directional derivative costs nΘC_ΔN d/δ². Absorb δ≤1. |
| C_ΔT=4nm²C_ΔX+2nC_ΔN C_X | T difference is NtildeᵀΩ₀ times X difference plus (Ntilde−N)ᵀΩ₀X. These two constants give exactly the displayed expression over δ². It dominates n, C_G and C_ΔN. |

The last three dominance comparisons were additionally checked exactly as polynomial inequalities: after n=2+u, m=1+v, every coefficient of C_ΔT−n, C_ΔT−C_G and C_ΔT−C_ΔN is nonnegative. This supplements the elementary inequalities; it is not an elaborated Lean proof.

### All newly defined constants

Write S=hat C_S, N_c=hat C_ξN, G_c=hat C_g, X_c=hat C_ξ, K_c=hat C_ΔK, D_c=hat C_Δ, P_c=C_P and Dp_c=hat C_∂ in the explanatory column only.

| Defined constant | Recalculation |
|---|---|
| S=max(C_ξ₀,mΘ+2nc_Rm⁵) | The second bordered forcing entry, including |η^ω|≤ε and |Y|≤m³, is ≤(Θ+2nc_Rm⁴)ε/(γδ^κ). Multiplying by m and weakening δ^κ to δ^(κ+1) gives the second term of S. The first entry gives C_ξ₀. |
| N_c=S+2nc_Rm | ξ^N=ξ₀−Rη^N, with |η^N|≤2nmε; weakening the solve's δ^κ denominator by one power gives this sum. |
| G_c=C_TN_c+ΘS+2nm²Θ | Tξ^N contributes C_TN_c/(γδ^(κ+2)); ωξ^ω contributes ΘS with one harmless δ loss; η^L contributes 2nm²Θ by γδ^(κ+2)≤Θ. It also dominates the normal component of ∂_ωξ. |
| X_c=max(c_RG_c,ΘN_c) | The second cohomological solve gives |ξ^L|≤c_RG_c ε/(γ²δ^(2κ+2)); convert the normal bound with γδ^(a−κ−1)≤Θ. The product norm is max, so max is sufficient. |
| K_c=2m²X_c; D_c=max(K_c,Θ²S) | |P|≤2m² gives the displacement. |Δω|≤ΘS ε/(γδ^(κ+1))≤Θ²S ε/(γ²δ^a). D_c controls both changes. |
| P_c=m²+n+m³+C_X | |∂_ωL|≤m²+nε/δ and |∂_ωN|≤m³+C_X/δ; add the two block norms and use ε,δ≤1. |
| Dp_c=P_cX_c+2m²ΘG_c | Differentiate Pξ along the **old** ω: (∂_ωP)ξ+P∂_ωξ. The second term is converted to the denominator γ²δ^(a+1) using γδ^(a−κ−1)≤Θ. No extra strip loss is needed. |
| hat C_lin=C_red X_c+C_sym G_c+ΘC_Ω S | The three reduced defects have denominators respectively γ²δ^(a+1), γ²δ^(2κ+3), γ²δ^(2κ+2). Since 2κ+3=a+1, a common denominator γ²δ^(a+1) gives this constant. |
| hat C_E1=4m²Θ²hat C_lin+mK_c²+ΘS Dp_c | Q⁻¹=PS⁻¹ has norm ≤4m²; convert its reduced error with γ²δ^(a−1)≤Θ². Taylor costs mK_c². The moving-frequency quadratic term costs ΘS Dp_c after γδ^(a−κ−2)≤Θ. |
| hat C_E2=nΘ²(2nm+C_Ω)c_RG_c+mK_c² | |D(H∘K)|≤nΘ(2nm+C_Ω)ε/(γδ^(κ+1)); multiply the tangential solve bound c_RG_c ε/(γ²δ^a), then use γδ^(a−κ−1)≤Θ. The second term is the scalar Taylor remainder (a conservative factor 1 instead of 1/2). |
| hat C_E=max(hat C_E1,hat C_E2) | Correctly controls the maximum of invariance and energy errors. It is not a sum, because ε bounds each component separately. |
| C_Y=nm(2m²+C_ΔN) | Each energy-row entry changes by ≤2m³d+mC_ΔN d/δ. Row summation costs n. This factor is present, unlike the separate Part-1 row typo. |
| C_ΔText=C_ΔT+8n²m⁴+1+C_Y | Same-frequency torsion change C_ΔT d/δ²; frequency change ≤(4nm²)(2nm²)|Δω|/δ; last-column change ≤d; energy-row change ≤C_Yd/δ. Their sum dominates both block rows over δ². |
| hat c_step=2Θ³ max(C_sym,mC_ΔText D_c) | With X=ε/(γ⁴δ^(2a)), it gives the symplectic defect ≤1/2, d≤β/2 and 2mC_ΔText d/δ²≤1. For the second inequality use Θ m C_ΔText≥1; for the third the extra Θ in this definition is conservative. |
| hat c_sum=4Θ²D_c max(n,C_B,m²C_ΔText) | Exactly the common coefficient for the sums of derivative, Gram-inverse and extended-inverse increments. It also controls the displacement sum. |
| hat c_*=max(2^(2a)hat C_E,hat c_step max(1,2/μ),2hat c_sum/μ,4Θ²D_c/ν) | Respectively enforces scalar decay, step applicability with remaining ball margin, all μ budgets, and the ν/2 total frequency budget. |
| δ₀=min(1,(ρ−ρ∞)/8) | Positive and ≤1, with total loss Σ4δ_j=8δ₀≤ρ−ρ∞. It is not claimed to be ≥1. |
| C₁=ρ^(4τ)max(γbar⁴,hat c_*δ₀^(−2a)); C₂=C₃=2D_cρ^(2τ)δ₀^(−a) | Strict smallness implies e<γ⁴/γbar⁴≤1 and hat c_*e/(γ⁴δ₀^(2a))<1. The two final closeness sums have exactly the C₂,C₃ normalization in frozen Lean. |

No constant was skipped: the imported constants used in the register and every new hat constant, row/frequency increment constant, smallness constant and final theorem constant appear in these tables.

## Every exponent absorption

For γδ^j≤Θ, the exponent j must be nonnegative; it is not enough just to cite “absorption”. The actual values are:

| Use | Exponent / identity | Verification |
|---|---|---|
| Normal ξ into γ⁻²δ⁻ᵃ | a−κ−1=κ+1 | ≥4. |
| ∂_ωΔK's second term | a+1−(κ+2)=κ+1 | ≥4; in particular **κ+2≤a+1**. |
| Symplectic defect in step smallness | 2a−(κ+1)=3κ+3 | ≥12, with γ³ absorbed by Θ³. |
| Reduced error into quadratic denominator | 2a−(a+1)=a−1=2κ+1 | ≥7, with γ² absorbed by Θ². |
| Frequency quadratic term | 2a−(κ+a+2)=a−κ−2=κ | ≥3, with γ absorbed by Θ. |
| Linear energy defect | 2a−(κ+1+a)=κ+1 | ≥4, with γ absorbed by Θ. |
| Frame/torsion smallness | a−2=2κ | ≥6. |
| Reduced symplectic term | 2κ+3=a+1 | Exact equality. |
| Summation of second-order increments | a+2≤2a−1 | Difference a−3=2κ−1≥5. |

The constants use real τ and real exponents; only the iteration index is integral. All bases γ,δ,δ₀,ρ are positive, so the real-power rearrangements are legitimate. An independent supplementary scalar sweep checked **2,268 inequalities** at n∈{2,3,5}, m∈{1,2,10}, c_R∈{1,2}, τ∈{n−1,n+1/2}, δ∈{1,1/2,1/10}, γ/Θ∈{1,1/2,1/100}. All passed. Sampling is supplementary; the table above supplies the general exponent argument.

## New-frequency Newton error: recomputation

Let Res=E+AΔK−∂_ωΔK−LΔω. The first two border equations and the exact frame identity give

```text
Q Res = E_red ξ + Ω₀E_sym ∂_ωξ − (0,Ω_Kω)ξ^ω = E_lin.
```

Here |E_sym|≤1/2 is an explicit hypothesis, so S=Id−Ω₀E_sym is invertible. Since QP=S for square finite matrices, Q is invertible and Q⁻¹=PS⁻¹. This correctly repairs the inverse guard missing in Part 1's unconditional consequence (I1-02).

Expanding at bar ω=ω+Δω gives

```text
E_bar = Res + Δ²X − DΔK Δω
      = PS⁻¹E_lin + Δ²X + ξ^ω ∂_ωΔK,
```

because Δω=−ωξ^ω. All three signs in this formula and in E_lin agree with the frozen error X_H(K)−DKω. At the **old** frequency there would be an uncancelled first-order term LΔω, so K's fixed-frequency Newton-error lemma cannot be applied unchanged. The new-frequency restatement is necessary and correct.

For the energy component, the normal border equation is ⟨Yξ^N⟩=−E^ω. Therefore

```text
E_bar^ω = ⟨D(H∘K)ξ^L⟩ + ⟨Δ²H⟩.
```

The positive strip r−2δ and periodic correction ensure compact-cube integrability, meeting the actual application guards discussed in I1-03. Taylor segments stay inside B_β(K(θ))⊂D, so both remainders have genuine derivatives and their M bounds are available. The quadratic estimates are exactly hat C_E1 and hat C_E2 above.

## Step, induction, endpoint margin and limit

Put X=e/(γ⁴δ₀^(2a)). The recurrence with q=2^(2a)hat C_E X≤1 has

```text
ε_j = q^(2^j−1) 2^(−2aj)e,
ε_j/δ_j^k ≤ e/δ₀^k                         (0≤k≤2a),
Σ ε_j/δ_j^k ≤ 2e/δ₀^k                     (0≤k≤2a−1).
```

The equality formula includes q=0 by the usual zero-error base case; no division by e is needed. Substituting d_j=D_cε_j/(γ²δ_j^a) gives, for k=0,1,2,

```text
Σ d_j/δ_j^k ≤ 2D_c e/(γ²δ₀^(a+k)) ≤ 2Θ²D_c X.
```

Consequently Σd_j≤min(μ/4,ν/2), Σnd_j/δ_j≤μ/4, ΣC_Bd_j/δ_j≤μ/4 and Σ2m²C_ΔText d_j/δ_j²≤μ/2. The factor 2 in 2hat c_sum/μ is sufficient for every one of these, including the inverse sum's own factor 2.

At step j, β_j=μ−D_j≥3μ/4. The smallness constant gives hat c_step ε_j/(γ⁴δ_j^(2a))≤min(1,μ/2)≤min(1,β_j). The new Gram bounds are first obtained on r_j−3δ_j and the extended-average increment on r_j−4δ_j; the next strip is exactly r_(j+1)=r_j−4δ_j>ρ∞. All restrictions are valid, and no closed-strip regularity is assumed.

The frequency increment obeys |s_(j+1)−s_j||ω*|≤d_j. The endpoint function is |ω*| times the minimum of two affine functions and is 1-Lipschitz in physical frequency along the line. Since d_j≤ν/2−D_j<ν−D_j≤ν(s_j), each next s_j remains strictly in (1,σ_ω). Passing to the limit gives **ν(s∞)≥ν/2>0**; an open interval alone would not have sufficed, but the retained quantitative margin does.

The sums of displacements and derivative increments are finite (with the corrected derivative estimate in I2-02). Thus K_j and DK_j converge uniformly on T_ρ∞ and the open-set derivative-limit theorem gives holomorphic K∞ with DK∞ the derivative limit. Primaryness and realness pass to the limit. Its μ/4 distance from the initial K puts its μ/2 balls in the original μ balls, and the derivative bound is ≤σ_K−μ/2. Continuity of X_H on D then gives E∞=0. Uniform Lipschitz control of H along segments in the original balls lets the energy averages pass to the limit. Part 1's frame-free energy conservation gives pointwise H(K∞)=E₀ on the whole complex strip. No final Gram inverse is needed for either conclusion.

## Frozen constant order and the stronger uniformity claim

The frozen order is preserved: n,τ,ρ,ρ∞,M,σ_K,σ_B,σ_T,μ,γbar,σ_ω,ν,ω* are fixed before C₁,C₂,C₃; D,H,K,s,γ,e,E₀ follow. The chosen expressions actually omit ω* and σ_ω. I specifically tried to refute this stronger uniformity and found no gap: at every admissible iterate the **actual** frequency is bounded by Θ using DK, Gram and the error, independently of the ray parameters. Endpoint motion is controlled in physical frequency units by ν. The scalar s_j convergence uses the fixed nonzero |ω*| but the required final bound is on s_jω*, not s_j alone. This is sufficient even if |ω*| is small. The stronger uniformity is therefore supported by the present argument, rather than inferred from HL19's ray-dependent constants.

## K's A5 and the earlier Part-1 finding I1-04

`bpI:p1:geometry-noA5` (formerly `bpI:p2:geometry`) restates exactly the quantitative geometry used by the iteration under B1–B4 and B6; its proof uses frame identities, exactness and Cauchy/cohomological bounds. It does **not** use B5 or K's A5. `bpI:p1:perturbation-noA5` (formerly `bpI:p2:perturbation`) likewise removes the ordinary torsion-average inverse and proves its own needed pieces. This is the correct resolution for the actual iteration applications; cite these I interfaces instead of K's admissible-geometry package.

There is an important scope distinction for Part 1. Its weak standing setting provides only open image inclusion and Gram invertibility, not the uniform ball, derivative, inverse or error bounds in the new quantitative I interface. A blanket replacement of every weak-setting Part-1 K citation by the quantitative geometry lemma would therefore still have unmet premises. The concurrent `2d5caa9` revision correctly separates the weak regularity derivation and places the no-A5 quantitative helpers in Part 1, avoiding backward dependency edges; I checked that scope distinction in the updated text. For pure Part-1 holomorphy, derive N and T regularity directly from open-set holomorphy and the holomorphic Gram inverse. For its explicit row estimates use the stated DK/B/error bounds directly. For the iteration's quantitative “quadratic” claims, use the new I geometry under the actual B-data. Keep the unconditional projected identity in Part 1; invoke its inverse consequence only after the smallness proof in this part. No ordinary twist premise may be introduced to resolve a citation.

## Source errata and deviations

E4 is confirmed: HL19 p.53 (6.51) prints denominator γρ^τ, while p.19 (3.16) prints γ²ρ^(2τ) and the text says the former obtains the latter. A changed/rescaled constant is needed for a literal implication in general. This blueprint derives the frozen normalization directly and avoids the mismatch.

Also report, without editing the ledger: pp.49–51 (6.33), (6.36), (6.44) use the invariance error E where the combined error E_c is required. For an exact invariant torus with a nonzero target-energy discrepancy, the bordered solve can change both K and frequency, so E=0 does not make those corrections vanish. The blueprint uses ε bounding both components and avoids that source issue. P.52 has the iteration-limit typo “s→0” and the eight-term reference should be (6.16). These are source reports; no source or frozen statement was silently repaired by the reviewer.

The open-strip schedule, exponent κ=τ+n, conservative constants, current-frequency bound, explicit moving-frequency remainder, total-error normalization and pointwise energy are disclosed adaptations. This review introduces no mathematical deviation. The calculation verifies the proposed proof mechanism, not an elaborated Lean provider.

Only this review and the requested N Parts-1–2 review were written. Input hashes, report whitespace/conflicts and `git diff --check` passed at closeout, with the concurrent relocation explicitly recorded above. No state-changing git command was run. For downstream Lean briefs: **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.
