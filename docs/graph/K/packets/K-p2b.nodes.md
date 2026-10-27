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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-first
KIND: step
TITLE: First cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
CONTRACT_ID: step:p2:tri-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data; η^N holomorphic periodic with |η^N|≤H_N on T_r, avg η^N=0; u^N=Rη^N
SOURCE_QUANTIFIERS: δ, T_r, T_{r−δ} as in the lemma
SOURCE_CONCLUSION: u^N holomorphic, periodic, real if η^N is, avg u^N=0, ∂_ωu^N=η^N, |u^N|≤Γ_δH_N on T_{r−δ}; hence ∂_ωξ^N=−η^N and |ξ^N|≤|ξ^N_0|+Γ_δH_N
CONSTANT_SCOPE: Γ_δ=c_Rγ^{-1}δ^{-ϰ} (constants of bp:p2:constants)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L648-L648 | cohomological corollary (a) solves ∂_ωu^N=η^N with the loss-δ bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-xi0
KIND: step
TITLE: The torsion average fixes $\xi^N_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
CONTRACT_ID: step:p2:tri-xi0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T continuous on R^n; |T|≤H_T on T_{r−δ}; |u^N|≤Γ_δH_N (previous step); avg T invertible, |avg T^{-1}|≤σ
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: |avg(Tu^N)|≤H_TΓ_δH_N, |avg η^L|≤H_L, so |ξ^N_0|≤σ(H_L+H_TΓ_δH_N); and avg g^L=avgT ξ^N_0−avg(Tu^N)−avg η^L=0
CONSTANT_SCOPE: none beyond the lemma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, step:p2:tri-first
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L654-L654 | average of a bounded function is bounded by the same bound
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L653-L653 | the bound u^N≤Γ_δH_N and u^N periodic holomorphic
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-second
KIND: step
TITLE: Second cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
CONTRACT_ID: step:p2:tri-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g^L=Tξ^N−η^L holomorphic periodic on T_{r−δ}, |g^L|≤H_T sup|ξ^N|+H_L, avg g^L=0 (previous step); δ<r−δ
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: ξ^L=Rg^L on T_{r−2δ} with ∂_ωξ^L=g^L and |ξ^L|≤Γ_δ sup|g^L|
CONSTANT_SCOPE: Γ_δ as in the lemma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological, step:p2:tri-xi0, step:p2:tri-first
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L659-L659 | cohomological corollary applied on T_{r−δ} with loss δ
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L658-L658 | g^L has zero average
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L658-L658 | ξ^N bound used for the bound of g^L
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-form
KIND: step
TITLE: Triangular form
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
CONTRACT_ID: step:p2:tri-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ∂_ωξ^N=−η^N, ∂_ωξ^L=g^L=Tξ^N−η^L
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: Λξ−∂_ωξ=(Tξ^N−∂_ωξ^L, −∂_ωξ^N)=(η^L,η^N)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:tri-first, step:p2:tri-second
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L663-L663 | first equation ∂_ωξ^N=−η^N
EDGE: step:p2:tri-second | blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L663-L663 | second equation ∂_ωξ^L=g^L
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
CONTRACT_ID: step:p2:tri-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data η^L,η^N,T real on reals
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: avg T, avg η^L, avg(Tu^N) real, so ξ^N_0 real; with realness of R, ξ^N, g^L, ξ real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological, step:p2:tri-xi0
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L667-L667 | R preserves realness
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L666-L666 | definition of ξ^N_0 and the average bounds
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-data
KIND: step
TITLE: The data of the triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
CONTRACT_ID: step:p2:cor-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is (r,β,ε)-admissible (bp:p2:admissible: A1–A6 with σ_K,σ_B,σ_T); 0<δ≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: |ω|≤Θ, γ≤Θ; η^L,η^N,T holomorphic periodic real; H_L=2n𝔪²ε, H_N=2n𝔪ε, H_T=C_T/δ; avg η^N=0; σ=σ_T≤𝔪
CONSTANT_SCOPE: Θ,𝔪,C_T from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:periodicity, bp:p2:frame-basic, bp:p2:exactness, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L686-L686 | ω≤Θ and γ≤Θ
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | periodicity and realness of η,T
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | bounds on η and T (parts c,d) and holomorphy
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | avg η^N=0
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L689-L689 | σ_T bound from A5
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-absorb
KIND: step
TITLE: Absorbing powers of $\gamma\delta$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
CONTRACT_ID: step:p2:cor-absorb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: γ≤Θ (previous step), δ≤1
SOURCE_QUANTIFIERS: i,j≥0
SOURCE_CONCLUSION: γδ^j≤Θ; ε≤Θε/(γδ^j); ε/(γδ^j)≤Θε/(γ²δ^{j+i})
CONSTANT_SCOPE: Θ from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:cor-data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L692-L692 | γ≤Θ established there
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-xin
KIND: step
TITLE: Bounds on $\xi^N$ and $g^L$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
CONTRACT_ID: step:p2:cor-xin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: triangular lemma (c) with the data H_L,H_N,H_T,σ of the data step; absorption inequalities
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: |ξ^N_0|≤C_{ξ0}ε/(γδ^{ϰ+1}); |ξ^N|≤C_{ξN}ε/(γδ^{ϰ+1}); |g^L|≤C_gε/(γδ^{ϰ+2})
CONSTANT_SCOPE: C_{ξ0},C_{ξN},C_g from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-data, step:p2:cor-absorb, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L697-L697 | bounds (c) on ξ^N_0, ξ^N, g^L
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L697-L697 | values of H_L,H_N,H_T,σ
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L702-L702 | absorbing powers of γδ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L699-L699 | explicit constants C_{ξ0},C_{ξN},C_g
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-xi
KIND: step
TITLE: Bounds on $\xi$ and $\Delta K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
CONTRACT_ID: step:p2:cor-xi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bounds on ξ^N and g^L on T_{r−δ}; triangular lemma (c); |P|≤2𝔪²
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |ξ|≤C_ξε/(γ²δ^a); |ΔK|≤2𝔪²C_ξε/(γ²δ^a)
CONSTANT_SCOPE: C_ξ=c_RC_g+ΘC_{ξN}, C_{ΔK}=2𝔪²C_ξ
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-xin, step:p2:cor-absorb, bp:p2:frame-basic, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L705-L705 | ξ^L≤Γ_δ supg^L from (c)
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L705-L705 | bounds on g^L and ξ^N
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L707-L707 | absorbing powers of γδ
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L708-L708 | P≤2𝔪²
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L708-L708 | C_ξ, C_{ΔK}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-dxi
KIND: step
TITLE: Bound on $\partial_\omega\xi$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
CONTRACT_ID: step:p2:cor-dxi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ∂_ωξ=(g^L,−η^N); |η^N|≤2n𝔪ε
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |∂_ωξ|≤C_gε/(γδ^{ϰ+2})
CONSTANT_SCOPE: C_g from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-absorb, step:p2:cor-xin, step:p2:cor-data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | ∂_ωξ=(g^L,−η^N)
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | absorbing powers of γδ
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | bound on g^L
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | η^N≤2n𝔪ε
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-reg
KIND: step
TITLE: Regularity of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
CONTRACT_ID: step:p2:cor-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P and ξ holomorphic periodic real
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: ΔK=Pξ holomorphic, periodic, real on reals
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:frame-basic, bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L719-L719 | P periodic real
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | P holomorphic
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | ξ holomorphic periodic real
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-invert
KIND: step
TITLE: Invertibility of $S$ and of $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
CONTRACT_ID: step:p2:ne-invert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |Ω_0E_sym|≤1/2 on T_{r−2δ}; QP=S
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: S invertible with |S^{-1}|≤2; Q invertible with Q^{-1}=PS^{-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p1:neumann, bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L744-L744 | Ω_0E_sym≤1/2
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L745-L745 | Neumann inversion of I−(small)
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L746-L746 | QP=S
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-domain
KIND: step
TITLE: The corrected torus stays in the domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
CONTRACT_ID: step:p2:ne-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |ΔK(θ)|<β on T_{r−2δ} (smallness assumption and the correction bound); A2
SOURCE_QUANTIFIERS: θ∈T_{r−2δ}
SOURCE_CONCLUSION: K̄(θ)∈B_β(K(θ))⊂𝔅 and the segment [K(θ),K̄(θ)] lies in the ball
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L751-L751 | A2: the β-ball around K lies in 𝔅
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L750-L750 | ΔK≤C_ΔKε/(γ²δ^a)<β
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | admissibility supplies holomorphic K and A2-A4, so part (a) gives holomorphic P for differentiating Delta K=P xi

NODE: step:p2:ne-reduce
KIND: step
TITLE: Reduction by $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
CONTRACT_ID: step:p2:ne-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: frame identities (e),(f); triangular system Λξ−∂_ωξ=η; step ne-expand
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: Q(E+AΔK−∂_ωΔK)=E_lin; hence Ē=PS^{-1}E_lin+Δ²X
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:triangular, step:p2:ne-expand, step:p2:ne-invert
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L760-L760 | identities for Q(AP−∂_ωP) and QP=S
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L763-L763 | Λξ−∂_ωξ=η
EDGE: step:p2:ne-expand | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L761-L761 | expansion of Ē
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L763-L763 | Q^{-1}=PS^{-1}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-lin
KIND: step
TITLE: Estimate of the linear part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
CONTRACT_ID: step:p2:ne-lin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: correction bounds for ξ,∂_ωξ; reducibility and symplecticity bounds of bp:p2:geometry; 2ϰ+3=a+1
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |E_red ξ|≤C_redC_ξε²/(γ²δ^{a+1}), |Ω_0E_sym∂_ωξ|≤C_symC_gε²/(γ²δ^{2ϰ+3}); |E_lin|≤C_linε²/(γ²δ^{a+1})
CONSTANT_SCOPE: C_red,C_sym,C_lin from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | bounds on E_red, E_sym
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | bounds on ξ and ∂_ωξ
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-quad
KIND: step
TITLE: Estimate of the quadratic part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
CONTRACT_ID: step:p2:ne-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma ham (e) with z=K(θ), w=ΔK(θ); segment in 𝔅 (ne-domain)
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |Δ²X|≤M|ΔK|²≤𝔪C_ΔK²ε²/(γ⁴δ^{2a})
CONSTANT_SCOPE: M≤𝔪; C_ΔK from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:correction, step:p2:ne-domain
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L773-L773 | second-order Taylor remainder of X_h
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L774-L774 | ΔK bound
EDGE: step:p2:ne-domain | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L773-L773 | segment [K,K̄] in 𝔅
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-total
KIND: step
TITLE: The quadratic estimate
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
CONTRACT_ID: step:p2:ne-total
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |P|≤2𝔪², |S^{-1}|≤2, E_lin and Δ²X bounds, γ²δ^{a−1}≤Θ²
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |Ē|≤|P||S^{-1}||E_lin|+|Δ²X|≤C_Eε²/(γ⁴δ^{2a})
CONSTANT_SCOPE: C_E=4𝔪²Θ²C_lin+𝔪C_ΔK²
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, step:p2:ne-reduce, step:p2:ne-invert, bp:p2:frame-basic, step:p2:ne-lin, step:p2:ne-quad
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L783-L783 | γ≤Θ
EDGE: step:p2:ne-reduce | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | formula Ē=PS^{-1}E_lin+Δ²X
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L777-L777 | S^{-1}≤2
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L777-L777 | P≤2𝔪²
EDGE: step:p2:ne-lin | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | bound on E_lin
EDGE: step:p2:ne-quad | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | bound on Δ²X
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:perturbation
KIND: lemma
TITLE: Perturbation of the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L798-L820
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L822-L879
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-small
KIND: step
TITLE: Consequences of the smallness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
CONTRACT_ID: step:p2:pt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d<β, 2𝔪C_ΔTd/δ²≤1, δ≤1; definitions of the constants
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: C_ΔT≥max{n,C_G,C_ΔN}; nd/δ≤1/(2𝔪)≤𝔪, 𝔪C_Gd/δ≤1/2, C_ΔNd/δ≤1/(2𝔪)≤𝔪², 𝔪C_ΔTd/δ²≤1/2
CONSTANT_SCOPE: constants of bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L824-L824 | explicit definitions of C_ΔT,C_ΔN,C_B,C_G,C_X
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-domain
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
CONTRACT_ID: step:p2:pt-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |z−K̃(θ)|<β−d; A2-type ball inclusion for K; |ω|≤Θ
SOURCE_QUANTIFIERS: θ∈T_r
SOURCE_CONCLUSION: B_{β−d}(K̃(θ))⊂𝔅; segment [K,K̃]⊂B_β(K); |Ã−A|≤Md≤𝔪d on T_r
CONSTANT_SCOPE: M≤𝔪
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L837-L837 | Lipschitz bound on DX_h along the segment
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-dl
KIND: step
TITLE: Tangent frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
CONTRACT_ID: step:p2:pt-dl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K̃−K holomorphic on T_r with |K̃−K|≤d; |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: |L̃−L|≤nd/δ, |(L̃−L)^T|≤2nd/δ; |L̃|≤2𝔪, |L̃^T|≤4n𝔪
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:cauchy-corollaries, step:p2:pt-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | Cauchy estimate for the derivative on a strip
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | Cauchy corollaries: transposes (p=2n)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L841-L841 | nd/δ≤𝔪 used to get L̃≤2𝔪
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
CONTRACT_ID: step:p2:pt-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: L̃−L bounds, |L̃^T|≤4n𝔪, |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: G̃−G=L̃^T(L̃−L)+(L̃−L)^TL and |G̃−G|≤C_Gd/δ
CONSTANT_SCOPE: C_G=6n²𝔪
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-dl, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L845-L845 | bounds on L̃−L, L̃^T
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L845-L845 | L≤𝔪
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-binv
KIND: step
TITLE: Gram inverse (invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
CONTRACT_ID: step:p2:pt-binv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |B||G̃−G|≤𝔪C_Gd/δ≤1/2 on T_{r−δ}
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: G̃ invertible; |B̃|≤2|B|≤2𝔪; |B̃−B|≤2𝔪²C_Gd/δ=C_Bd/δ (part (c))
CONSTANT_SCOPE: C_B=2𝔪²C_G
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:neumann, step:p2:pt-gram, step:p2:pt-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L850-L850 | Neumann perturbation of the inverse
EDGE: step:p2:pt-gram | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L849-L849 | bound on G̃−G
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L849-L849 | smallness 𝔪C_Gd/δ≤1/2
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-n
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
CONTRACT_ID: step:p2:pt-n
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ñ=Ω_0L̃B̃; bounds on L̃−L, B̃−B, |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: Ñ−N=Ω_0((L̃−L)B̃+L(B̃−B)); |Ñ−N|≤C_ΔNd/δ, |Ñ|≤2𝔪², |Ñ^T|≤4n𝔪², |(Ñ−N)^T|≤2nC_ΔNd/δ
CONSTANT_SCOPE: C_ΔN=2n𝔪+𝔪C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-dl, step:p2:pt-binv, step:p2:pt-small, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L854-L854 | bound on L̃−L
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L854-L854 | bounds on B̃, B̃−B
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L855-L855 | C_ΔNd/δ≤𝔪²
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L855-L855 | N≤𝔪²
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-xn
KIND: step
TITLE: Displacement of the normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
CONTRACT_ID: step:p2:pt-xn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X̃_Ñ−X_N=(Ã−A)Ñ+A(Ñ−N)−∂_ω(Ñ−N); |ω|≤Θ; Ñ−N bound on T_{r−δ}
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |X̃_Ñ−X_N|≤C_ΔXd/δ²
CONSTANT_SCOPE: C_ΔX=2𝔪³+(𝔪+nΘ)C_ΔN
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-domain, step:p2:pt-n, bp:p1:cauchy-corollaries, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-domain | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L860-L860 | Ã−A≤𝔪d
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L860-L860 | bounds on Ñ, Ñ−N
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L862-L862 | Cauchy bound on ∂_ω(Ñ−N) with ω_1≤nΘ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L864-L864 | definition of C_ΔX
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
CONTRACT_ID: step:p2:pt-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T̃−T=Ñ^TΩ_0(X̃_Ñ−X_N)+(Ñ−N)^TΩ_0X_N; |X_N|≤C_X/δ on T_{r−δ} (bp:p2:frame-basic(d))
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |T̃−T|≤C_ΔTd/δ²
CONSTANT_SCOPE: C_ΔT=4n𝔪²C_ΔX+2nC_ΔNC_X
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-basic, step:p2:pt-xn, step:p2:pt-n, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L868-L868 | X_N≤C_X/δ
EDGE: step:p2:pt-xn | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | bound on X̃_Ñ−X_N
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | bounds on Ñ^T,(Ñ−N)^T
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | definition of C_ΔT
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-twist
KIND: step
TITLE: Twist (integrability and invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L878
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L878
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
DEPS: bp:p1:neumann, step:p2:pt-torsion, step:p2:pt-binv, step:p2:pt-small, bp:p1:holomorphic-inverse, bp:p1:holomorphic-regularity, bp:p2:standing, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L878-L878 | Neumann inversion of avg T̃
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L876 | bound T̃−T≤C_ΔTd/δ²
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874 | Ñ holomorphic via det G̃≠0 (part c)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L878-L878 | 𝔪C_ΔTd/δ²≤1/2
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876 | the holomorphic new Gram matrix has nonzero determinant by (c), so its inverse and the new normal frame are holomorphic
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876 | the directional derivative of the new holomorphic normal frame is holomorphic, giving holomorphy and continuity of the new torsion
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L878 | the inherited local package supplies holomorphic h on the open ambient domain when forming the new torsion
EDGE: bp:p1:ext-integral | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L876-L876 | ¦avg(tilde T)-avg(T)¦ <= sup over [0,1]^n of ¦tilde T - T¦ by the norm-of-integral bound; no periodicity needed
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:step
KIND: proposition
TITLE: The KAM step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L884-L904
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L906-L930
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
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L907-L907 | proof step of this result
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L916-L916 | proof step of this result
EDGE: step:p2:st-ball | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L922-L922 | proof step of this result
EDGE: step:p2:st-perturb | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L925-L925 | proof step of this result
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L890-L890 | K̄ is the map defined there
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L886-L886 | hypothesis class of K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L888-L888 | 𝔠_step, C_ΔK
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L885-L885 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-small
KIND: step
TITLE: The smallness conditions used
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L907-L914
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L907-L914
CONTRACT_ID: step:p2:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing and admissibility; 𝔠_step ε/(γ⁴δ^{2a})≤min{1,β}; Θ≥1; ϰ+1≤2a, a+2≤2a
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: C_sym ε/(γδ^{ϰ+1})≤1/2; d≤β/2; 2𝔪C_ΔTd/δ²≤1/2
CONSTANT_SCOPE: Θ,𝔠_step from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L908-L908 | γ≤Θ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L909-L909 | definition of 𝔠_step as a max of the three constants
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-error
KIND: step
TITLE: Correction and new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L920
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L920
CONTRACT_ID: step:p2:st-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 2δ<r; the smallness step; d<β
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: correction and new-error lemmas apply, giving (a), the bound |K̄−K|≤d in (b), and (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:correction, bp:p2:newton-error, step:p2:st-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L917-L917 | size of ΔK, periodicity and realness
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L917-L917 | bound on Ē and K̄(T)⊂𝔅
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L918-L918 | hypotheses of the new-error lemma
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-ball
KIND: step
TITLE: Ball margin
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L923
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L923
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
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L923-L923 | A2: β-ball around K lies in 𝔅
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L923-L923 | the preceding correction bound gives abs(Kbar-K)<=d in the triangle inequality
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L923-L923 | the inherited local ambient-domain package is fixed for admissibility and the A2 ball inclusion
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-perturb
KIND: step
TITLE: Perturbation on the strip $T_{r-2\delta}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L925-L929
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L925-L929
CONTRACT_ID: step:p2:st-perturb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K satisfies the hypotheses of the perturbation lemma on T_{r−2δ}; K̃:=K̄ with |K̄−K|≤d<β, 2𝔪C_ΔTd/δ²≤1; 2δ<r−2δ
SOURCE_QUANTIFIERS: on T_{r−2δ}, then T_{r−3δ}
SOURCE_CONCLUSION: (d), (e) on T_{r−3δ} and (f)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:perturbation, bp:p2:admissible, bp:p2:frequency, step:p2:st-small, step:p2:st-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:perturbation | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | frame/torsion perturbation
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | A2–A5 supply the lemma hypotheses
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L927-L927 | ω≤Θ
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L929-L929 | d<β and 2𝔪C_ΔTd/δ²≤1
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L927-L927 | K̄ holomorphic with K̄−K≤d
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:schedule
KIND: definition
TITLE: Schedule of the iteration
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L935-L947
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:schedule
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, γ>0, e≥0; δ_0 from bp:p2:constants
SOURCE_QUANTIFIERS: for given ρ_∞<ρ, γ, e
SOURCE_CONCLUSION: defines δ_s:=2^{-s}δ_0, r_s:=ρ−8δ_0(1−2^{-s}), ε_0:=e, ε_{s+1}:=C_Eε_s²/(γ⁴δ_s^{2a}), d_s:=C_ΔKε_s/(γ²δ_s^a); with r_0=ρ, r_{s+1}=r_s−4δ_s, ρ_∞≤ρ−8δ_0<r_s, δ_s≤1, 4δ_s<r_s
CONSTANT_SCOPE: δ_0=δ_0(ρ,ρ_∞); C_E,C_ΔK,a from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L937-L937 | δ_0, C_E, C_ΔK, a
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Apost.schedule (defs deltaSeq, rSeq, epsSeq, dSeq)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P2-11-audit-1.md (PASS); kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p2:error-decay
KIND: lemma
TITLE: Decay of the errors
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L952-L957
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L959-L969
CONTRACT_ID: bp:p2:error-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: schedule (bp:p2:schedule); q:=2^{2a}C_E e/(γ⁴δ_0^{2a})≤1
SOURCE_QUANTIFIERS: all s≥0; 0≤j≤2a; 0≤j≤2a−1 for the sums
SOURCE_CONCLUSION: ε_s≤q^{2^s−1}2^{-2as}e≤2^{-2as}e; ε_s/δ_s^j≤2^{-(2a−j)s}e/δ_0^j≤e/δ_0^j for 0≤j≤2a; Σ_sε_s/δ_s^j≤2e/δ_0^j for 0≤j≤2a−1
CONSTANT_SCOPE: a,C_E from bp:p2:constants (n,τ,M,σ_*); δ_0=δ_0(ρ,ρ_∞); none depends on s
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ed-errors, step:p2:ed-sums, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ed-errors | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L960-L960 | proof step of this result
EDGE: step:p2:ed-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L966-L966 | proof step of this result
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L953-L953 | ε_s,δ_s of the schedule
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Apost.error_decay
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P2-11-audit-1.md (PASS); kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p2:ed-errors
KIND: step
TITLE: The errors of the schedule
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L960-L964
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L960-L964
CONTRACT_ID: step:p2:ed-errors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: schedule recursion ε_{s+1}=C_Eε_s²/(γ⁴δ_s^{2a}), δ_s^{-2a}=2^{2as}δ_0^{-2a}; q≤1
SOURCE_QUANTIFIERS: all s≥0
SOURCE_CONCLUSION: ε_{s+1}=Q′2^{2as}ε_s² with Q′=C_E/(γ⁴δ_0^{2a}); ε_s≤q^{2^s−1}2^{-2as}e≤2^{-2as}e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L961-L961 | recursion for ε_s
EDGE: bp:p1:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L963-L963 | quadratic iteration bound linear in y_0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Apost.epsSeq_le_q_pow
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P2-11-audit-1.md (PASS); kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p2:ed-sums
KIND: step
TITLE: Sums
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L966-L968
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L966-L968
CONTRACT_ID: step:p2:ed-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ε_s≤2^{-2as}e; δ_s=2^{-s}δ_0
SOURCE_QUANTIFIERS: 0≤j≤2a−1
SOURCE_CONCLUSION: ε_sδ_s^{-j}≤2^{-(2a−j)s}e/δ_0^j and Σ_sε_s/δ_s^j≤2e/δ_0^j (geometric series ≤2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ed-errors
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ed-errors | blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L967-L967 | bound ε_s≤2^{-2as}e
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Apost.error_decay_sum
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P2-11-audit-1.md (PASS); kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L971-L991
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L993-L1030
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
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L994-L994 | proof step of this result
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1009-L1009 | proof step of this result
EDGE: step:p2:it-base | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1017-L1017 | proof step of this result
EDGE: step:p2:it-step | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1021-L1021 | proof step of this result
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L982-L982 | admissibility of K_s
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L979-L979 | r_s,δ_s,ε_s,d_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L977-L977 | 𝔠_*, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L974-L974 | G,B,T,E of K
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L972-L972 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-sums
KIND: step
TITLE: Summed bounds
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L994-L1007
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L994-L1007
CONTRACT_ID: step:p2:it-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: γ≤Θ; 𝔠_*≥2^{2a}C_E, 𝔠_*≥2𝔠_sum/μ; a≥3; e≤1
SOURCE_QUANTIFIERS: j=a,a+1,a+2≤2a−1
SOURCE_CONCLUSION: Σd_j≤μ/4, Σnd_j/δ_j≤μ/4, ΣC_Bd_j/δ_j≤μ/4, Σ2𝔪²C_ΔTd_j/δ_j²≤μ/2; giving the right-hand inequalities in (ii)–(v)
CONSTANT_SCOPE: 𝔠_sum,𝔠_*,Θ,C_* from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:error-decay, bp:p2:constants, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L995-L995 | γ≤Θ
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L997-L997 | Σ_sε_s/δ_s^j≤2e/δ_0^j
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L996-L996 | 𝔠_*,𝔠_sum,a≥3
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L1001-L1001 | d_j of the schedule
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-stepsmall
KIND: step
TITLE: Step smallness at every stage
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1015
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1015
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
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1010-L1010 | ε_s≤e and ε_s/δ_s^{2a}≤e/δ_0^{2a}
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1010-L1010 | ε_s,δ_s notation
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1012-L1012 | 𝔠_*≥𝔠_step max{1,2/μ}
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1010-L1015 | the inherited local package fixes gamma>0 and the parameters entering the decay and step-smallness comparison
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-base
KIND: step
TITLE: Base case
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1017-L1019
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1017-L1019
CONTRACT_ID: step:p2:it-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_0=K with the hypotheses H2–H4 of the proposition
SOURCE_QUANTIFIERS: s=0
SOURCE_CONCLUSION: K_0 is (ρ,μ,e)-admissible; (ii)–(v) hold with empty sums
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1018-L1018 | A1–A6 for K_0 from the hypotheses with margins σ−μ≤σ
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-step
KIND: step
TITLE: Inductive step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1021-L1029
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1021-L1029
CONTRACT_ID: step:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (i)–(v) at s; summed bounds; smallness at stage s; 4δ_s<r_s, δ_s≤1
SOURCE_QUANTIFIERS: induction step s→s+1
SOURCE_CONCLUSION: K_{s+1}:=K̄_s satisfies (vi) and (i)–(v) at s+1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:step, bp:p2:admissible, step:p2:it-stepsmall, step:p2:it-sums, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1022-L1022 | the KAM step produces K̄_s and its bounds
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1029-L1029 | A1,A3–A5 for K_{s+1}
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1022-L1022 | smallness hypothesis of the step
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1028-L1028 | right-hand inequalities (ii)–(v)
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1023-L1023 | r_{s+1}=r_s−4δ_s
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:limit
KIND: proposition
TITLE: The limit torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1052
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1054-L1090
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
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1055-L1055 | proof step of this result
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1061-L1061 | proof step of this result
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1065-L1065 | proof step of this result
EDGE: step:p2:lim-primary | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1071-L1071 | proof step of this result
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1075-L1075 | proof step of this result
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1080-L1080 | proof step of this result
EDGE: step:p2:lim-invariance | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1085-L1085 | proof step of this result
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1033-L1033 | the sequence K_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1043-L1043 | C_ΔK, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1046-L1046 | E_∞ is the invariance error E of K_∞
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1033-L1033 | Part 2 standing data remain in force; the result uses this local package, restricted to its frequency/parameter components where appropriate
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-k
KIND: step
TITLE: Uniform convergence of $K_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1055-L1059
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1055-L1059
CONTRACT_ID: step:p2:lim-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T_{ρ_∞}⊂T_{r_s}; |K_{s+1}−K_s|≤d_s; Σd_s≤2C_ΔKe/(γ²δ_0^a)
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: (K_s) uniformly Cauchy, converges uniformly to K_∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1056-L1056 | T_{ρ_∞}⊂T_{r_s}
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1057-L1057 | K_{s+1}−K_s≤d_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1058-L1058 | Σd_s finite via the sum bound with j=a
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-dk
KIND: step
TITLE: Uniform convergence of $DK_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1063
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1063
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
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1062-L1062 | (vi): DK_{s+1}−DK_s≤nd_s/δ_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1062-L1062 | finiteness of Σnd_s/δ_s via the sum bound with j=a+1
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1062-L1063 | the limit is in the induction setting with the local Part 2 package, which supplies gamma>0 and the fixed parameters of d_s
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-holo
KIND: step
TITLE: Holomorphy of the limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1065-L1069
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1065-L1069
CONTRACT_ID: step:p2:lim-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on the open T_{ρ_∞}; K_s→K_∞ pointwise; DK_s→Λ_∞ uniformly
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: K_∞ holomorphic with DK_∞=Λ_∞ (this is (a))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:uniform-limits, step:p2:lim-k, step:p2:lim-dk, bp:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1067-L1067 | limit of holomorphic maps with uniformly convergent derivatives
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1066-L1066 | pointwise (uniform) limit K_∞
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1067-L1067 | uniform convergence DK_s→Λ_∞
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1066-L1066 | K_s holomorphic by (i)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-primary
KIND: step
TITLE: Primary and real
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1073
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1073
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
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1073-L1073 | K_s primary and real
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1073-L1073 | primary and real are preserved under uniform limits
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1073 | pointwise convergence to K_infty supplies the limit premise for preservation of primarity and realness
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1073-L1073 | uniform derivative convergence supplies the remaining hypothesis of the cited uniform-limits lemma
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1073 | the local Part 2 package is inherited by the induction setting whose primary real tori are restricted here
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1078
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1078
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
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1076-L1076 | K_s−K≤D_s (ii)
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1076-L1076 | Σd_s≤2Θ²C_ΔKe/(γ⁴δ_0^{2a})≤μ/4
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1076-L1078 | uniform convergence justifies passage to the limit and L1057 supplies sum d_s<=2 C_DeltaK e/(gamma^2 delta_0^a)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1076-L1078 | the local Part 2 package fixes the positive gamma and constants in the summed displacement bounds
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-margins
KIND: step
TITLE: Margins
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1080-L1083
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1080-L1083
CONTRACT_ID: step:p2:lim-margins
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |K_∞−K|≤μ/4; hypothesis H2 B_μ(K(θ))⊂𝔅; |DK_s|≤σ_K−μ/2
SOURCE_QUANTIFIERS: θ∈T_{ρ_∞}
SOURCE_CONCLUSION: B_{μ/2}(K_∞(θ))⊂𝔅 and |DK_∞(θ)|≤σ_K−μ/2 (this is (d))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:lim-close, bp:p2:iteration, step:p2:lim-holo
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1081-L1081 | K_∞−K≤μ/4
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1083-L1083 | DK_s≤σ_K−μ/2
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1082-L1082 | DK_∞=lim DK_s
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-invariance
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1089
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1089
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
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088 | E_s≤ε_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1089-L1089 | ε_s≤2^{-2as}e→0
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086 | X_h holomorphic hence continuous
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086 | K_∞(θ)∈𝔅 by the margin ball
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087 | DK_s→DK_∞ pointwise
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1087 | K_s(theta) tends to K_infty(theta), allowing continuity of X_h to pass to the limit
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1089 | the local package supplies the open ambient domain and holomorphic X_h input used for continuity at the limiting point
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:g1
KIND: theorem
TITLE: G1 with explicit constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1095-L1108
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1110-L1143
CONTRACT_ID: bp:p2:g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥2, τ≥n−1, 0<ρ_∞<ρ, M,σ_K,σ_B,σ_T,μ,γ̄>0; C_1:=ρ^{4τ}max{γ̄⁴,𝔠_*δ_0^{-2a}}, C_2:=2C_ΔKρ^{2τ}δ_0^{-a}; hypotheses of bp:p0:g1 on 𝔅,h,K,ω,γ,e (including γ≤γ̄)
SOURCE_QUANTIFIERS: for the given n,τ,ρ,ρ_∞,M,σ_*,μ,γ̄; then for all 𝔅,h,K,ω,γ,e satisfying the hypotheses of bp:p0:g1
SOURCE_CONCLUSION: C_1,C_2>0 and the conclusion (seven clauses) of bp:p0:g1 holds with these constants
CONSTANT_SCOPE: C_1 depends only on (n,τ,ρ,ρ_∞,M,σ_K,σ_B,σ_T,μ,γ̄); C_2 only on (n,τ,ρ,ρ_∞,M,σ_K,σ_B,σ_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:g1-constants, step:p2:g1-standing, step:p2:g1-e, step:p2:g1-apply, step:p2:g1-check, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1111-L1111 | proof step of this result
EDGE: step:p2:g1-standing | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1116-L1116 | proof step of this result
EDGE: step:p2:g1-e | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1122-L1122 | proof step of this result
EDGE: step:p2:g1-apply | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1127-L1127 | proof step of this result
EDGE: step:p2:g1-check | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1132-L1132 | proof step of this result
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1097-L1097 | 𝔠_*, δ_0, C_ΔK, a
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-constants
KIND: step
TITLE: The constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1111-L1114
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1111-L1114
CONTRACT_ID: step:p2:g1-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: constants of bp:p2:constants finite and ≥1, δ_0∈(0,1], ρ>0
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: C_1≥ρ^{4τ}γ̄⁴>0, C_2≥2ρ^{2τ}>0; dependence of C_1,C_2 read off from the definitions (c(n,τ) enters through c_R)
CONSTANT_SCOPE: C_1,C_2 as stated in the theorem
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1112-L1112 | finiteness, ≥1, and dependence of the constants
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1114-L1114 | c(n,τ) enters through c_R
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-standing
KIND: step
TITLE: The standing assumptions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1116-L1120
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1116-L1120
CONTRACT_ID: step:p2:g1-standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses H1 and H5 of bp:p0:g1
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: H1 and H5 are the standing data of Part 2; the frozen norms are the operator norms of Part 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p2:frozen-agreement
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1119-L1119 | H1 and H5 coincide with the standing package
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1120-L1120 | frozen norms and objects agree with Part 2 conventions
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-e
KIND: step
TITLE: Size of the error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1122-L1125
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1122-L1125
CONTRACT_ID: step:p2:g1-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T_ρ≠∅; |E|≤e on T_ρ; C_1e/(γ⁴ρ^{4τ})<1; γ≤γ̄
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: 0≤|E(0)|≤e; e<γ⁴/γ̄⁴≤1; 𝔠_*e/(γ⁴δ_0^{2a})<1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:g1-constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1123-L1123 | C_1≥ρ^{4τ}γ̄⁴ and C_1≥ρ^{4τ}𝔠_*δ_0^{-2a}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-apply
KIND: step
TITLE: Iteration and limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1127-L1130
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1127-L1130
CONTRACT_ID: step:p2:g1-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H2–H4 of bp:p0:g1; e≤1 and 𝔠_*e/(γ⁴δ_0^{2a})≤1; standing data
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: H2–H4 are the hypotheses of bp:p2:iteration; iteration and limit propositions apply and produce K_∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:limit, step:p2:g1-e, step:p2:g1-standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1128-L1128 | the induction produces K_s
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1130-L1130 | the limit torus K_∞
EDGE: step:p2:g1-e | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1129-L1129 | e≤1 and 𝔠_*e/(γ⁴δ_0^{2a})<1
EDGE: step:p2:g1-standing | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1128-L1128 | standing package supplied (H1, H5)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-check
KIND: step
TITLE: Checking the conclusion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1132-L1142
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1132-L1142
CONTRACT_ID: step:p2:g1-check
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_∞ with properties (a)–(e) of bp:p2:limit; frozen agreement
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: the seven clauses of the conclusion of bp:p0:g1 with |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)=C_2e/(γ²ρ^{2τ})
CONSTANT_SCOPE: C_2=2C_ΔKρ^{2τ}δ_0^{-a}
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:limit, bp:p2:frozen-agreement, step:p2:g1-apply, step:p2:g1-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1133-L1133 | properties (a)–(e) of K_∞
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1142-L1142 | derivative, invariance error and ball agree with the frozen ones
EDGE: step:p2:g1-apply | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1133-L1133 | K_∞ produced by the previous step
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1138-L1138 | C_2=2C_ΔKρ^{2τ}δ_0^{-a}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
