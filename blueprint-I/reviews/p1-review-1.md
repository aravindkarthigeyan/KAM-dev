# Independent review 1: extended torsion and the bordered linear system

## Verdict: REVISE

The central identities and the bordered solve have the correct signs, order of constants and two strip losses. The literal frozen energy row is retained, and all three reported HL19 errata are confirmed against the pinned pages. Two stated consequences are nevertheless wrong without correction: the last-row estimate omits a factor n, and the projected linearized equation is treated as equivalent to the original equation without assuming that the frame is invertible. There are also unguarded strip/integral statements and incompatible hypotheses in cited track-K interfaces. None of these requires or authorizes changing a frozen definition or theorem.

## Scope, materials and build

- Reviewed `blueprint-I/parts/p1-iso-linear.tex`: **536 lines, 42,511 bytes**, SHA-256 `ec38c7315a598abb6c58a83d0b8c9d8888e701ef0835c5a5737291c5249cfb72`. Inventory: 1 standing assumption, 7 lemmas, 8 remarks; 32 labelled proof steps.
- Read the review brief, project rules, `docs/PLAN.md`, current decisions, conventions ruling, I PLAN, I/N Part 0 and relevant track-I statement/source/notes/audit material. Glanced at `3d82bd9`: the Part-0 ray endpoint and final-error totality fixes are present. Read the actual K interfaces cited by this part, particularly `frame-basic`, `frame-identities`, `exactness`, `geometry`, both cohomological interfaces, matrix norms, averages and real inverses.
- Compared the frozen `extendedTorsion`, `extendedTorsionAverage`, `energyAverage`, `borderedHessian` and their imported definitions of frequency, Gram matrix, normal frame, torsion, vector field and invariance error. Checked applicability to the fixed-data order and conclusions of frozen `isoenergetic_kam` and `all_time_confinement`.
- Independently read pinned HL19 pp.6–7, 18–21, 31–32 and 45–47. Visually checked pp.18,19,46. These cover the sign convention, energy identity, three errata, triangular system and its proof. This is not a fresh review of every nonlinear estimate on pp.48–53.
- Build: `cd blueprint-I && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`, **exit 0**, initially 15 pages for Parts 0–1, with no warnings, undefined references or overfull boxes. A closeout rebuild after the concurrent addition of I Part 2 also passed: **23 pages**, no undefined references, two overfull boxes in the newly added Part 2 (5.13164 pt, lines 68–70; 32.39536 pt, line 172). Those Part-2 proofs are outside this review; Part 1 itself is unchanged. All concrete local and `\Kref` targets exist, including step labels. Existence of a target does not establish that its hypotheses match; see I1-04.

## Findings

| ID | Location / label | Severity | Finding | Evidence | Exact proposed fix |
|---|---|---|---|---|---|
| I1-01 | `bpI:p1:last-row` (a), line 216 | major | The displayed estimate `|Y−ωᵀ|≤|η^L|` is false in the explicitly declared row-sum/max-vector norms. | The exact identity gives a 1×n row `(η^L)ᵀ`, whose norm is Σ_b|η_b^L|. The proof at line 245 correctly obtains **n**|η^L|. At a flat torus with H=(ω−(1,…,1))·I, η^L=(1,…,1), so the claimed left side is n while the right side is 1. | Replace the statement by `|Y−ωᵀ|≤n|η^L|`, or state the stronger exact identity `|Y−ωᵀ|=Σ_b|η_b^L|`. Keep the already correct 2n² bound in (c). |
| I1-02 | `bpI:p1:reduced`, lines 477–482; `stepI:p1:rd-consequence`, lines 499–502 | major | Only the **projected identity** is unconditional. The “exactly when” equivalence and residual formula `Q⁻¹E_lin` need Q invertible, which is not assumed. Gram invertibility alone is insufficient. | The proof itself introduces `|E_sym|<1` only at line 500; it is absent from the statement. An explicit primary real analytic K with invertible Gram on a positive strip but singular P,Q at θ=0 is given below. Multiplying by a singular Q loses information. | Keep (a),(b) as unconditional identities, and conclude only `Q Res=E_lin` for a border solution. State a separate conditional consequence with `det P≠0` (equivalently `det Q≠0`), or the sufficient bound `|E_sym|<1` on the relevant strip, proved from the iteration's smallness assumptions. Then derive `Res=Q⁻¹E_lin` and the reverse implication. Do not add frame invertibility to a frozen theorem; prove it in the application. |
| I1-03 | `bpI:p1:energy-approx` (f), lines 269–276; corresponding reduced lemma's strip, lines 468–469 | major, totality | The auxiliary strip width is only constrained by r′≤r. Without r′>0, “holomorphic on T_r′” gives no real-cube regularity at all. Integral linearity and the energy-average conclusion are then unguarded. Moreover ξ is not assumed periodic or globally bounded, so the displayed suprema over all real angles need not be finite. | For n≥2 and r′≤0, T_r′ is empty. Arbitrary, even nonmeasurable values of ξ at real angles satisfy the stated holomorphy hypothesis, and totalized Bochner integrals cannot be split without integrability. For r′>0, holomorphy does guarantee continuity on the cube, even without periodicity, but not boundedness on all ℝⁿ. | Require `0<r′≤r` wherever a real-cube average or strip derivative is intended. In (f) use suprema on `[0,1]^n`, which are finite by continuity; alternatively explicitly require ξ periodic (or bounded on reals) before using whole-real suprema. No new root hypothesis is needed: the actual border solution is periodic on a positive strip. |
| I1-04 | `stepI:p1:eb-holo`, line 126; `stepI:p1:lr-average`, line 253; `bpI:p1:reduced`, line 482 | major, dependency contract | The cited K lemmas have stronger hypotheses than supplied here. Most significantly, `bp:p2:geometry` assumes K-admissibility including invertibility of the **unbordered** averaged torsion, which the isoenergetic statement does not provide and need not satisfy. | K's `bp:p2:admissible` A5 is det⟨T⟩≠0 and an inverse bound; `geometry` explicitly assumes admissibility plus ε≤1 and strip-loss conditions. I's standing setting supplies none of these quantitative bounds. `frame-basic` as stated assumes A2–A4, and its part (c) assumes A6, whereas several uses here provide only open image inclusion and Gram invertibility or bounds with different parameters. The needed proofs are valid under weaker hypotheses, but the published interfaces cannot simply be applied. | Extract/request a common **geometry-without-twist** interface with the actual required image/Gram/derivative/error bounds, and a pure regularity interface requiring only open image inclusion and det G≠0. Cite those distinct labels, or give explicit local derivations in this part from the already cited inverse/product/Cauchy lemmas. Scope quantitative “quadratic” claims to shrunken strips with the required bounds. Never assume det⟨T⟩≠0 to use the K label. |
| I1-05 | `stepI:p1:ea-avg`, line 303 | minor | The optional direct average calculation has a plus where (c) has a minus. | (c) says η^N=D(H∘K)ᵀ−Ω_Kω, but line 303 prints the sum when taking averages. Both averaged terms vanish, so the final zero conclusion survives. | Replace `+⟨Ω_K⟩ω` by `−⟨Ω_K⟩ω`; retain the main citation of exactness. |
| I1-06 | `bpI:p1:trivial`, lines 161–162; proof lines 200–202 | minor, inverse guard | Equality of the totalized real and complex inverse norms is stated even when the bordered matrix is singular, but the cited `bp:p1:real-inverse` only treats invertible matrices. | The trivial-torus lemma does not assume nonzero bordered determinant. The result is true in the singular case because both Lean inverses are zero, but that case is not handled by the cited theorem. | Split on det B_h≠0: use the real-inverse/adjugate calculation in the nonsingular case and singular-matrix inverse=0 on both sides in the other case. Or cite a proved cast-commutes-with-total-matrix-inverse lemma covering both cases. Do not add a nondegeneracy premise just to prove this equality. |
| I1-07 | `bpI:p1:doubts` (b), lines 533–535 | minor, contract language | “The two readings give the same I-G1 up to the choice of σ_T” overstates what the O(e) row identity alone proves. The frozen approximate row must not be replaced by the invariant row as an equivalent input. | Inverse stability requires a quantitative perturbation condition and inverse bounds; σ_T is fixed before the error and perturbation in frozen I-G1. O(e) without that condition does not preserve invertibility or the same margin. | Say that the two bordered matrices are perturbatively comparable **once a stated Neumann bound and the necessary smallness/margin conditions have been proved**. Retain DH(K)N as the actual frozen row throughout. |

## Concrete refutations

### A. The missing row factor is realized by frozen objects

Take n=2, K(θ)=(θ,0), ω=(1,sqrt(2)), D=ℂ²×ℂ², and H(θ,I)=(ω−(1,1))·I. All derivatives required by the standing setting are bounded; choose M large enough. The frequency ω is Diophantine for τ=1 and a sufficiently small positive γ. Then N=(0,id), E=(-(1,1),0), η^L=(1,1), and Y=ωᵀ−(1,1). Thus the row norm is 2 and the max-vector norm is 1. This refutes I1-01 without changing any definition or norm convention.

### B. A primary real torus with invertible Gram and singular frame

In n=2 put c=cos(2πθ₂), b=1−c and

```text
K^θ(θ) = (θ₁, θ₂ − sin(2πθ₂)/(2π)),
K^I(θ) = (sin(2πθ₂)/(2π), 0).
```

This is entire, primary and real on real angles. Its tangent columns are e_q₁ and b e_q₂+c e_p₁, so G=diag(1,b²+c²). For real θ₂, b²+c²≥1/2. Periodicity and compactness therefore give a sufficiently small **positive** complex strip on which det G never vanishes. Use D=ℂ⁴ and any real action-linear Hamiltonian with bounded derivative, together with a Diophantine ω, to satisfy the rest of the standing setting.

At θ₂=0, b=0,c=1. Then L=(e_q₁,e_p₁), N=(e_p₁,−e_q₁), and P=(L,N) has rank 2, not 4. Q=−Ω₀PᵀΩ₀ is also singular. Thus the missing inverse guard is not implied by primaryness, realness, holomorphy or invertible Gram, even on the real torus. An exact SymPy calculation returned `G=[[1,0],[0,1]], det(P)=0, rank(Q)=2`. This is an independent algebraic check, not Lean certification.

### C. Why positive r′ matters for the energy average

With r′=0, the holomorphy condition on ξ is vacuous. For a flat K and H=I₁+sin(2πθ₁) on a bounded-width open angle strip, Y₁=1 and D(H∘K) has a nonzero periodic coefficient a(θ) on an open part of the real cube. Choose ξ^L so aξ^L is nonintegrable, and choose ξ^N₁=1−aξ^L, other normal components zero. Both separate products have totalized integral zero, while DH(K)ΔK=Yξ^N+D(H∘K)ξ^L=1 has integral one. Thus the unguarded splitting in (f) can fail. Requiring positive strip width restores continuity and integrability of both products on the cube.

## What I recomputed (refutation attempts that failed)

### Extended torsion and the trivial torus

For K=(θ,I), L=(id,0), G=id, B=id and N=(0,id), constant in θ. For H=h(I), X_H=(∇^ℂh,0), so X_N,j=(∂_j∇^ℂh,0) and T_ij=∂_j∂_ih. Reality of h on a real neighbourhood identifies each complex first derivative with the frozen real frequencyMap and its real derivative with the frozen bordered Hessian entry. Both borders are ∇h(I), with zero corner. Thus the two matrices agree exactly after real-to-complex casting. No Kolmogorov inverse is needed. A subtype-domain h can be represented by any total extension off U; openness makes the derivatives at I independent of that extension.

For general K, DH=−X_HᵀΩ₀ and X_H(K)=Lω+E. Since LᵀΩ₀N=−id,

```text
Y = −(Lω+E)^T Ω₀N = ω^T − E^TΩ₀N
  = ω^T − (η^L)^T.
```

The identity is exact off invariance. It yields the invariant row when E=0 and, with the correct row conversion, the stated average error bound 2n²σ′_Kσ′_B e. The bottom row is not replaced by ωᵀ in the actual frozen average. Holomorphy and realness follow from the open-domain derivative, invertible Gram and holomorphic inverse; cube integrability follows from continuity on a compact box. These facts can be proved under the current weak setting even though some cited K interfaces need the weakening requested in I1-04.

### Energy and exactness

The chain rule gives D(H∘K)=DH(K)L. Since DH X_H=0, differentiating in direction ω gives ∂_ω(H∘K)=−DH(K)E. Also

```text
η^N = L^TΩ₀E = D(H∘K)^T − Ω_Kω,
D(H∘K) = (η^N)^T − ω^TΩ_K.
```

The second sign uses Ω_Kᵀ=−Ω_K. Averaging a derivative of a holomorphic periodic scalar gives zero; the curl representation of Ω_K gives ⟨Ω_K⟩=0. Hence ⟨η^N⟩=0. These exactness facts do not need any ordinary torsion inverse.

With |E|≤ε, the right side of the directional derivative is bounded by Mε. The K cohomological a-priori estimate therefore bounds the zero-average energy fluctuation by MΓ_δε on T_(r−δ). A separate loss δ′ gives the row derivative bound nMΓ_δε/δ′. No extra 2π belongs in this geometric-strip Cauchy bound. If E=0, cohomological uniqueness applied on each smaller positive strip gives H∘K equal to its average on their union T_r. This proves the complex-strip pointwise energy needed by I-G1 without using a frame for K∞.

For ΔK=Lξ^L+Nξ^N, the pointwise decomposition is exactly

```text
DH(K)ΔK = Yξ^N + D(H∘K)ξ^L
        = Yξ^N + (η^N)^Tξ^L − ω^TΩ_Kξ^L.
```

It identifies a separate average linear energy error; the triangular energy equation alone is not an exact solution of the full energy-linearization. The bound on the row D(H∘K) needs the factor n already present in (f). With the regularity repair I1-03, integration and these bounds are justified.

### Bordered solve: equations, bounds, uniqueness and realness

I recomputed all steps, including the extra constant-frequency term. Let u^N=Rη^N, so ∂_ωu^N=η^N and ⟨u^N⟩=0. Averaging the first and third equations gives exactly

```text
⟨T⟩ξ₀ + ω ξ^ω = ⟨η^L⟩ + ⟨Tu^N⟩,
⟨Y⟩ξ₀          = η^ω      + ⟨Yu^N⟩.
```

The matrix is the literal extended average. Its inverse determines ξ₀ and ξ^ω together; ⟨T⟩ may be singular. Set ξ^N=ξ₀−u^N and g^L=Tξ^N+ωξ^ω−η^L. The bordered equations give ⟨g^L⟩=0, and ξ^L=ξ₀^L+Rg^L gives the claimed equations with **minus** ∂_ω. The first solve loses δ and the second loses δ; 2δ<r supplies both positive domains and all cube integrability guards.

In the product max norm, the inverse bound gives exactly

```text
S* = σ max(H_L + H_T Γδ H_N, |η^ω| + H_Y Γδ H_N).
```

Then |ξ^N|≤S*+ΓδH_N, |g^L|≤H_T(S*+ΓδH_N)+|ω|S*+H_L, and |ξ^L−ξ₀^L|≤Γδ sup|g^L|. H_Y is a **row norm**, so no further n factor is omitted in this solve. The extra |ω|S* is harmless: in I-G1 |ω|≤σ_ω|ω*| with those data fixed before the constants. All estimates are linear in the forcing. Uniqueness uses nonresonance to make the difference of the normal solutions constant, then the invertible bordered mean system fixes that constant and ξ^ω; the tangential difference is the free constant phase. Real forcing, mean matrix and inverse give real corrections, as claimed.

An independent exact SymPy fixture used ω=(1,sqrt(2)), T=diag(1,0), Y=ωᵀ, η^N=(sin(2πθ₁),0), η^L=(2+cos(2πθ₁),3+sin(2πθ₁)), η^ω=3. The bordered determinant is −2 and ξ^ω=3sqrt(2)/2. Symbolic differentiation and exact integration over one period returned `[True, True, True]` for all three equations. This tests signs and mean constants with a **singular unbordered T** and a nonzero frequency correction; it does not certify the analytic estimate in Lean.

### Projected residual identity

The two unconditional identities in `reduced` are correct. From PᵀΩ₀L=(Ω_K,id)ᵀ one gets QL=(id,−Ω_K)ᵀ. Using QP=id−Ω₀E_sym, Q(AP−∂_ωP)=Λ+E_red and QE=−η gives

```text
Q Res = Λξ − ∂_ωξ + (ω,0)ξ^ω − η
      + E_red ξ + Ω₀E_sym ∂_ωξ − (0,Ω_Kω)ξ^ω.
```

Thus the displayed sign of the additional frequency defect is correct. Turning this into an unprojected residual estimate requires I1-02's inverse guard. Calling the defects quadratic requires the quantitative geometry bounds and ξ=O(total error) on the appropriate smaller strips; it does not follow just by naming the K geometry theorem with unmet hypotheses. The supplied border solve and a suitably weakened geometry interface can establish exactly those facts.

## Pinned-source check and the three errata

| Item | Printed evidence, recomputation and ruling |
|---|---|
| E1, strict zero-error closeness | HL19 p.19 (3.16), and p.18 (3.11), print strict `< C·error/(...)`. At zero error the smallness condition holds but the conclusion demands a nonnegative norm <0. **Confirmed defect**; use ≤ as the frozen theorems already do. |
| E2, invariance sign | P.18 (3.12) prints `X_h(K)=L_ωK`; p.20 (4.1) defines L_ω=−∂_ω; pp.6–7 define the invariant torus by X_h(K)=DKω and E=X_h(K)−DKω. P.45 before (6.1) uses the consistent X_h(K)+L_ωK error. **Confirmed defect**; correct (3.12) to X_h(K)+L_ωK=0. |
| E3, energy-row chain | P.19 Remark 3.7 prints `Dh(K)N=X_h(K)^TΩN=−ω^TDK^TΩN=ωhat^T`. Since ΩX_h=(Dh)^T and Ω^T=−Ω, the correct chain starts `Dh N=−X_h^TΩN=−ω^TDK^TΩN`. **Confirmed missing sign**; the final invariant row is correct. The blueprint's trivial-torus and general-row computations independently confirm it. |
| Lemma 6.1, pp.46–47 | Its equations (6.7)–(6.10) agree after R_HL=−R and L_HL=−∂_ω. The omitted constant ωξ^ω in the printed formula for ξ^L is harmless because the printed operator discards the mean. Carrying it explicitly makes the forcing zero-average for K's operator. No new sign erratum is warranted here. |
| Energy identity and proof depth | P.21 (4.9) is L_ω(c∘K)=Dc(K)E; with c=H this is exactly the blueprint's negative directional-derivative identity. P.47 gives the short bordered-mean proof and points to Lemma 5.1; pp.31–32 show that lemma's estimates are referred to earlier work. Providing the full bordered proof here is appropriate. |

The three errata are reports for the orchestrator, not edits to the pinned source or ledger. The cruder exponent κ=τ+n, complex forcing generalization, explicit constant-frequency forcing term and uniqueness conclusion are disclosed adaptations. No new source theorem or source premise has been invented.

## Contract and dependency conclusion

The part can supply the intended I-G1 linear correction and pointwise-energy mechanism after the table fixes. It does not yet prove I-G1 or I-HEAD. The frozen approximate energy row, real frequency-map Hessian, period-one cube and bilinear symplectic conventions are retained correctly. In particular a helper proving geometry under **unbordered twist** assumptions cannot stand in for the isoenergetic geometry needed here; the singular-T fixture demonstrates why that distinction matters.

No conclusion-shaped premise was added to the frozen theorem. Explicitly conditional invertibility/smallness helpers are appropriate, provided their premises are proved in the iteration rather than silently supplied to the root. The positive-width and integrability guards belong to those helper contracts.

## Validation, axioms and handoff

`scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (94 frozen declarations)`. Both requested LaTeX builds passed. Exact symbolic checks are recorded above. `git diff --check` passed; report whitespace/conflict checks passed at closeout. Only this review and the requested N Part-3 review were edited; temporary PDF-render/build logs were kept outside tracked inputs or in the prescribed review-build directory. No state-changing git command was run.

No Lean file was changed, no Lean build was needed under this review brief, and no new theorem or fresh `#print axioms` receipt is claimed. Frozen theorem bodies remain unproved anchors; this review neither seals them nor certifies axiom-free providers. The remaining uncertainties are the quantitative geometry interface extraction, proof of frame invertibility from the actual smallness budget, and the later nonlinear iteration. No frozen statement was refuted.

For downstream Lean briefs, the required rules remain: **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.
