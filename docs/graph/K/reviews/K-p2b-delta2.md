# K-p2b: delta2 topology review

Reviewer: `sol-review-d2` (d2). Verdict for the assigned records: **FAIL**.

Scope: exactly the d2 nodes in `delta2-assignments.json`. I wrote none of the packet records under review. Earlier delta findings were checked against the current packets and the raw pinned blueprint. Verdicts concern source topology, not proof closure or the entire slice.

Re-read source/conditional-input context: Part 2 L56-L108, L270-L317, L382-L406, L670-L682, L723-L757, L798-L820, L865-L878, L883-L929 and L935-L1089; Part 1 L165-L191, L215-L224, L352-L411 and L424-L440. Each row also includes every original EDGE consumer span.

| Record ID | Verdict | Source spans re-read | Finding / repair check |
|---|---|---|---|
| `step:p2:ne-expand` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757`; `blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756`; `blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:pt-twist` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877`; `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L876`; `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877`; `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875`; `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874`; `blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:st-ball` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922`; `blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:it-stepsmall` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014`; `blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009`; `blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:lim-dk` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:lim-primary` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:lim-close` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |
| `step:p2:lim-invariance` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086`; `blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1086` | The delta repair resolves the earlier finding, but SOURCE_HYPOTHESES now explicitly inherits the Part 2 standing package without a DEPS/EDGE entry for bp:p2:standing. SPEC requires that edge for a result assuming the package; spelling out its contents does not replace its node. |

Accounting: 8 assigned nodes; 8 FAIL; 0 PASS. No coverage items are assigned to d2. The corresponding inventory entries were checked for node disposition; this does not claim a review of unassigned coverage.

Package-edge criterion: SPEC says “A result that assumes a package depends on its node.” These FAILs preserve the repaired source premises and add their missing package edge; they do not add a mathematical assumption or replace a proved ingredient by a premise. The package source text and the applying conditional result were both re-read.

Complete proposed replacement blocks follow. They are review proposals only; packets are unchanged.

```text
NODE: step:p2:ne-expand
KIND: step
TITLE: Expansion of the new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
CONTRACT_ID: step:p2:ne-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bp:p2:correction (K admissible, 0<δ≤1, 2δ<r); C_{ΔK}ε/(γ²δ^a)<β; C_sym ε/(γδ^{ϰ+1})≤1/2; K̄:=K+ΔK on T_{r−2δ}, K̄:=K elsewhere; S:=I_{2n}−Ω_0E_sym; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: Ē=E+AΔK−∂_ωΔK+Δ²X and AΔK−∂_ωΔK=(AP−∂_ωP)ξ−P∂_ωξ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects, bp:p2:correction, bp:p2:frame-basic, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756 | definitions of E and A
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | K and Delta K are holomorphic on the working strip, allowing differentiation of Kbar=K+Delta K and Delta K=P xi
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | the inherited local package supplies the holomorphic Hamiltonian and ambient domain for the frame/correction application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | admissibility supplies holomorphic K and A2-A4, so part (a) gives holomorphic P for differentiating Delta K=P xi
```

```text
NODE: step:p2:pt-twist
KIND: step
TITLE: Twist (integrability and invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
CONTRACT_ID: step:p2:pt-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 2δ<r; |ω|≤Θ; K holomorphic on T_r with B_β(K(θ))⊂𝔅, |DK|≤σ_K, det G≠0, |B|≤σ_B on T_r, avg T invertible with |avg T^{-1}|≤σ_T; K̃ holomorphic on T_r with |K̃−K|≤d on T_r; d<β and 2𝔪C_{ΔT}d/δ²≤1; standing data of Part 2 (via 𝔅,h,M)
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: T̃ continuous on R^n, avg T̃ defined; avg T̃ invertible with |avgT̃^{-1}−avgT^{-1}|≤2𝔪²C_ΔTd/δ²
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:perturbation#average-applicability, bp:p1:neumann, step:p2:pt-torsion, step:p2:pt-binv, step:p2:pt-small, bp:p1:holomorphic-inverse, bp:p1:holomorphic-regularity, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:perturbation#average-applicability | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L876 | the continuity-only average estimate used here lacks the periodicity premise of the cited corollary
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | Neumann inversion of avg T̃
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | bound T̃−T≤C_ΔTd/δ²
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874 | Ñ holomorphic via det G̃≠0 (part c)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | 𝔪C_ΔTd/δ²≤1/2
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875 | the holomorphic new Gram matrix has nonzero determinant by (c), so its inverse and the new normal frame are holomorphic
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875 | the directional derivative of the new holomorphic normal frame is holomorphic, giving holomorphy and continuity of the new torsion
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L877 | the inherited local package supplies holomorphic h on the open ambient domain when forming the new torsion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:st-ball
KIND: step
TITLE: Ball margin
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
CONTRACT_ID: step:p2:st-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 4δ<r, β>0, 0≤ε≤1; K is (r,β,ε)-admissible; 𝔠_step ε/(γ⁴δ^{2a})≤min{1,β}; K̄ the map of bp:p2:newton-error; d:=C_ΔKε/(γ²δ^a); standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: for all theta in T_{r-2delta} and all z with |z-Kbar(theta)|<beta-d
SOURCE_CONCLUSION: B_{β−d}(K̄(θ))⊂𝔅
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, step:p2:st-error, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | A2: β-ball around K lies in 𝔅
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | the preceding correction bound gives abs(Kbar-K)<=d in the triangle inequality
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | the inherited local ambient-domain package is fixed for admissibility and the A2 ball inclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:it-stepsmall
KIND: step
TITLE: Step smallness at every stage
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
CONTRACT_ID: step:p2:it-stepsmall
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}; at stage s, induction condition (ii) is assumed when comparing mu/2 with mu-D_s, as explicitly at L1012
SOURCE_QUANTIFIERS: all s
SOURCE_CONCLUSION: 𝔠_stepε_s/(γ⁴δ_s^{2a})≤min{1,μ/2}≤min{1,μ−D_s}: smallness hypothesis of bp:p2:step holds for (r_s,δ_s,μ−D_s,ε_s)
CONSTANT_SCOPE: 𝔠_*,𝔠_step from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:error-decay, bp:p2:schedule, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s≤e and ε_s/δ_s^{2a}≤e/δ_0^{2a}
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s,δ_s notation
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011 | 𝔠_*≥𝔠_step max{1,2/μ}
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1014 | the inherited local package fixes gamma>0 and the parameters entering the decay and step-smallness comparison
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:lim-dk
KIND: step
TITLE: Uniform convergence of $DK_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
CONTRACT_ID: step:p2:lim-dk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}; K_s denotes the sequence constructed by the induction; K_infty is its limit when established, extended by K outside T_{rho_infty}
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: DK_s converges uniformly to some Λ_∞ (values in C-linear maps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | (vi): DK_{s+1}−DK_s≤nd_s/δ_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | finiteness of Σnd_s/δ_s via the sum bound with j=a+1
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1062 | the limit is in the induction setting with the local Part 2 package, which supplies gamma>0 and the fixed parameters of d_s
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:lim-primary
KIND: step
TITLE: Primary and real
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
CONTRACT_ID: step:p2:lim-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}; K_s denotes the sequence constructed by the induction; K_infty is its limit when established, extended by K outside T_{rho_infty}
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: K_∞ primary and real on reals (this is (b))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p1:uniform-limits, step:p2:lim-k, step:p2:lim-dk, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | K_s primary and real
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | primary and real are preserved under uniform limits
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072 | pointwise convergence to K_infty supplies the limit premise for preservation of primarity and realness
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | uniform derivative convergence supplies the remaining hypothesis of the cited uniform-limits lemma
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072 | the local Part 2 package is inherited by the induction setting whose primary real tori are restricted here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:lim-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
CONTRACT_ID: step:p2:lim-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}; K_s denotes the sequence constructed by the induction; K_infty is its limit when established, extended by K outside T_{rho_infty}
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)≤μ/4 (this is (c))
CONSTANT_SCOPE: C_ΔK from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, step:p2:it-sums, step:p2:lim-k, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | K_s−K≤D_s (ii)
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | Σd_s≤2Θ²C_ΔKe/(γ⁴δ_0^{2a})≤μ/4
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077 | uniform convergence justifies passage to the limit and L1057 supplies sum d_s<=2 C_DeltaK e/(gamma^2 delta_0^a)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077 | the local Part 2 package fixes the positive gamma and constants in the summed displacement bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:lim-invariance
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
CONTRACT_ID: step:p2:lim-invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}; K_s denotes the sequence constructed by the induction; K_infty is its limit when established, extended by K outside T_{rho_infty}
SOURCE_QUANTIFIERS: θ∈T_{ρ_∞}
SOURCE_CONCLUSION: E_∞(θ)=0 (this is (e))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay, bp:p2:hamiltonian, step:p2:lim-margins, step:p2:lim-holo, step:p2:lim-k, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087 | E_s≤ε_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088 | ε_s≤2^{-2as}e→0
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | X_h holomorphic hence continuous
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | K_∞(θ)∈𝔅 by the margin ball
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086 | DK_s→DK_∞ pointwise
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1086 | K_s(theta) tends to K_infty(theta), allowing continuity of X_h to pass to the limit
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1088 | the local package supplies the open ambient domain and holomorphic X_h input used for continuity at the limiting point
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Validation: all five pinned corpus SHA-256 checks PASS. Assignment-row coverage, one complete replacement per FAIL, DEPS/EDGE equality, and locator bounds were mechanically checked. No Lean command, build, source lint, implementation/provider read, state-changing git command, packet edit, frozen edit or manifest edit was performed. The review brief confines this task to reports and forbids Lean execution.

Uncertainties / errata / deviations: no pinned paper was used as an authority beyond the blueprint corpus, and no new pinned-paper erratum is claimed. Findings are graph-record defects; existing SOURCE_GAP notes are preserved. No source mathematics or frozen statement was changed.

Reviewed packet SHA-256: `b7303f04dc903368dc8abc9057fe04cb50507771d1f1fe403424d585d8b29e5d`.

Final check receipt: `K-p2b: 8 rows, 8 complete FAIL replacements; DEPS/EDGE, targets, planning fields and locator bounds PASS`. Global accounting: `39/39 assigned node rows PASS accounting`. `sha256sum -c docs/graph/K/CORPUS.sha256`: Parts 0–4 each `OK`. All 64 fingerprinted inputs unchanged. `git diff --check -- <the five delta2 report paths>`: exit 0, no output. No Lean results were created, so `#print axioms` is not applicable.
