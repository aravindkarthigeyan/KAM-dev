# K-p2b independent topology review

Reviewer: sol-review-r3. Verdict: **FAIL**.

Reviewed every one of the 59 node records and every coverage record against the raw source. Source scope: `blueprint/parts/p2-aposteriori.tex` L603-L1211. Also re-read the cited Part 0 contracts, Part 1 result statements and proofs, and Part 2 results used by these slices. All five corpus hashes pass `sha256sum -c docs/graph/K/CORPUS.sha256`. Frozen definitions and the G1/G2 declarations were used only for contract comparison; the manifest was consulted for identity fields. No implementation or provider module was read, and no Lean command or state-changing git command was run.

PASS below is a local source-record/topology verdict, not a proof-status claim. Parent results retain their own verdict even where a child record needs repair. For proof steps, SOURCE_HYPOTHESES is read as inherited source context plus explicitly established earlier facts, not as new theorem premises. No alternative proof route was found in either assigned slice.

## Node table

| Node | Verdict | Source spans re-read | Finding |
|---|---|---|---|
| `bp:p2:triangular` | FAIL | L616-L644 ; proof L646-L668 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:tri-first` | PASS | L647-L650 ; proof L647-L650 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:tri-xi0` | PASS | L652-L655 ; proof L652-L655 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:tri-second` | PASS | L657-L660 ; proof L657-L660 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:tri-form` | PASS | L662-L663 ; proof L662-L663 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:tri-real` | PASS | L665-L667 ; proof L665-L667 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:correction` | FAIL | L670-L682 ; proof L684-L721 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:cor-data` | PASS | L685-L689 ; proof L685-L689 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:cor-absorb` | PASS | L691-L694 ; proof L691-L694 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:cor-xin` | PASS | L696-L702 ; proof L696-L702 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:cor-xi` | PASS | L704-L709 ; proof L704-L709 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:cor-dxi` | PASS | L711-L716 ; proof L711-L716 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:cor-reg` | PASS | L718-L720 ; proof L718-L720 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:newton-error` | FAIL | L723-L740 ; proof L742-L785 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:ne-invert` | PASS | L743-L747 ; proof L743-L747 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ne-domain` | PASS | L749-L752 ; proof L749-L752 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ne-expand` | FAIL | L754-L757 ; proof L754-L757 | The holomorphy used at L755 comes from the correction construction; objects alone supplies no regularity of the new correction. |
| `step:p2:ne-reduce` | PASS | L759-L763 ; proof L759-L763 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ne-lin` | PASS | L765-L770 ; proof L765-L770 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ne-quad` | PASS | L772-L774 ; proof L772-L774 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ne-total` | PASS | L776-L784 ; proof L776-L784 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:perturbation` | FAIL | L798-L820 ; proof L822-L878 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:pt-small` | PASS | L823-L832 ; proof L823-L832 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-domain` | PASS | L834-L837 ; proof L834-L837 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-dl` | PASS | L839-L842 ; proof L839-L842 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-gram` | PASS | L844-L846 ; proof L844-L846 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-binv` | PASS | L848-L851 ; proof L848-L851 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-n` | PASS | L853-L857 ; proof L853-L857 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-xn` | PASS | L859-L864 ; proof L859-L864 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-torsion` | PASS | L866-L871 ; proof L866-L871 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:pt-twist` | FAIL | L873-L877 ; proof L873-L877 | There is also an unpaid conditional application: averages(a) requires periodicity, whereas the perturbation lemma assumes neither K nor Ktilde primary or periodic. Continuity and a bound do not supply this stated premise. Expose the source application gap instead of adding periodicity to the theorem.  Part (c) proves invertibility of the new Gram matrix, not holomorphy of its inverse. The implicit inverse and derivative regularity uses at L874 need edges to the proved Part 1 facts. |
| `bp:p2:step` | FAIL | L883-L903 ; proof L905-L929 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:st-small` | PASS | L906-L913 ; proof L906-L913 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:st-error` | PASS | L915-L919 ; proof L915-L919 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:st-ball` | FAIL | L921-L922 ; proof L921-L922 | The domain estimate at L922 directly uses the displacement bound from st-error; A2 alone does not supply it. |
| `step:p2:st-perturb` | PASS | L924-L928 ; proof L924-L928 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:schedule` | PASS | L934-L946 ; definition | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:error-decay` | PASS | L951-L956 ; proof L958-L968 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ed-errors` | PASS | L959-L963 ; proof L959-L963 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:ed-sums` | PASS | L965-L967 ; proof L965-L967 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:iteration` | FAIL | L970-L990 ; proof L992-L1029 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:it-sums` | PASS | L993-L1006 ; proof L993-L1006 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:it-stepsmall` | FAIL | L1008-L1014 ; proof L1008-L1014 | The edge to bp:p2:step is a mention of the hypothesis being checked, explicitly forbidden by SPEC. The proposition is actually applied in it-step. |
| `step:p2:it-base` | PASS | L1016-L1018 ; proof L1016-L1018 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:it-step` | PASS | L1020-L1028 ; proof L1020-L1028 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:limit` | FAIL | L1031-L1051 ; proof L1053-L1089 | Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use. |
| `step:p2:lim-k` | PASS | L1054-L1058 ; proof L1054-L1058 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:lim-dk` | FAIL | L1060-L1062 ; proof L1060-L1062 | The edge to lim-k is justified only as "same Cauchy argument". This reuses an argument pattern, not the result about K_s; the derivative increments and summability already give this step independently. |
| `step:p2:lim-holo` | PASS | L1064-L1068 ; proof L1064-L1068 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:lim-primary` | FAIL | L1070-L1072 ; proof L1070-L1072 | The uniform-limits application lacks the convergence premises. Iteration supplies the individual maps, not convergence to K_infty. |
| `step:p2:lim-close` | FAIL | L1074-L1077 ; proof L1074-L1077 | The equality with lim_s abs(K_s-K) at L1075 needs lim-k. That step also records the linear-in-e sum bound; it-sums alone displays the coarser gamma^{-4} estimate. |
| `step:p2:lim-margins` | PASS | L1079-L1082 ; proof L1079-L1082 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:lim-invariance` | FAIL | L1084-L1088 ; proof L1084-L1088 | The passage X_h(K_s(theta))->X_h(K_infty(theta)) uses convergence of K_s directly; derivative convergence in lim-holo does not replace this direct use. |
| `bp:p2:g1` | PASS | L1094-L1107 ; proof L1109-L1142 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:g1-constants` | PASS | L1110-L1113 ; proof L1110-L1113 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:g1-standing` | PASS | L1115-L1119 ; proof L1115-L1119 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:g1-e` | PASS | L1121-L1124 ; proof L1121-L1124 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:g1-apply` | PASS | L1126-L1129 ; proof L1126-L1129 | Statement fields, direct uses and locators agree with the source. |
| `step:p2:g1-check` | PASS | L1131-L1141 ; proof L1131-L1141 | Statement fields, direct uses and locators agree with the source. |
| `bp:p2:perturbation#average-applicability` (missing) | FAIL | L874-L876 | The cited averages(a) requires periodicity, absent from the perturbation hypotheses; add a SOURCE_GAP node for this application. |

## Coverage failures

The following inventory entries are missing; the rows specify their required disposition. All other coverage items PASS. Existing exclusions for provenance, headings and administrative remarks are valid.

| Coverage item | Verdict | Source | Finding |
|---|---|---|---|
| `bp:p2:V1` | FAIL | L1180-L1182 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V2` | FAIL | L1183-L1186 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V3` | FAIL | L1187-L1189 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V4` | FAIL | L1190-L1194 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V5` | FAIL | L1195-L1197 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V6` | FAIL | L1198-L1200 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V7` | FAIL | L1201-L1203 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V8` | FAIL | L1204-L1204 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `bp:p2:V9` | FAIL | L1205-L1207 | Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input. |
| `p2:perturbation-average-applicability` | FAIL | L874-L876 | Missing inventory item for the unsupported conditional application in pt-twist. |

## Replacement fragments

Each node block below replaces the same node block in the packet in full; unchanged metadata is retained. These are proposed graph repairs, not edits to source mathematics. Each coverage block is an addition.

### `bp:p2:triangular`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:triangular
KIND: lemma
TITLE: The triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L616-L644
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L646-L668
CONTRACT_ID: bp:p2:triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: δ>0, 2δ<r; η^L,η^N:T_r→C^n holomorphic, 1-periodic, |η^L|≤H_L, |η^N|≤H_N on T_r, average of η^N is 0; T:T_r→C^{n×n} holomorphic, 1-periodic, |T|≤H_T on T_{r−δ}, avg T invertible with |avg T^{-1}|≤σ; Γ_δ=c_Rγ^{-1}δ^{-ϰ}; R from Cor. bp:p2:cohomological(a) (uses ω,γ,τ of the standing data of Part 2); u^N:=Rη^N, ξ^N_0:=avgT^{-1}(avg η^L+avg(Tu^N)), ξ^N:=ξ^N_0−u^N, g^L:=Tξ^N−η^L, ξ^L:=Rg^L, ξ:=(ξ^L,ξ^N)
SOURCE_QUANTIFIERS: standing data (n,τ,ω,γ) fixed; for all r,δ with 0<δ, 2δ<r, all H_L,H_N,H_T,σ (reals bounding as stated), all η^L,η^N,T
SOURCE_CONCLUSION: (a) avg g^L=0 so ξ^L defined; ξ^N,g^L holomorphic periodic on T_{r−δ}, ξ on T_{r−2δ}; (b) ∂_ωξ^N=−η^N on T_{r−δ}, ∂_ωξ^L=g^L on T_{r−2δ}, i.e. Λξ−∂_ωξ=η on T_{r−2δ} with Λ=[[0,T],[0,0]]; (c) |ξ^N_0|≤σ(H_L+H_TΓ_δH_N), |ξ^N|≤|ξ^N_0|+Γ_δH_N and |g^L|≤H_T sup|ξ^N|+H_L on T_{r−δ}, |ξ^L|≤Γ_δ sup|g^L| on T_{r−2δ}; (d) if η^L,η^N,T real on reals then ξ^N_0, ξ, g^L real
CONSTANT_SCOPE: Γ_δ uses c_R,ϰ of bp:p2:constants (dependence on n,τ only); H_L,H_N,H_T,σ are free parameters (bounds), no other constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:tri-first, step:p2:tri-xi0, step:p2:tri-second, step:p2:tri-form, step:p2:tri-real, bp:p2:cohomological, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L647-L647 | proof step of this result
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L652-L652 | proof step of this result
EDGE: step:p2:tri-second | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L657-L657 | proof step of this result
EDGE: step:p2:tri-form | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L662-L662 | proof step of this result
EDGE: step:p2:tri-real | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L665-L665 | proof step of this result
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L628-L628 | R is the solution operator of the cohomological corollary
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L617-L617 | Γ_δ, c_R, ϰ defined in the constants
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L617-L617 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:correction`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:correction
KIND: lemma
TITLE: Size of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L670-L682
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L684-L721
CONTRACT_ID: bp:p2:correction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is (r,β,ε)-admissible (bp:p2:admissible: A1–A6 with σ_K,σ_B,σ_T); 0<δ≤1, 2δ<r; η^L,η^N,T the objects of K (bp:p2:objects); ξ, ΔK:=Pξ on T_{r−2δ} from the triangular lemma; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all r>0,β>0,ε≥0 (as in admissibility), 0<δ≤1 with 2δ<r, all admissible K
SOURCE_CONCLUSION: ξ and ΔK holomorphic, 1-periodic, real on reals; |ξ^N|≤C_{ξN}ε/(γδ^{ϰ+1}), |g^L|≤C_gε/(γδ^{ϰ+2}) on T_{r−δ}; |ξ|≤C_ξε/(γ²δ^a), |ΔK|≤C_{ΔK}ε/(γ²δ^a), |∂_ωξ|≤C_gε/(γδ^{ϰ+2}) on T_{r−2δ}
CONSTANT_SCOPE: C_{ξN},C_g,C_ξ,C_{ΔK},ϰ,a are the constants of bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,β,ε,δ,γ,K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:cor-data, step:p2:cor-absorb, step:p2:cor-xin, step:p2:cor-xi, step:p2:cor-dxi, step:p2:cor-reg, bp:p2:triangular, bp:p2:admissible, bp:p2:constants, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L685-L685 | proof step of this result
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L691-L691 | proof step of this result
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L696-L696 | proof step of this result
EDGE: step:p2:cor-xi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L704-L704 | proof step of this result
EDGE: step:p2:cor-dxi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L711-L711 | proof step of this result
EDGE: step:p2:cor-reg | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L718-L718 | proof step of this result
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672 | the correction is built from the triangular system
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L671-L671 | hypothesis class of K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L675-L675 | constants C_{ξN},C_g,C_ξ,C_{ΔK}
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672 | η, T, P of K
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L671-L671 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:newton-error`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:newton-error
KIND: lemma
TITLE: The new invariance error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L723-L740
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L742-L785
CONTRACT_ID: bp:p2:newton-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bp:p2:correction (K admissible, 0<δ≤1, 2δ<r); C_{ΔK}ε/(γ²δ^a)<β; C_sym ε/(γδ^{ϰ+1})≤1/2; K̄:=K+ΔK on T_{r−2δ}, K̄:=K elsewhere; S:=I_{2n}−Ω_0E_sym; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in bp:p2:correction; for all admissible K, r,β,ε,δ satisfying the two inequalities
SOURCE_CONCLUSION: K̄(T_{r−2δ})⊂𝔅; S invertible with |S^{-1}|≤2 on T_{r−2δ}; Ē=PS^{-1}E_lin+Δ²X with E_lin:=E_redξ+Ω_0E_sym∂_ωξ, Δ²X:=X_h(K̄)−X_h(K)−AΔK on T_{r−2δ}; consequently |Ē|≤C_Eε²/(γ⁴δ^{2a}) on T_{r−2δ}
CONSTANT_SCOPE: C_E,C_ΔK,C_sym,ϰ,a from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ne-invert, step:p2:ne-domain, step:p2:ne-expand, step:p2:ne-reduce, step:p2:ne-lin, step:p2:ne-quad, step:p2:ne-total, bp:p2:correction, bp:p2:constants, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L743-L743 | proof step of this result
EDGE: step:p2:ne-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L749-L749 | proof step of this result
EDGE: step:p2:ne-expand | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L754-L754 | proof step of this result
EDGE: step:p2:ne-reduce | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L759-L759 | proof step of this result
EDGE: step:p2:ne-lin | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L765-L765 | proof step of this result
EDGE: step:p2:ne-quad | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L772-L772 | proof step of this result
EDGE: step:p2:ne-total | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L776-L776 | proof step of this result
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L724-L724 | setting and ΔK of the correction lemma
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L727-L727 | constants C_ΔK,C_sym,C_E
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L730-L730 | E_sym, E, A, P of K
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L724-L724 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:perturbation`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:perturbation
KIND: lemma
TITLE: Perturbation of the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L798-L820
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L822-L878
CONTRACT_ID: bp:p2:perturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 2δ<r; |ω|≤Θ; K holomorphic on T_r with B_β(K(θ))⊂𝔅, |DK|≤σ_K, det G≠0, |B|≤σ_B on T_r, avg T invertible with |avg T^{-1}|≤σ_T; K̃ holomorphic on T_r with |K̃−K|≤d on T_r; d<β and 2𝔪C_{ΔT}d/δ²≤1; standing data of Part 2 (via 𝔅,h,M)
SOURCE_QUANTIFIERS: standing data fixed; for all r,δ,β>0,d≥0, all ω with |ω|≤Θ, all such K,K̃
SOURCE_CONCLUSION: (a) B_{β−d}(K̃(θ))⊂𝔅 on T_r; (b) |DK̃−DK|≤nd/δ on T_{r−δ}; (c) det G̃≠0, |B̃|≤2𝔪, |B̃−B|≤C_Bd/δ on T_{r−δ}; (d) |Ñ−N|≤C_{ΔN}d/δ, |Ñ|≤2𝔪² on T_{r−δ}; (e) |T̃−T|≤C_{ΔT}d/δ² on T_{r−2δ}; (f) T̃ continuous on R^n, avg T̃ invertible, |avgT̃^{-1}−avgT^{-1}|≤2𝔪²C_{ΔT}d/δ²
CONSTANT_SCOPE: C_B,C_ΔN,C_ΔT,Θ,𝔪 from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,δ,β,d,K,K̃
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-small, step:p2:pt-domain, step:p2:pt-dl, step:p2:pt-gram, step:p2:pt-binv, step:p2:pt-n, step:p2:pt-xn, step:p2:pt-torsion, step:p2:pt-twist, bp:p2:constants, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L823-L823 | proof step of this result
EDGE: step:p2:pt-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L834-L834 | proof step of this result
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L839-L839 | proof step of this result
EDGE: step:p2:pt-gram | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L844-L844 | proof step of this result
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L848-L848 | proof step of this result
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L853-L853 | proof step of this result
EDGE: step:p2:pt-xn | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L859-L859 | proof step of this result
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L866-L866 | proof step of this result
EDGE: step:p2:pt-twist | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L873-L873 | proof step of this result
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L804-L804 | constants C_B,C_ΔN,C_ΔT
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L801-L801 | G,B,N,T of a parameterization
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L799-L799 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:step`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:step
KIND: proposition
TITLE: The KAM step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L883-L903
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L905-L929
CONTRACT_ID: bp:p2:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 4δ<r, β>0, 0≤ε≤1; K is (r,β,ε)-admissible; 𝔠_step ε/(γ⁴δ^{2a})≤min{1,β}; K̄ the map of bp:p2:newton-error; d:=C_ΔKε/(γ²δ^a); standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all r,δ,β,ε as stated and all admissible K
SOURCE_CONCLUSION: (a) K̄ holomorphic, primary on T_{r−2δ}, real on reals; (b) |K̄−K|≤d≤β/2 on T_{r−2δ} and B_{β−d}(K̄(θ))⊂𝔅 for θ∈T_{r−2δ}; (c) |Ē|≤C_Eε²/(γ⁴δ^{2a}) on T_{r−2δ}; (d) |DK̄−DK|≤nd/δ on T_{r−3δ}; (e) det Ḡ≠0 and |B̄−B|≤C_Bd/δ on T_{r−3δ}; (f) avg T̄ invertible and |avgT̄^{-1}−avgT^{-1}|≤2𝔪²C_ΔTd/δ²
CONSTANT_SCOPE: 𝔠_step,C_ΔK,C_E,C_B,C_ΔT,a from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,δ,β,ε,γ,K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:st-small, step:p2:st-error, step:p2:st-ball, step:p2:st-perturb, bp:p2:newton-error, bp:p2:admissible, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L906-L906 | proof step of this result
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L915-L915 | proof step of this result
EDGE: step:p2:st-ball | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L921-L921 | proof step of this result
EDGE: step:p2:st-perturb | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L924-L924 | proof step of this result
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L889-L889 | K̄ is the map defined there
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L885-L885 | hypothesis class of K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L887-L887 | 𝔠_step, C_ΔK
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L884-L884 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:iteration`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L970-L990
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L992-L1029
CONTRACT_ID: bp:p2:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all ρ_∞<ρ, μ>0, e, γ, ω and K as stated; then there exist K_s (s≥0), K_0=K, with D_s:=Σ_{j<s}d_j
SOURCE_CONCLUSION: for every s≥0: (i) K_s is (r_s,μ−D_s,ε_s)-admissible and ε_s≤e≤1; (ii) D_s≤μ/4 and |K_s−K|≤D_s on T_{r_s}; (iii) |DK_s|≤σ_K−μ+Σ_{j<s}nd_j/δ_j≤σ_K−μ/2 on T_{r_s}; (iv) |B_s|≤σ_B−μ+Σ_{j<s}C_Bd_j/δ_j≤σ_B−μ/2; (v) |avgT_s^{-1}|≤σ_T−μ+Σ_{j<s}2𝔪²C_ΔTd_j/δ_j²≤σ_T−μ/2; (vi) |K_{s+1}−K_s|≤d_s and |DK_{s+1}−DK_s|≤nd_s/δ_s on T_{r_{s+1}}
CONSTANT_SCOPE: 𝔠_*=𝔠_*(n,τ,M,σ_K,σ_B,σ_T,μ), δ_0=δ_0(ρ,ρ_∞), 𝔠_step,C_*,a from bp:p2:constants; r_s,δ_s,ε_s,d_s from bp:p2:schedule (depend on ρ,ρ_∞,γ,e)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:it-sums, step:p2:it-stepsmall, step:p2:it-base, step:p2:it-step, bp:p2:admissible, bp:p2:schedule, bp:p2:constants, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L993-L993 | proof step of this result
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1008-L1008 | proof step of this result
EDGE: step:p2:it-base | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1016-L1016 | proof step of this result
EDGE: step:p2:it-step | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1020-L1020 | proof step of this result
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L981-L981 | admissibility of K_s
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L978-L978 | r_s,δ_s,ε_s,d_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L976-L976 | 𝔠_*, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L973-L973 | G,B,T,E of K
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L971-L971 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p2:limit`

Missing direct dependency on the local Part 2 standing package, which is assumed by this result (SPEC, Standing assumptions). A transitive path through constants or admissibility does not record this premise use.

```text
NODE: bp:p2:limit
KIND: proposition
TITLE: The limit torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1031-L1051
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1053-L1089
CONTRACT_ID: bp:p2:limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bp:p2:iteration (0<ρ_∞<ρ, μ, K, e, γ, ω with the iteration hypotheses); K_∞:=lim K_s on T_{ρ_∞}, K_∞:=K elsewhere; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in bp:p2:iteration
SOURCE_CONCLUSION: (a) K_s→K_∞ and DK_s→DK_∞ uniformly on T_{ρ_∞}, K_∞ holomorphic on T_{ρ_∞}; (b) K_∞ primary on T_{ρ_∞}, real on reals; (c) |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)≤μ/4 on T_{ρ_∞}; (d) B_{μ/2}(K_∞(θ))⊂𝔅 and |DK_∞(θ)|≤σ_K−μ/2 for θ∈T_{ρ_∞}; (e) E_∞(θ)=X_h(K_∞(θ))−DK_∞(θ)ω=0 for θ∈T_{ρ_∞}
CONSTANT_SCOPE: C_ΔK,a from bp:p2:constants; δ_0=δ_0(ρ,ρ_∞); all explicit
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:lim-k, step:p2:lim-dk, step:p2:lim-holo, step:p2:lim-primary, step:p2:lim-close, step:p2:lim-margins, step:p2:lim-invariance, bp:p2:iteration, bp:p2:constants, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1054-L1054 | proof step of this result
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1060-L1060 | proof step of this result
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1064-L1064 | proof step of this result
EDGE: step:p2:lim-primary | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1070-L1070 | proof step of this result
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1074-L1074 | proof step of this result
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1079-L1079 | proof step of this result
EDGE: step:p2:lim-invariance | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1084-L1084 | proof step of this result
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1032 | the sequence K_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1042-L1042 | C_ΔK, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1045-L1045 | E_∞ is the invariance error E of K_∞
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1032 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:ne-expand`

The holomorphy used at L755 comes from the correction construction; objects alone supplies no regularity of the new correction.

```text
NODE: step:p2:ne-expand
KIND: step
TITLE: Expansion of the new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
CONTRACT_ID: step:p2:ne-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K̄ holomorphic on T_{r−2δ}
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: Ē=E+AΔK−∂_ωΔK+Δ²X and AΔK−∂_ωΔK=(AP−∂_ωP)ξ−P∂_ωξ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756 | definitions of E and A
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | K and Delta K are holomorphic on the working strip, allowing differentiation of Kbar=K+Delta K and Delta K=P xi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:pt-twist`

Part (c) proves invertibility of the new Gram matrix, not holomorphy of its inverse. The implicit inverse and derivative regularity uses at L874 need edges to the proved Part 1 facts.

There is also an unpaid conditional application: averages(a) requires periodicity, whereas the perturbation lemma assumes neither K nor Ktilde primary or periodic. Continuity and a bound do not supply this stated premise. Expose the source application gap instead of adding periodicity to the theorem.

```text
NODE: step:p2:pt-twist
KIND: step
TITLE: Twist (integrability and invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
CONTRACT_ID: step:p2:pt-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ñ holomorphic on T_{r−δ}⊃R^n; |avg T̃−avg T|≤C_ΔTd/δ²; |avgT^{-1}|≤σ_T≤𝔪
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: T̃ continuous on R^n, avg T̃ defined; avg T̃ invertible with |avgT̃^{-1}−avgT^{-1}|≤2𝔪²C_ΔTd/δ²
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:perturbation#average-applicability, bp:p1:neumann, step:p2:pt-torsion, step:p2:pt-binv, step:p2:pt-small, bp:p1:holomorphic-inverse, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:perturbation#average-applicability | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L876 | the continuity-only average estimate used here lacks the periodicity premise of the cited corollary
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | Neumann inversion of avg T̃
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | bound T̃−T≤C_ΔTd/δ²
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874 | Ñ holomorphic via det G̃≠0 (part c)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | 𝔪C_ΔTd/δ²≤1/2
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875 | the holomorphic new Gram matrix has nonzero determinant by (c), so its inverse and the new normal frame are holomorphic
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875 | the directional derivative of the new holomorphic normal frame is holomorphic, giving holomorphy and continuity of the new torsion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:st-ball`

The domain estimate at L922 directly uses the displacement bound from st-error; A2 alone does not supply it.

```text
NODE: step:p2:st-ball
KIND: step
TITLE: Ball margin
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
CONTRACT_ID: step:p2:st-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |z−K̄(θ)|<β−d; d≥|K̄−K|
SOURCE_QUANTIFIERS: θ∈T_{r−2δ}
SOURCE_CONCLUSION: B_{β−d}(K̄(θ))⊂𝔅
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, step:p2:st-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | A2: β-ball around K lies in 𝔅
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | the preceding correction bound gives abs(Kbar-K)<=d in the triangle inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:it-stepsmall`

The edge to bp:p2:step is a mention of the hypothesis being checked, explicitly forbidden by SPEC. The proposition is actually applied in it-step.

```text
NODE: step:p2:it-stepsmall
KIND: step
TITLE: Step smallness at every stage
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
CONTRACT_ID: step:p2:it-stepsmall
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ε_s≤e≤1, ε_s/δ_s^{2a}≤e/δ_0^{2a}; 𝔠_*≥𝔠_step max{1,2/μ}; μ−D_s≥μ/2 when (ii) holds
SOURCE_QUANTIFIERS: all s
SOURCE_CONCLUSION: 𝔠_stepε_s/(γ⁴δ_s^{2a})≤min{1,μ/2}≤min{1,μ−D_s}: smallness hypothesis of bp:p2:step holds for (r_s,δ_s,μ−D_s,ε_s)
CONSTANT_SCOPE: 𝔠_*,𝔠_step from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:error-decay, bp:p2:schedule, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s≤e and ε_s/δ_s^{2a}≤e/δ_0^{2a}
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s,δ_s notation
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011 | 𝔠_*≥𝔠_step max{1,2/μ}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:lim-dk`

The edge to lim-k is justified only as "same Cauchy argument". This reuses an argument pattern, not the result about K_s; the derivative increments and summability already give this step independently.

```text
NODE: step:p2:lim-dk
KIND: step
TITLE: Uniform convergence of $DK_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
CONTRACT_ID: step:p2:lim-dk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |DK_{s+1}−DK_s|≤nd_s/δ_s on T_{ρ_∞}; Σnd_s/δ_s<∞
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: DK_s converges uniformly to some Λ_∞ (values in C-linear maps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | (vi): DK_{s+1}−DK_s≤nd_s/δ_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | finiteness of Σnd_s/δ_s via the sum bound with j=a+1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:lim-primary`

The uniform-limits application lacks the convergence premises. Iteration supplies the individual maps, not convergence to K_infty.

```text
NODE: step:p2:lim-primary
KIND: step
TITLE: Primary and real
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
CONTRACT_ID: step:p2:lim-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: each K_s primary on T_{ρ_∞} and real on reals
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: K_∞ primary and real on reals (this is (b))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p1:uniform-limits, step:p2:lim-k, step:p2:lim-dk
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | K_s primary and real
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | primary and real are preserved under uniform limits
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072 | pointwise convergence to K_infty supplies the limit premise for preservation of primarity and realness
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | uniform derivative convergence supplies the remaining hypothesis of the cited uniform-limits lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:lim-close`

The equality with lim_s abs(K_s-K) at L1075 needs lim-k. That step also records the linear-in-e sum bound; it-sums alone displays the coarser gamma^{-4} estimate.

```text
NODE: step:p2:lim-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
CONTRACT_ID: step:p2:lim-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |K_s−K|≤D_s≤Σd_s; Σd_s≤2C_ΔKe/(γ²δ_0^a)≤μ/4
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)≤μ/4 (this is (c))
CONSTANT_SCOPE: C_ΔK from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, step:p2:it-sums, step:p2:lim-k
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | K_s−K≤D_s (ii)
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | Σd_s≤2Θ²C_ΔKe/(γ⁴δ_0^{2a})≤μ/4
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077 | uniform convergence justifies passage to the limit and L1057 supplies sum d_s<=2 C_DeltaK e/(gamma^2 delta_0^a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p2:lim-invariance`

The passage X_h(K_s(theta))->X_h(K_infty(theta)) uses convergence of K_s directly; derivative convergence in lim-holo does not replace this direct use.

```text
NODE: step:p2:lim-invariance
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
CONTRACT_ID: step:p2:lim-invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_∞(θ)∈𝔅; X_h continuous on 𝔅; |E_s(θ)|≤ε_s≤2^{-2as}e
SOURCE_QUANTIFIERS: θ∈T_{ρ_∞}
SOURCE_CONCLUSION: E_∞(θ)=0 (this is (e))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay, bp:p2:hamiltonian, step:p2:lim-margins, step:p2:lim-holo, step:p2:lim-k
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087 | E_s≤ε_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088 | ε_s≤2^{-2as}e→0
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | X_h holomorphic hence continuous
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | K_∞(θ)∈𝔅 by the margin ball
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086 | DK_s→DK_∞ pointwise
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1086 | K_s(theta) tends to K_infty(theta), allowing continuity of X_h to pass to the limit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Coverage `bp:p2:V1`

```text
ITEM: bp:p2:V1
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V1@L1180-L1182
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V2`

```text
ITEM: bp:p2:V2
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V2@L1183-L1186
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V3`

```text
ITEM: bp:p2:V3
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V3@L1187-L1189
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V4`

```text
ITEM: bp:p2:V4
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V4@L1190-L1194
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V5`

```text
ITEM: bp:p2:V5
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V5@L1195-L1197
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V6`

```text
ITEM: bp:p2:V6
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V6@L1198-L1200
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V7`

```text
ITEM: bp:p2:V7
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V7@L1201-L1203
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V8`

```text
ITEM: bp:p2:V8
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V8@L1204-L1204
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Coverage `bp:p2:V9`

```text
ITEM: bp:p2:V9
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:V9@L1205-L1207
DISPOSITION: EXCLUDED
REASON: Missing inventory item: administrative subitem of the excluded deviations remark bp:p2:deviations; no proof uses this subitem as an input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

### Missing conditional-application node

```text
NODE: bp:p2:perturbation#average-applicability
KIND: step
TITLE: Continuity-only averaging estimate used by frame perturbation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:perturbation#average-applicability
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the hypotheses of bp:p2:perturbation; Ttilde and T continuous on R^n; abs(Ttilde-T)<=C_DeltaT d/delta^2 on T_{r-2delta}; no periodicity or primarity hypothesis on K or Ktilde
SOURCE_QUANTIFIERS: the parameters and maps of bp:p2:perturbation
SOURCE_CONCLUSION: abs(avg Ttilde-avg T)<=C_DeltaT d/delta^2, as used at L875-L876
CONSTANT_SCOPE: C_DeltaT as in bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, step:p2:pt-torsion
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | source invokes (a), but its periodicity premise is not supplied
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L876-L876 | pointwise difference bound on a strip containing the real cube
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the literal corollary bp:p2:averages(a), L160-L162, assumes a continuous 1-periodic input. Neither K nor Ktilde is assumed primary or periodic in bp:p2:perturbation, L798-L805, and no periodicity of Ttilde-T is established. A continuity-only estimate is used at L875-L876 without a matching stated result. Do not add periodicity as a theorem hypothesis or silently replace the cited result. E6 is a possible source repair, not a proof supplied by this review.
```

### Coverage for the conditional-application gap

```text
ITEM: p2:perturbation-average-applicability
KIND: proof-region
SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876
DISPOSITION: NODE bp:p2:perturbation#average-applicability
REASON: unsupported use of the periodic-input averages corollary under the nonperiodic perturbation hypotheses
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
```

## Conditional-premise audit and limits

The triangular application is supplied by cor-data (holomorphy, periodicity, zero normal average, bounds and inverse twist), with the two strip losses checked in tri-first/tri-second. New-error inversion uses the displayed symplectic smallness and the geometry bound. The Taylor application uses ne-domain. st-perturb explicitly restricts A2-A5 to T_{r-2delta}, supplies the frequency bound and verifies the smallness and strip inequalities. The induction applies the KAM step only in it-step after it-stepsmall and the schedule supply its premises. G1 supplies the standing package in g1-standing, error smallness in g1-e and H2-H4 in g1-apply. The replacement edges above expose the omitted local package and convergence inputs.

The seven G1 conclusion clauses and the distinct C1/C2 dependence lists agree with Part 0 and the frozen declaration. The explicit-constant theorem bp:p2:g1 is a separate source theorem, not a second frozen anchor; its empty FROZEN fields are appropriate. No frozen-statement defect was found. No new pinned-paper erratum is asserted: papers are provenance only under SPEC. No mathematical deviation was introduced. Axioms and implementation status were not examined, as the review brief prohibits running Lean and reading implementations.

Suspected blueprint defect (not a pinned-paper erratum): `p2-aposteriori.tex` L875 says "By Corollary [bp:p2:averages](a)". That corollary explicitly assumes "continuous and 1-periodic" at L160, while the perturbation statement L798-L805 imposes no primary/periodic hypothesis. The proposed SOURCE_GAP records this premise mismatch; it makes no assertion that the perturbation theorem is false.
