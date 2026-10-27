# Independent review 1: N interfaces, N-QC and N-ZERO

## Verdict: REVISE

The two frozen gate proofs in Part 2 are mathematically correct as stated, including arbitrary dimension, the n=0 case, the full derivative guard and the genuine all-time solution predicate. The principal Part-1 conversions and constants dictionary also work under the headline hypotheses. However, the periodic/holomorphic conclusions of `period-convert` omit the corresponding premises on f after the earlier subsection-wide assumptions have ended. The dictionary has those premises available, so repairing that helper does not strengthen a frozen theorem. The Hessian conversion does inherit reality of h from its own subsection-wide assumptions and is valid in that scope. Smaller normalization, example and API issues are recorded below.

## Scope, materials and checks

- `blueprint-N/parts/p1-interfaces.tex`: **257 lines, 30,482 bytes**, SHA-256 `88d5494e2b624a80808322cb3d7eca6321438a157fd7163b2caec98669f78feb`; 10 lemmas, 1 remark, 37 proof steps.
- `blueprint-N/parts/p2-qc-zero.tex`: **102 lines, 9,178 bytes**, SHA-256 `ca0b1f0ec339cf735a97bd5081c21d526e14774819f4864ea5864ed66146e1b7`; 3 lemmas, 2 theorems, 3 remarks, 20 proof steps.
- Read the current review brief, rules, governing PLAN/decisions, conventions ruling, N PLAN, Part 0, the shared Part-3 interfaces and relevant statement/source/audit context. Compared the frozen N-QC/N-ZERO theorem types, the eleven frozen N definitions and five K definitions used by the conversions. Read the exact K holomorphic restriction, Hamiltonian, Fourier decay/summation and cohomological interfaces that are cited.
- Read BM11 pp.4–5 and 9–10 directly and checked the integrable-model formula. Visually read Pöschel printed pp.189–191 and 204 (scan PDF pages 4–6 and 19): domains, max-norm angle strip, Euclidean action tubes, weighted norm, quantitative QC alternative, threshold, exceptional branch, time prefactor and exponent. No normal-form proof is being accepted merely from this dictionary review.
- `cd blueprint-N && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, initially 24 pages. The final rebuild, after concurrent Part-3 fixes and the addition of Part 4, also passed: **36 pages**, no undefined references or overfull boxes; six hyperref PDF-bookmark warnings in the expanded assembly. Parts 1–2 remained byte-identical, and the newly added Part 4 is outside this review. Every concrete local and K label resolves.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (94 frozen declarations)`. No Lean file was changed or built; no fresh `#print axioms` receipt or axiom-free provider certification is claimed.

## Findings

| ID | Location / label | Severity | Finding | Evidence | Exact proposed fix |
|---|---|---|---|---|---|
| N12-01 | `bpN:p1:period-convert`, lines 177–185 | major | The helper introduces arbitrary complex h,f but asserts periodicity and holomorphy of the transformed f without assuming either for f. The earlier standing convention is explicitly limited to a different subsection. | f(θ,I)=θ₁ is entire but not periodic; then 2πf(φ/(2π),I)=φ₁ is not 2π-periodic. A bounded, nonholomorphic f also refutes (c)'s analyticity conclusion under the value bound alone. Dynamics and the algebraic scaling formulas themselves do not require these premises. | Separate unconditional transport/scaling statements from conditional ones: periodicity assumes f is 1-periodic; (c) assumes f holomorphic on D_s(R) and the stated size bound; Fourier reconstruction assumes the analytic periodic hypotheses. Equivalently state the f-dependent clauses for `IsAnalyticPerturbation R s ε f`. Do not impose those analytic premises on the general Hamiltonian solution-equivalence clause. |
| N12-02 | `period-convert` (d), line 185 | minor, normalization notation | The displayed Fourier expansion uses hat f as if it were unchanged, then the prose says “times 2π”. The old and transformed coefficients should have distinct names. The dictionary correctly includes the 2π in F. | By substitution, the transformed coefficient is **tilde hat f_k=2π hat f_k**, where hat f_k is the displayed integral of the original f. | Write `tilde f=Σ_k tilde hat f_k e^(ik·φ)` and `tilde hat f_k=2π∫_[0,1]^n f(θ,I)e^(−2πik·θ)dθ`. Retain F=2πcoth(πs/4)^n. |
| N12-03 | `qc-convert` warning, line 159 | minor | The example incorrectly says ω=e₁ throughout the domain. | For h(I)=I₁+(I₂²+I₃²)/2, ω(I)=(1,I₂,I₃), equal to e₁ only on I₂=I₃=0. The example still correctly disproves full Hessian positivity because Q[e₁,e₁]=0 everywhere. | Give the correct frequency, or specify the example point I₂=I₃=0. Say QC holds with a constant depending on the bounded set. |
| N12-04 | `norm-compare` (a), line 34; proof line 41 | minor, edge case/notation | The divided inequality uses n in the denominator without separating n=0; the complex proof writes Σx_i² instead of Σ|x_i|². | The norm comparison itself is valid for every n, with all norms zero at n=0. The ordinary mathematical quotient 0/0 is undefined; interpreting Lean division gives a harmless default but is not an unguarded mathematical division. For complex vectors the sum of squares need not be real or positive. | State the divided consequence only for n>0; keep `‖x‖₂²≤n‖x‖∞²` for all n. Use Σ|x_i|² in the complex proof. No dimension restriction should be added to N-ZERO or N-QC. |
| N12-05 | External fact `bpN:p1:ext-linalg`, line 19; `stepN:p2:qk-bij` | minor, exact API | `LinearMap.injective_iff_surjective` is an endomorphism theorem, whereas L here maps ℝⁿ×ℝ to ℝ×ℝⁿ. Equal dimension is sufficient, but the named declaration is not directly its interface. | Installed `LinearAlgebra/FiniteDimensional/Basic.lean:309` has f:V→ₗV. The general theorem is `LinearMap.injective_iff_surjective_of_finrank_eq_finrank` in `FiniteDimensional/Lemmas.lean:204`. | Cite the latter and prove both product finranks equal n+1, or conjugate by the product-swap equivalence and use the endomorphism theorem. No mathematical change to N-QC. |
| N12-06 | `constants` (g), `stepN:p1:co-time`, lines 229,248 | minor, division guard | The reciprocal comparison uses Ω₀ in a denominator but only records its upper bound. Positivity follows from already available data and should be stated before inverting. | The closed radius-R₀ ball contains I₀ and ω_min>0, so Ω₀≥|tilde ω(I₀)|₂≥2πω_min>0. | Insert this lower bound and the finiteness already obtained from B(M), then derive T₀≥2T by taking reciprocals of positive quantities. Also scope (h)'s genuine negative-power/time expression to ε>0, as frozen N-HEAD-C does; N-ZERO handles ε=0. |

## What I recomputed (refutation attempts that failed)

### Domains, holomorphic restriction and derivative bounds

The real tube identity is exact for R,s>0, including n=0. If I lies within s of a real J with |J|<R, the triangle inequality gives |I|<R+s. Conversely choose J=R I/(R+s): |J|<R and |I−J|=s|I|/(R+s)<s. In dimension zero J=0 supplies the same inequalities. Complex action tubes are not identified with complex balls of radius R+s; only their real slice is.

For P={|J|∞≤R/2} and |I−J|₂<r₀≤min(s/2,R/8), the max norm is ≤the Euclidean norm, so J∈B(0,R) witnesses I in the frozen complex action neighbourhood. At real I, |I|∞<5R/8. This verifies the tube inclusion used by all subsequent constant choices, including strictness at the real boundary.

Under the frozen H1/H6 analytic premises, G(θ,I)=h(I)+f(θ,I) is holomorphic on the **open** D_s(R). Restricting scalars to ℝ and composing with the real inclusion gives real smoothness on W_s=ℝⁿ×B(0,R+s). Reality of h,f there identifies Re G with G, and all real-direction derivatives take real values. The canonical field is exactly `(∂_I G,−∂_θ G)` at real points, after casting. Period-one shifts preserve W_s and have identity derivative, so every derivative of H and its field are periodic. The frequency and real Hessian formulas follow with the same guards. I found no angle/action reversal or off-domain derivative use.

The ordered coordinate derivatives in B(M) give |ω_i|≤M and |ω|₂≤sqrt(n)M, plus the Hessian entry bound. C³ on an open real set gives symmetry through order three. Nothing upgrades this to a complex C³ bound; the separate complex Hessian premise remains explicit. Installed scalar-restriction declarations include `DifferentiableAt.restrictScalars` and `ContDiffOn.restrict_scalars`; their names and purposes match the cited facts.

For the nested complex Hessian norm, evaluate on two coordinate vectors to obtain |Q_ij|≤M_C. Then

```text
|x^TQy| ≤ M_C |x|₁ |y|₁ ≤ nM_C |x|₂ |y|₂.
```

Testing with conjugated dual unit vectors gives the complex Euclidean operator bound. The complex symmetric matrix need not be normal or Hermitian; no spectral-radius equality is used. The **bound** is valid without reality; the **real identification** uses `IsAnalyticIntegrable R s h`, explicitly assumed throughout this subsection at lines 68–70. I tested h(z)=i z²/2 as a possible refutation: it satisfies the complex-Hessian bound but has real Hessian zero at real points. It is excluded by that standing reality premise, so it is **not** a finding against the scoped lemma. The later constants dictionary supplies the same premise as H1.

### Quantitative quasi-convexity: alternative, not full positivity

At I∈B(0,R), put q=m/n, B_c=nM_C+q, μ=q/2 and ell=ω_min q/(8(B_c+q)). All denominators are positive because this helper assumes n≥1. The frozen transverse inequality implies Q[v,v]≥q|v|₂² on ω⊥; the complex bound implies |Q[x,y]|≤B_c|x|₂|y|₂. Also |ω|₂≥ω_min.

For a Euclidean unit ξ with |ω·ξ|≤ell, take e=ω/|ω|₂, t=ξ·e, u=ξ−te. Then u⊥ω, |u|₂²=1−t² and

```text
|t| ≤ q/[8(B_c+q)] < 1/8,
Q[ξ,ξ] ≥ q−(q+B_c)t²−2B_c|t|
         ≥ q−q/8−q/4 = 5q/8 ≥ μ.
```

The bilinear core does not require symmetry: bound Q[u,e] and Q[e,u] separately. Homogeneity handles every ξ, including zero. This is exactly the conditional coercivity, equivalently Pöschel's disjunction, required on the real tube. It does not assert positive definiteness in the frequency direction. Scaling h,ω,Q,μ,ell,B_c by 2π preserves the implication. No additional uniform-QC premise was smuggled into the headline.

### Period transport and the coth loss

With Λ(θ,I)=(2πθ,I) and tilde H=2πH∘Λ⁻¹, differentiation gives

```text
X_tildeH(Λz) = (2π∂_I H(z),−∂_θH(z)) = DΛ X_H(z).
```

The invertible linear transport also preserves differentiability of H at the visited points, action membership and ordinary two-sided curve derivatives. Thus the frozen solution-predicate equivalence is valid for every time set J without changing time or actions. The factor 2π in the Hamiltonian is necessary. Every order of action derivative and all curvature/frequency bounds scale by 2π. A geometric θ-strip of width ρ becomes a φ-strip of width 2πρ. These algebraic statements remain correct independently of the missing analytic/periodic premises in N12-01.

Fourier decay on the open period-one strip gives, by approaching its boundary from below,

```text
|hat u_k| exp(2π|k|₁(ρ−δ)) ≤ exp(−2πδ|k|₁) ‖u‖ρ.
Σ_(k∈ℤⁿ) exp(−2πδ|k|₁) = coth(πδ)^n.
```

The inequality is termwise before summation; no unjustified exchange of an infinite sum and boundary limit is needed. The reverse bound follows from Fourier reconstruction and the triangle inequality, allowing an infinite right side. The parameter-I version takes the supremum **after** the pointwise coefficient sum; it never interchanges sum and supremum. In Pöschel's notation the width gap is 2σ=2πδ, hence the factor coth(σ)^n, not coth(σ/2)^n. The concrete choice ρ=3s/4, δ=s/4 gives target coefficient radius πs and precisely the F below.

## Every constant in the N dictionary

All symbols in this table depend only on n,R,s,M,m,M_C,ω_min, before h,f,ε and the initial point. The A in this dictionary is a dimensionless ratio, distinct from the existential bound on the value of h.

| Choice / relation | Recomputed verification |
|---|---|
| a=1/(2n), q=m/n, B_c=nM_C+q, μ=q/2, ell=ω_min q/[8(B_c+q)] | All positive for n≥3. The preceding conic proof supplies the exact source alternative. |
| r₀=min(s/2,R/8,2ell/μ,4ω_min/μ) | Positive, gives both tube inclusions, satisfies r₀≤4ell/μ with slack, and supplies the exceptional-frequency exclusion. |
| A=11B_c/μ | B_c≥q=2μ gives A≥22. Thus R₀=r₀/A≤R/176. |
| s₀=πs, σ=πs/4 | s₀+2σ=3πs/2<2πs, inside the transformed original strip. |
| F=2πcoth(πs/4)^n | The coth factor uses the fixed strip loss; the prefactor 2π is the Hamiltonian scaling. Therefore the source weighted perturbation size is ≤Fε. |
| m_P=2πμ, ell_P=2πell, M_P=2πB_c | Euclidean action-Hessian bound is ≤2πnM_C≤M_P; real-tube QC follows from the alternative. A_P=11M_P/m_P=A and r₀≤4ell_P/m_P. |
| ε*=m_P r₀²/(2¹⁰A^(2n)) | Exactly Pöschel's printed threshold. All inputs are fixed before h and f. |
| C=(r₀/A)(F/ε*)^a | Source radius R₀(ε_P/ε*)^a with ε_P=Fε is exactly Cε^a; passing from Euclidean displacement to max displacement only weakens the conclusion. |
| c=(s₀/6)(ε*/F)^a | Source exponential is exp(cε^(−a)) for ε>0. The 1/6 and exponent a match the printed statement. |
| T=A²s₀/(4πnM) | B(M) gives |tilde ω|₂≤2πsqrt(n)M≤2πnM on the real R₀ ball. With Ω₀>0 as in N12-06, T₀=A²s₀/Ω₀≥2T. No h-value bound is used. |
| ε₀=min(ε*/F,(R/(4C))^(2n)) | Both terms are positive. Monotonicity and positive-base real-power identities give Cε₀^a≤R/4 and Fε≤ε* when 0<ε≤ε₀. |
| Exceptional branch | |tilde ω(I₀)|₂≥2πω_min>πω_min≥m_Pr₀/8, using r₀≤4ω_min/μ. Hence the source's fixed-radius exception is excluded strictly. |
| Source prefactor ball | For |I−I₀|₂≤R₀ and |I₀|∞<R/2, |I|∞<R/2+R₀<5R/8. The real derivative and frequency lower bounds are available there. |

This dictionary retains the complex-Hessian and frequency-lower inputs before the constants and does not claim they follow from the older real-bounds-only class. Pöschel uses a non-strict size bound, so this particular source import needs no additional BM11 factor-of-two adjustment. The factor 1/2 in T is explicit slack. The ε=0 dynamics are treated by N-ZERO rather than interpreted through an unguarded negative real power.

## Part 2: complete gate-proof comparison

### N-QC

The frozen type quantifies over every n, arbitrary U,h,m with `IsStrictlyQuasiConvex U h m`, I∈U and λ>0, and concludes `Function.Bijective (fderiv ℝ Ψ (I,λ))`. Part 2 preserves this exactly; it adds neither analyticity nor a uniform inverse radius.

C² of h_R on open U gives genuine Dh_R and a C¹ frequency map. Evaluating its derivative yields Dω(I)[v]_i=D²h_R(I)[v,e_i]; symmetry identifies this with the matrix Qv in the claimed order. The product rule then gives

```text
DΨ(I,λ)[v,u] = (ω·v, uω+λQv).
```

If this is zero, pair the second component with v and use ω·v=0. It gives λ vᵀQv=0, while the frozen QC condition gives vᵀQv≥m‖v‖∞². Since m,λ>0, v=0; then uω=0 and ω≠0 force u=0. Domain and codomain both have dimension n+1, so injectivity implies bijectivity, with the API correction in N12-05. The generalized kernel core correctly only needs λ≠0 and nonvanishing of the transverse quadratic form; it does not assume symmetry or a norm bound.

For n=0 the nonzero-frequency requirement is impossible at any I∈U. The proof correctly derives n≥1 locally from the premises and does not alter the frozen dimension quantifier. The empty U case is likewise vacuous. No compactness-based uniform inverse estimate is inferred.

### N-ZERO

The frozen type fixes R,s>0, h in the analytic integrable class and f in the size-zero perturbation class, arbitrary θ₀ and I₀∈B(0,R/2). It states the initial value, `IsSolutionOn H B(0,R) ℝ` for the explicit integrableOrbit, and constant action at every real time. All three conclusions and their conjunction order are represented in Part 2; no uniqueness conclusion is inserted.

The size bound forces f=0 on the **open complex** D_s(R). On its open real slice W_s, H=h_R∘pr₂. Local equality on this open set gives genuine differentiability of H at every visited point and DH[(a,b)]=Dh_R[b]. Thus X_H=(ω_h(I),0). The explicit γ(t)=(θ₀+tω_h(I₀),I₀) has this derivative for every real t; its action remains I₀∈B(0,R), and γ(0) is the required initial point. These are exactly all clauses of the frozen predicate, not merely a formal computation using a totalized derivative. Dimension zero works without any exception, and no ODE existence theorem, quasi-convexity or frequency lower bound is needed.

The optional uniqueness remark refers to the separate shared ODE layer. It is not used to prove any extra frozen conclusion. The supplied C³ real clause and local vanishing already suffice for this direct gate proof.

## Source fidelity, limits and handoff

BM11 p.4 has max-norm QC with Euclidean orthogonality and coordinate derivative bounds; pp.9–10 give the exact derivative/kernel computation. Its additional uniform image-ball assertion is outside frozen N-QC and is not used here. Pöschel pp.189–191 give the action tube, strip, norm, Hessian bound, QC disjunction and theorem constants above; p.204 confirms K=(ε*/ε_P)^(1/(2n)) and the exceptional block interpretation. The dictionary is our conversion proof, not a source theorem claiming those frozen inputs verbatim.

The complex-symmetric spectral-radius sentence on Pöschel p.190 is correctly flagged: Q=[[1,i],[i,−1]] has Q²=0 but nonzero operator norm. Retain the actual operator bound; no new source defect was discovered beyond this already documented issue. The findings above concern blueprint contracts and notation, not a change to a pinned source or frozen theorem. No ledger was edited.

These parts do not prove N-HEAD-C: its normal-form theorem, resonance geometry and final continuation assembly remain future obligations. They do provide a valid dictionary under the actual headline premises and mathematically complete N-QC/N-ZERO proofs after the helper/API repairs. No frozen statement was refuted, no new source premise was introduced, and no mathematical deviation was added by this review.

Only this report and the requested I Part-2 report were written. Input hashes, report whitespace/conflicts and `git diff --check` passed at closeout. No state-changing git command was run. For downstream Lean briefs: **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.
