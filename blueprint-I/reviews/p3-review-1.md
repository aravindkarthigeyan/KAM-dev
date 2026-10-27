# Review 1: local isoenergetic charts and uniform I-G1 application

## Verdict: REVISE

The determinant identity, local chart, Diophantine-ray construction at τ=2, finite cover, constants and verification of the frozen I-G1 premises check out. The resulting tori have the stated energy and quantitative closeness. The confinement interface overstates what has been proved: ordering the unperturbed base points does not yet order the deformed invariant tori, and the distance bound for points on those tori is not a distance bound for every point between them. There is also a false assertion that I₀ lies on the unperturbed energy curve when the chosen energy is only close to h(I₀).

These are repairable interface defects, not a refutation of I-G1 or I-HEAD. Part 5 can supply the missing uniform perturbation/energy-cylinder argument after further shrinking its final ε₀. It cannot cite the present consumption remark as that argument.

## Snapshot, materials and validation

- Reviewed `blueprint-I/parts/p3-iso-local-charts.tex`: 418 lines, 39,312 bytes; SHA-256 `7cdfc8e88b9b1174e13b9555dea19276feaf57a0b0cdc6736983ac390042ba0c`.
- Read the full review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the writer's conventions, I's PLAN/preamble and Parts 0–3. Checked the relevant K analysis and measure-part proofs, and N's shared ODE continuation interfaces. Read the prior I Part-1 review where its energy-row source discrepancy is recorded.
- Compared against `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, `AllTimeConfinement.lean`, the frozen `borderedHessian`, `extendedTorsionAverage`/extended torsion, energy average, frequency-map, complex Hamiltonian-field and strip/primary conventions. The full I-G1 constant order and conclusion, including its pointwise energy clause, were used rather than an informal isoenergetic theorem.
- Independently inspected pinned HL19 printed p.19, (3.13)–(3.17) and Remark 3.7, and Chi05 printed p.17, using the repository's page images. Those pages supply the isoenergetic input and the Kepler example; they do not supply the new finite-chart confinement bridge.
- Checked Mathlib's inverse-function-theorem files: `HasStrictFDerivAt.toOpenPartialHomeomorph` exists in `Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean`; the C¹ hypothesis supplies strict differentiability locally. The differentiability/continuity and invertibility guards here suffice for this use.
- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in blueprint-I: exit 0, targets up to date; successful log gives 32 pages, zero lines beginning `!`, zero undefined-reference warnings. Part 5 is not written/included in this snapshot; its proposed mathematical obligations were checked against PLAN rather than an existing proof.
- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (94 frozen declarations)`.
- Sympy expansion returned exactly zero for both `det(border)+g_perpᵀ Hess(h) g_perp` and `det(DΦ)+det(border)/(g·g)`. No Lean implementation, build or new axiom audit is claimed. Only the two requested review files were edited; frozen statements and source/ledger files were not edited.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| I3-01 | `bpI:p3:points`, final parenthesis (about line 257); `bpI:p3:T7` (about line 377) | major | The phrase “I₋, I₀, I₊ in this order along the curve” is false for the quantified E. There is no hypothesis h(I₀)=E. The output allows `∣E−h(I₀)∣≤ε`; the actual initial energy includes f. T7's coordinate inequalities are valid, but its energy-arc interpretation must not place I₀ on that arc. | Say that the **slope coordinate** of I₀ is between those of I₋ and I₊. If a point on `{h=E}` is wanted, define `Ĩ₀=Φ⁻¹(E,m_c(I₀))`; this point exists by Q⊂V and is the middle point on the displayed arc. Explicitly distinguish it from I₀. |
| I3-02 | `bpI:p3:uniform`, `bpI:p3:tori`, especially `bpI:p3:consumption` (lines 407–411) | major | T7 orders base points I±. T4 only bounds the actual actions by CKε, and ε₁ currently has no chart-localization or slope-error condition. It follows neither that those actions lie in W, where Φ is defined, nor that they satisfy the claimed inequalities `m_c≤−δ_m/2`, `m_c≥δ_m/2`. T6 bounds the boundary tori, not the whole enclosed region. Thus “the confinement … is T6” does not establish I-HEAD's trajectory bound. PLAN correctly allocates perturbed-energy charts and separation to Part 5, but the consumption remark treats their missing quantitative content as already available. | Either strengthen the output with the uniform perturbation lemma described below and include its positive margins in ε₁, or explicitly reserve it for Part 5, shrink ε₀ there using those margins, and remove the current claims that T7 already orders the deformed tori and that confinement is T6. Prove the whole bounded energy cylinder lies in W and within η of I₀ before applying separation and periodic compact-action continuation. Keep ε₀ chosen before f, ε, z₀ as frozen I-HEAD requires. |

## Concrete refutation of the energy-curve wording

Take `h(I₁,I₂)=I₁+I₂²/2`, I₀=c=(0,0), on a bounded open ball B and a relatively compact nonempty B′ containing 0. This h is entire and real on reals. Its gradient is `(1,I₂)` and its bordered determinant is −1 everywhere, so it meets the nondegeneracy hypothesis on every real point of the complex tube. At c, `m_c(I)=I₂` and `Φ_c(I)=(I₁+I₂²/2,I₂)`.

Choose a positive ε smaller than all the available thresholds and the energy window, set f≡ε, and choose E=ε. This is exactly the perturbed energy through I₀ and satisfies `|E−h(I₀)|=ε`. But h(I₀)=0≠E, so I₀ is not on `{h=E}`. The base points I± have h=E, while the actual invariant tori of H=h+ε at energy E have h=0. This elementary fixture exposes the distinction that the final barrier argument must retain.

## What I recomputed: refutations that failed

### Determinant, slope and charts

For `A=[[a,b],[b,d]]`, `g=(x,y)` and `p=(-y,x)`, direct expansion gives

`det [[a,b,x],[b,d,y],[x,y,0]] = −(a y²−2bxy+d x²) = −pᵀAp`.

Thus a nonzero bordered determinant forces g≠0 without requiring invertibility of A. At c, the numerator of `σ_c(w)=det(g_c,w)/(g_c·w)` vanishes at w=g_c, so `Dσ_c(g_c)δw=det(g_c,δw)/q_c`. The chart derivative has rows `g_cᵀ` and `(A g_c_perp)ᵀ/q_c`, hence `det DΦ_c(c)=−det B_h(c)/q_c`. Both minus signs and the factor q_c are correct. The Hessian's symmetry is used in the right place. The dot product is an algebraic bilinear pairing on `Fin 2 → R`; this does not change the ambient max norm into EuclideanSpace. The only Euclidean-length calculation is used to show a vector is nonzero, with no quantitative norm comparison smuggled into a bound.

The quotient denominator stays nonzero on the declared open set `a_c(∇h)>0`. Equal slopes there give **positive** parallelism, not merely collinearity. The inverse function theorem therefore applies with all its domain/invertibility guards. Restricting W to the prescribed neighborhood preserves its open image and C¹ inverse. Taking a closed rectangle Q inside that open image is legitimate, as is the smaller initial-point ball obtained by continuity. The finite cover uses compactness of closure B′; it does not need a Lebesgue number or a global frequency diffeomorphism.

### Compact sets, positivity and constants

The complement of bounded B is nonempty; closure B′ is compact and nonempty in this part. Hence the set distance dB is finite and positive. Its closed dB/2-neighborhood S is compact and contained in B. The gradient is nonzero there by the determinant calculation, so `0<m_h≤M_g<∞`. The bordered inverse is continuous by the determinant guard and Cramer's formula. It is a nonzero inverse matrix, so its maximum row norm Sh is positive and finite. No singular-inverse totality convention is being used to obtain an inverse estimate.

The shrunken constants satisfy `δ*≤1/4`, `μ=δ*/2≤min(s,r0)/8`, `ρ=s/4`, `ρ∞=s/8`. The larger action tube has compact closure strictly inside the original tube because B is bounded and `3r0/4<r0`; holomorphy therefore bounds h there even when B is disconnected. The Cauchy estimates quoted from K use only this boundedness, the open holomorphy domains and the perturbation bound. Their derivative proofs do not use Kolmogorov invertibility or a boundary-layer condition; this is explicitly explained in the part. In particular, this reuse does not import an unbordered twist premise into the isoenergetic application.

For j≤3, `|D^jH|≤bar_c(Mh+ε)δ*^(−j)≤M` when ε≤1. The field-extraction linear map has norm ≤1 from the derivative operator norm to the phase max norm. It also bounds the first two derivatives of X_H by the second and third derivatives of H. The additional frozen I-G1 bound on `iteratedFDeriv 2 H` is supplied explicitly; it is not omitted just because the source lists field bounds. Fj and M dominate all the required quantities, and F₁≥1, F₂≥F₁.

### Diophantine rays and endpoint margins

At n=2 the selected τ=2 satisfies the **strict** G3 condition τ>n−1. For bounded nonempty open O, its positive finite measure and G3 give a vector in `O∩Dio_(γ,2)` by choosing `γ=meas(O)/(2(C+1))`. A possibly signed G3 constant may first be replaced by max(C,0), so the stated C≥0 is harmless. No claim at τ=1 is needed.

For any finite slope ς, `g_c+ςg_c_perp≠0`, and multiplying it by `3m_h/(8|g_c+ςg_c_perp|∞)` puts it strictly in the specified annular sector. The sector is open and bounded, so the measure lemma applies to each sign. This gives finitely many rays and γ's before the perturbation or energy is chosen.

For the base points in Q, `m_h≤|∇h(I±)|≤M_g` and `m_h/4<|ω*|<m_h/2`. Thus `2<s°<4M_g/m_h`. With `σω=4M_g/m_h+2` and `ν=m_h/4`,

`(s°−1)|ω*|>|ω*|>ν`, and `(σω−s°)|ω*|>2|ω*|>ν`.

This is the frozen physical-frequency endpoint margin, with the correct factor |ω*|. The smaller output margin is furnished by the already stated I-G1 theorem; it need not be re-assumed in this application.

### Flat torus, torsion and (I1)–(I13)

The frame is `DK=(Id,0)`, Gram=Id, N_j=(0,e_j); all relevant inverses are genuinely invertible. The flat torus is defined on all complex angles, so its frozen global real-on-reals predicate is satisfied. For θ in Tρ, the μ-ball about `(θ,I)` fits in `T_(s/2)×B_(r0/2)`, using μ≤s/8 and μ≤r0/8. The derivative and Gram bounds are exactly `1=σK−μ=σB−μ`.

The field error is X_f. The frozen extended torsion is

`T_H = B_h(I) + [[f_II,0],[f_Iᵀ,0]]`.

In particular, the last row is the derivative of the **perturbed** Hamiltonian. It must not be replaced by ωᵀ on an approximate torus. The frozen last-column frequency remains ω, so that error column really is zero. Each upper row has at most `2F₂ε` absolute sum, and the lower row at most `2F₁ε≤2F₂ε`. The period-one cube has volume one, continuous entries are Bochner integrable, and averaging does not enlarge the row norm. For `ε≤1/(4ShF₂)`, the Neumann perturbation norm is ≤1/2 and gives inverse norm ≤2Sh=`σT−μ`.

The complex energy average differs from the real number h(I) by at most ε; hence it differs from E₀=E by at most e=F₁ε when h(I)=E. The period, cube normalization and complex norm agree with the frozen definition.

The remaining premises are supplied on their actual open domains: reality and periodicity of H, holomorphy, positive widths/constants, nonzero ray, `0<γ≤barγ=γ`, and `e≥0`. At τ=2 the frozen smallness expression is `C₁F₁ε/(γ⁴ρ⁸)`; the chosen strict ε bound proves it. The two output closeness bounds have denominator `γ²ρ⁴`. No exponent or factor is missing.

### Order of choice and output actually obtained

The ray and barγ are fixed before C₁,C₂,C₃, and those constants are fixed before f, ε, E or I₀. Setting barγ equal to each selected γ is permitted. There are finitely many patches and two rays per patch; since B′ is nonempty, that finite collection is nonempty. Thus CK is positive and finite, and all entries of the minimum defining ε₁ are positive. The strict use `ε<ε₁` supplies strict smallness even where ε₁ is defined using a non-strict minimum. ε=0 is allowed and causes no division by ε.

For a chosen initial point, `|h(I₀)−h(c)|<δE/2` and `ε<δE/2` put E in the closed energy window. I-G1 supplies T1–T3 and T5, including **pointwise** H(K±)=E. T4 follows from O5 and the operator Cauchy estimate on a half-width strip: n=2 gives `4CKε/ρ∞`. Primary periodicity applies to the displacement u,v, not to the entire lifted K itself. T6 follows from the two distance bounds, the compact collar S and O4. These checks prove proximity of the tori and order of their base points; they do not prove the additional assertions isolated in I3-01/02.

## Required bridge to the confinement proof and route sanity check

There is a concrete uniform repair available, so the missing interface need not become a new assumption:

1. For each patch, `A_j=Φ_j⁻¹(Q_j)` is compact and contained in W_j. It therefore has positive distance to the complement of W_j. Choose a compact neighborhood inside W_j on which Dm_j and DΦ_j⁻¹ are bounded. Also record the positive ray margins `m_(j,+)−δ_(m,j)/2` and `−δ_(m,j)/2−m_(j,−)`.
2. Shrink the final ε₀ so CKε is below that localization distance and its induced slope error is less than half those ray margins. Then the actual torus actions stay in W_j and retain the claimed outer slope inequalities. Alternatively retain weaker inequalities with an explicit positive gap from `|m_j(I₀)|<δ_(m,j)/4`. Shrink ε₀ further so `4CKε/ρ∞<1/2`; this supplies a uniform torus graph argument, including the inverse angle map.
3. In the original coordinates `(e,m)=Φ_j(I)`, the perturbed energy equation is `e+f(θ,Φ_j⁻¹(e,m))=E`. On the compact rectangle, uniform smallness in C¹ makes its e derivative close to 1. Leave a fixed energy margin, for example take `ε₀≤δ_(E,j)/4`, so energies through initial points satisfy `|E−h(c_j)|<3δ_(E,j)/4`. Prove a unique energy graph e=e(θ,m) over the required closed slope interval, by a quantitative one-variable inverse/monotonicity argument, with domain and margin independent of f and E. Since it remains inside Q_j, its action values remain in W_j.
4. Put the actual invariant tori into this **perturbed** energy cylinder and prove separation/first exit. Every action in the enclosed cylinder lies in W_j, which by P1 is in the η₁/4-ball about c_j. Since I₀ is also in that ball, its distance from I₀ is <η₁/2≤η/2. This proves a bound for the entire trapped trajectory, unlike T6 alone. The closed enclosed cylinder has compact action projection inside B; apply N's periodic compact-action continuation, which permits unbounded lifted angles, and its uniqueness theorem for arbitrary competitor intervals.

Take the minimum of these finitely many positive, data-only thresholds before f, ε and z₀ are quantified. This preserves frozen I-HEAD's constant order and needs no conclusion-shaped premise. It also handles arbitrary η>0 and arbitrary relatively compact B′ without a global action chart. The route in I's PLAN is therefore plausible and has the right ingredients, but is not already completed by the current T6/T7 or consumption paragraph. Part 5 must prove this bridge (or an equally precise replacement).

## Sources, deviations and limits

The chart/ray/cover argument is correctly disclosed as an original D-I-CONFINEMENT supplement. Neither the Kepler determinant on Chi05 p.17 nor HL19 Remark 3.7 justifies omitting that supplement. No new defect in either source was found here. The HL19 p.19 energy-row sign discrepancy already reported in the Part-1 review remains visible in the pinned page; the present direct calculation uses the correct perturbed row and does not propagate it. Likewise the frozen non-strict output bounds avoid the source's zero-error strict-closeness defect.

No frozen statement was found false or altered. This review does not independently recertify the entire I-G1 iteration, prove Part 5's topology, or certify an implemented provider. The exact unpaid obligations are the uniform localization/slope transfer and the perturbed energy-cylinder enclosure above, not a missing Diophantine measure theorem at τ=2.

Closeout: all three reviewed TeX hashes still match the snapshot above. `git diff --check` passed, and both new reports passed explicit trailing-whitespace/conflict-marker checks. The final working-tree status lists only the two requested review files as untracked review outputs.
