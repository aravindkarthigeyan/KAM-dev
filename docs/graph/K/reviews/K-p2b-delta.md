# K-p2b: delta topology review

Reviewer: sol-review-r1. Verdict: **FAIL**.

Every r1-assigned record was checked against the pinned blueprint source and the first review by sol-review-r3. I did not write the replacements under review. Original topology repairs and the resulting complete records were checked separately.

The edge additions/removals generally resolve the first-round topology findings. Remaining FAILs below concern a missing direct use or source hypotheses that substitute proved facts for original source premises. REVIEW-BRIEF places proof ingredients in DEPS. Replacement fields retain the inherited source data without adding a mathematical premise.

Source and cross-edge context re-read: Part 2 L56-L108, L122-L205, L215-L258, L270-L345, L382-L406, L616-L785, L798-L1089, L1180-L1207; Part 1 L165-L191, L215-L224, L352-L411. Each row lists its statement/proof and every consumer EDGE span.

| Record | Verdict | Source spans re-read | Finding / first-round repair check |
|---|---|---|---|
| `bp:p2:triangular` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L616-L644; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L646-L668; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L647-L647; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L652-L652; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L657-L657; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L662-L662; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L665-L665; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L628-L628; blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L617-L617 | Explicit standing-package edge resolves the original finding. The frequency/parameter component use is stated; both cohomological applications have the required premises supplied in the proof. |
| `bp:p2:correction` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L670-L682; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L684-L721; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L685-L685; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L691-L691; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L696-L696; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L704-L704; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L711-L711; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L718-L718; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L671-L671; blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L675-L675 | Standing-package edge added. Admissibility includes epsilon<=1; L685-L689 supplies the triangular-system premises. Source bounds and constant dependence match. |
| `bp:p2:newton-error` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L723-L740; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L742-L785; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L743-L743; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L749-L749; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L754-L754; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L759-L759; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L765-L765; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L772-L772; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L776-L776; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L724-L724; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L727-L727; blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L730-L730 | Standing-package edge added; smallness premises, error identity and quadratic estimate match. |
| `step:p2:ne-expand` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757; blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756; blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | The correction edge resolves the original holomorphy finding for Delta K and xi. It does not conclude holomorphy of P, needed by the product rule at L757; frame-basic(a) supplies this directly under admissibility. Also Kbar holomorphic is established at L755, not an additional source premise. |
| `bp:p2:perturbation` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L798-L820; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L822-L878; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L823-L823; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L834-L834; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L839-L839; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L844-L844; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L848-L848; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L853-L853; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L859-L859; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L866-L866; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L873-L873; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L804-L804; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L801-L801; blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L799-L799 | Standing-package edge added. Nonperiodic hypotheses and all differences/constant scopes are preserved; the average application gap remains explicit downstream. |
| `step:p2:pt-twist` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L876; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L875 | The new gap and regularity edges resolve the original topology findings. SOURCE_HYPOTHESES still assumes the average-difference estimate proved at L875-L876. That estimate is the proof ingredient exposed by the new gap node, not an original perturbation premise. |
| `bp:p2:step` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L883-L903; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L905-L929; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L906-L906; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L915-L915; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L921-L921; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L924-L924; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L889-L889; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L885-L885; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L887-L887; blueprint/parts/p2-aposteriori.tex#bp:p2:step@L884-L884 | Standing-package edge added. Strip losses and smallness are retained; L906-L928 discharges the applied lemmas premises. |
| `step:p2:st-ball` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922; blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | The displacement edge resolves the original missing use. The source fields still replace the KAM-step data, including admissibility/A2, by a derived displacement bound. Restore inherited source data; keep the test-point condition in the quantifiers. |
| `bp:p2:iteration` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L970-L990; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L992-L1029; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L993-L993; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1008-L1008; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1016-L1016; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1020-L1020; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L981-L981; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L978-L978; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L976-L976; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L973-L973; blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L971-L971 | Standing-package edge added. Six induction conclusions, margins and constant scope match; the actual step application is at L1021. |
| `step:p2:it-stepsmall` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014; blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009; blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011 | The forbidden hypothesis-check edge has been removed correctly. SOURCE_HYPOTHESES still lists proved decay and constant comparisons instead of the induction source data. The conditional induction premise at L1012 is preserved explicitly. |
| `bp:p2:limit` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1031-L1051; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1053-L1089; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1054-L1054; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1060-L1060; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1064-L1064; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1070-L1070; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1074-L1074; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1079-L1079; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1084-L1084; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1032; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1042-L1042; blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1045-L1045 | Standing-package edge added. Limit definition, off-strip extension and all five conclusions match. |
| `step:p2:lim-dk` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062; blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | Removing the lim-k argument-pattern dependency is correct. Increment estimates and summability in SOURCE_HYPOTHESES are proved inputs from iteration/error-decay, not original source premises. Keep the proved ingredients in the existing DEPS. |
| `step:p2:lim-primary` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072; blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072; blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072 | The added convergence edges resolve the original uniform-limits applicability finding. SOURCE_HYPOTHESES still substitutes already-proved primarity and realness of K_s for the original iteration data. Keep the proved ingredients in the existing DEPS. |
| `step:p2:lim-close` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077; blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075; blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077 | The lim-k addition pays convergence and the sharper linear-in-e sum bound. SOURCE_HYPOTHESES still assumes the inequalities used to prove the conclusion instead of retaining the inherited limit setting. Keep the proved ingredients in the existing DEPS. |
| `step:p2:lim-invariance` | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088; blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087; blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088; blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085; blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086; blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1086 | The added lim-k edge correctly supplies convergence for X_h composition. SOURCE_HYPOTHESES still substitutes earlier margin, continuity and decay conclusions for the inherited iteration data. Keep the proved ingredients in the existing DEPS. |
| `bp:p2:perturbation#average-applicability` | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875; blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L876-L876 | PASS as exposed SOURCE_GAP. Averages(a) requires periodicity at L160, absent in perturbation. No periodicity premise was added and E6 was not silently substituted. |
| `bp:p2:V1` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V1@L1180-L1182 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V2` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V2@L1183-L1186 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V3` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V3@L1187-L1189 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V4` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V4@L1190-L1194 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V5` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V5@L1195-L1197 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V6` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V6@L1198-L1200 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V7` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V7@L1201-L1203 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V8` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V8@L1204-L1204 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `bp:p2:V9` | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:V9@L1205-L1207 | Missing inventory item is now present. KIND definition follows the writer adjudication; EXCLUDED is justified for this administrative deviation subitem. |
| `p2:perturbation-average-applicability` | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L876 | Missing application inventory item is present at the correct use site and maps to the explicit SOURCE_GAP. |

Assignment accounting: 16 nodes and 10 coverage items reviewed; 8 node FAILs. All assigned coverage items PASS.

Conditional premises: local standing-package edges are explicit; admissibility supplies torus conditions. The uniform-limits application now has holomorphic K_s, pointwise convergence and uniform derivative convergence. Part 3 L74-L77 supplies Part 2 data, with S3 supplying torus hypotheses. The perturbation-average application remains an exposed gap rather than a certified use.

Reachability exclusions and average-derivative alternative routes belong to other delta assignments. None of the r1 coverage items excludes mixed-difference, cauchy-strip-2 or normalized-unique. V1-V9 were checked under the specified KIND adjudication.

Complete replacement blocks follow. Only the named graph records are replaced; no source theorem is changed. Existing metadata and planning fields are retained. These are proposals for orchestrator adjudication, not packet edits.

## step:p2:ne-expand

The correction edge resolves the original holomorphy finding for Delta K and xi. It does not conclude holomorphy of P, needed by the product rule at L757; frame-basic(a) supplies this directly under admissibility. Also Kbar holomorphic is established at L755, not an additional source premise.

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
DEPS: bp:p2:objects, bp:p2:correction, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756 | definitions of E and A
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | K and Delta K are holomorphic on the working strip, allowing differentiation of Kbar=K+Delta K and Delta K=P xi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L755-L757 | admissibility supplies holomorphic K and A2-A4, so part (a) gives holomorphic P for differentiating Delta K=P xi
```

## step:p2:pt-twist

The new gap and regularity edges resolve the original topology findings. SOURCE_HYPOTHESES still assumes the average-difference estimate proved at L875-L876. That estimate is the proof ingredient exposed by the new gap node, not an original perturbation premise.

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
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:st-ball

The displacement edge resolves the original missing use. The source fields still replace the KAM-step data, including admissibility/A2, by a derived displacement bound. Restore inherited source data; keep the test-point condition in the quantifiers.

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
DEPS: bp:p2:admissible, step:p2:st-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | A2: β-ball around K lies in 𝔅
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | the preceding correction bound gives abs(Kbar-K)<=d in the triangle inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:it-stepsmall

The forbidden hypothesis-check edge has been removed correctly. SOURCE_HYPOTHESES still lists proved decay and constant comparisons instead of the induction source data. The conditional induction premise at L1012 is preserved explicitly.

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
DEPS: bp:p2:error-decay, bp:p2:schedule, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s≤e and ε_s/δ_s^{2a}≤e/δ_0^{2a}
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s,δ_s notation
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011 | 𝔠_*≥𝔠_step max{1,2/μ}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:lim-dk

Removing the lim-k argument-pattern dependency is correct. Increment estimates and summability in SOURCE_HYPOTHESES are proved inputs from iteration/error-decay, not original source premises. Keep the proved ingredients in the existing DEPS.

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
DEPS: bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | (vi): DK_{s+1}−DK_s≤nd_s/δ_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | finiteness of Σnd_s/δ_s via the sum bound with j=a+1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:lim-primary

The added convergence edges resolve the original uniform-limits applicability finding. SOURCE_HYPOTHESES still substitutes already-proved primarity and realness of K_s for the original iteration data. Keep the proved ingredients in the existing DEPS.

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
DEPS: bp:p2:iteration, bp:p1:uniform-limits, step:p2:lim-k, step:p2:lim-dk
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | K_s primary and real
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | primary and real are preserved under uniform limits
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1071-L1072 | pointwise convergence to K_infty supplies the limit premise for preservation of primarity and realness
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | uniform derivative convergence supplies the remaining hypothesis of the cited uniform-limits lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:lim-close

The lim-k addition pays convergence and the sharper linear-in-e sum bound. SOURCE_HYPOTHESES still assumes the inequalities used to prove the conclusion instead of retaining the inherited limit setting. Keep the proved ingredients in the existing DEPS.

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
DEPS: bp:p2:iteration, step:p2:it-sums, step:p2:lim-k
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | K_s−K≤D_s (ii)
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | Σd_s≤2Θ²C_ΔKe/(γ⁴δ_0^{2a})≤μ/4
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1077 | uniform convergence justifies passage to the limit and L1057 supplies sum d_s<=2 C_DeltaK e/(gamma^2 delta_0^a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p2:lim-invariance

The added lim-k edge correctly supplies convergence for X_h composition. SOURCE_HYPOTHESES still substitutes earlier margin, continuity and decay conclusions for the inherited iteration data. Keep the proved ingredients in the existing DEPS.

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
EXTRACTOR: sonnet-extract-K-p2b+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Checks: all five pinned corpus hashes PASS; one row per assigned record; every FAIL has a complete replacement block; nonanchor FROZEN_* and dependency/EDGE separators checked. No Lean, providers, builds, source lint, packet edits or state-changing git commands were used.

Uncertainties/errata: this is source topology review, not Lean proof-status validation. The existing average-applicability gap is preserved. No new pinned-paper erratum was identified, and no mathematical source or frozen declaration was changed.
