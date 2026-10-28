# P-p3 round-2 delta topology review

Reviewer: `sol-delta2-P-c`. Marker: `delta2-P-c`. Date: 2026-10-28.

**Verdict: FAIL — 8 PASS, 2 FAIL.** Reviewed only the **10 proposed nodes** rewritten by `sol-delta-P-e`; there are **0 proposed coverage records**. The preceding delta's ten requested changes were applied correctly. Two of those records still omit direct application inputs. The fixes below add only the missing DEPS entries and their EDGE lines; all other fields remain verbatim.

This reviewer is distinct from the extractor `sonnet-extract-P-p3`, original reviewer `sol-review-P-e`, and delta author `sol-delta-P-e`. Applied DELTA-BRIEF, REVIEW-BRIEF and SPEC, including the Convergence rule. The 86 other nodes and all coverage records were not reopened. Prerequisite records were read as context only. This is a source-topology review, not mathematical or Lean proof closure.

## P-p3: proposed records

`3a` = `blueprint-P/parts/p3a-two-scale-iteration.tex`; `3b` = `blueprint-P/parts/p3b-two-scale-limit.tex`; `K p1` = `blueprint/parts/p1-analysis.tex`. Spans include every current EDGE use-site and the prerequisite statements needed to check it.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p3:sum-radii | PASS | 3b L14–15; 3a L42–55, L236–240 | Unused convention edge removed; constants and seq supply exactly the two radius/width recurrences. |
| stepP:p3:la-wp | PASS | 3b L20–32; 3a L236–253 | Unused constants/convention edges removed; iterative supplies the maps and intertwining identity, and seq fixes D_0. |
| stepP:p3:pl-lip | PASS | 3b L3–4, L43–59; 3a L138–145, L236–253 | Removed pl-dom use was not needed: the complex neighborhood follows from calD_k, iterative and seq. Sup bound, scaling and q=12c remain linked. |
| stepP:p3:lp-cauchy | PASS | 3b L20–51, L77–90 | Removed kam-bounds use is transitive through psi-lip(ii). Domains, displacement, summed Lipschitz bounds and composition rule remain supplied. |
| stepP:p3:lp-per | PASS | 3b L77–92; 3a L242–253 | Iterative supplies periodicity and lp-cauchy supplies the limit bound. Numerical recurrence seq is not a further input. |
| stepP:p3:lg-j | PASS | 3b L20–29, L99–100, L114–121; 3a L242–253 | The added limit-actions(ii) edge supplies I_* in the finite map domain. Symplecticity, action-first form and tori data remain directly linked. |
| stepP:p3:lg-lim | PASS | 3b L64–85, L93–100, L114–123 | Unused seq edge removed. The explicit derivative-convergence and finite Lagrangian inputs agree with L123. |
| stepP:p3:inv-conj | FAIL | 3b L20–29, L99–100, L126–134; 3a L242–253 | P3D2-01: add direct limit-actions(ii) input for evaluating Phi_j and D Phi_j at I_*. Prior seq removal is correct; preserve SOURCE_GAP. |
| stepP:p3:inv-lim | FAIL | 3b L77–85, L99–112, L126–143; K p1 L75–78, L474–479 | P3D2-02: add direct estimates location input used to put the nearby segment inside D_{rho/2}. Prior inv-conj reminder removal is correct; preserve SOURCE_GAP. |
| stepP:p3:mt-pre | PASS | 3b L43, L148–159, L172–182; 3a L42–55, L236–240 | mt-ext supplies the extension identity and inverse estimate; the added scaling-data edge supplies the conversion to action/angle distances. |

No coverage verdict rows are required: no `COVERAGE_STATUS: PROPOSED` records remain. Previously reviewed coverage dispositions are outside this round.

## P-p3: findings

**P3D2-01 — missing finite-map evaluation domain in inv-conj.** At 3a L243, iterative gives the analytic symplectic map Phi_j on W_j=(D_j)_{rho_j} × T_{sbar+s_j}. At 3b L134, inv-conj evaluates D Phi_j at (I_*,theta_t). The tori data L99–100 supplies I_* in D_*, but it does not supply D_* contained in the finite-stage domains. That inclusion is precisely limit-actions(ii), L24 (proved at L36). Add its direct edge at L134, as the preceding delta correctly did for the identical finite-map evaluation in lg-j. Access through tori#data is transitive and does not record this application premise. This domain input is separate from the already exposed general-conjugation SOURCE_GAP, which remains untouched. The unused seq edge stays removed.

**P3D2-02 — missing torus-location input in inv-lim.** The L143 argument explicitly uses “The action of gamma(t) lies in Re(D_r)” before placing the segment joining gamma_j(t) and gamma(t) in D_{rho/2}. This is the location conclusion of estimates, L103, proved at L111. Limit-phi(i) only bounds Phi(I_*,theta) relative to I_*; it does not place I_* relative to D. The tori data defines I_* but states no displacement estimate. The existing inv-err output concerns derivative errors, not location of gamma. Add the direct estimates edge at L143. Its supplier combines the limit-action displacement with the limit-map displacement, giving distance less than 22 Ehat rhohat < r. Do not restore the trailing inv-conj reminder edge; the real C^1 limit SOURCE_GAP remains unchanged.

Both are missing direct dependencies on already represented results. Neither calls for new mathematics, an additional premise, or a rewritten source conclusion. Neither new edge creates a cycle.

## P-p3: complete replacement blocks

### P-p3 — stepP:p3:inv-conj (P3D2-01)

Changed fields: DEPS; one added EDGE. All other fields, including NOTE, are unchanged.

```text
NODE: stepP:p3:inv-conj
KIND: step
TITLE: Symplectic conjugation
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
CONTRACT_ID: stepP:p3:inv-conj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, theta, t
SOURCE_CONCLUSION: X_H o Phi_j=D Phi_j X_{H_j} and gamma_j(t)-X_H(gamma_j(t)) difference: gamma_j1(t)-X_H(gamma_j(t))=D Phi_j(I_*,theta_t)(d_theta f_j, omega-omega_j(I_*)-d_I f_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:conv#data, bpP:p3:tori#data, bpP:p3:limit-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Phi_j symplectic with H_j=H o Phi_j=h_j+f_j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L134-L134 | Limit-actions(ii) puts I_* in (D_j)_{rho_j/2}, hence (I_*,theta_t) in W_j, where Phi_j and D Phi_j and the conjugation identity are defined.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-delta-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L133 applies general symplectic conjugation to the composition Phi_j. N symplectic concludes matrix identities for a single small Hamiltonian flow X^t; N canonical(b) has the same single-flow premises. Neither supplies this application with Phi_j substituted, and the source gives no finite-composition reduction to those premises. Iterative supplies symplecticity of Phi_j and H_j=H o Phi_j. The remaining general conjugation/chain-rule bridge, in the action-first convention, is asserted here; no new external or proof is introduced.
```

### P-p3 — stepP:p3:inv-lim (P3D2-02)

Changed fields: DEPS; one added EDGE. All other fields, including NOTE, are unchanged.

```text
NODE: stepP:p3:inv-lim
KIND: step
TITLE: Passing to the limit
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
CONTRACT_ID: stepP:p3:inv-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j large
SOURCE_CONCLUSION: the real segment [gamma_j(t),gamma(t)] lies in D_{rho/2} x T_{sbar/2} where norm D X_H<=B_0=M+C(E,rho,sbar); ¦X_H(gamma_j)-X_H(gamma)¦<=B_0 delta_j->0 uniformly; a uniform limit gamma of C^1 functions with gamma_j1->X_H(gamma) uniformly satisfies gamma1=X_H(gamma), i.e. the claim
CONSTANT_SCOPE: B_0 depends on (M,E,rho,sbar)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, stepP:p3:inv-err, K:bp:p1:cauchy-open, bpP:p3:limitmap#data, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data, K:bp:p1:ext-mvt, bpP:p3:estimates
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Phi_j->Phi uniformly (delta_j->0)
EDGE: stepP:p3:inv-err | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | sup_t¦gamma_j1-X_H(gamma_j)¦->0
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Cauchy estimates for DX_H on D_{rho/2} x T_{sbar/2}
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | scaled versus unscaled distances
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Ehat<2^{-13} from (3.4)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | L143 bounds X_H(gamma_j)-X_H(gamma) on the nearby real segment.
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | The location conclusion gives the action of gamma(t) in Re(D_r); with r<=rho/4 this supplies the base point for the nearby-segment inclusion in D_{rho/2}.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-delta-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L143 invokes the real C^1 uniform-derivative-limit theorem for curves gamma_j on R. No admitted external/imported statement here supplies that theorem. K uniform-limits is holomorphic on an open complex set, with uniform complex derivative convergence, so it is not this real-curve contract. The local derivative/MVT estimate and convergence inputs are recorded; the final passage to a real C^1 limit remains an explicitly asserted bridge. The trailing N citations merely recall inv-conj.
```

## Validation and scope

- Snapshot HEAD: `f56dab7c4b2a96d2fd66dd13f585d7e144927ae9`.
- Input packet SHA256: nodes `f3f9214d77242c77afae34feca71b368a1b4c24cbde0342b8d1877a6e385c2bc`; coverage `3485d60be767e091956ba4acb004f24cae7c2898e21aa05c05d757dc3c5ad7e0`.
- Compared all ten applied blocks against `P-p3-delta.md`: identical except the writer's EXTRACTOR attribution to `sol-delta-P-e`.
- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p3 --structural`: `96 nodes, 426 edges, 131 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. Structural validity does not detect the missing mathematical-use edges above.
- `sha256sum -c docs/graph/P/CORPUS.sha256` and `sha256sum -c docs/graph/P/IMPORTS.sha256`: every listed source OK.
- Read-only traversal of packet DEPS/ROUTES: all ten proposed nodes are reachable from the declared roots; neither added supplier reaches its consumer, so neither replacement creates a cycle.
- Checked exactly one verdict row per proposed node, one EDGE per dependency, no raw separator bars in rationales, and replacement identity outside DEPS/EDGE. No proposed record contains an alternative route or the mechanically supplied “inherits ... no new binders” quantifier text.

No frozen anchor is among these records. The imported Cauchy and mean-value statements were read at the P-imports locators (K p1 L474–479 and L75–78). No Lean implementation, provider, proof body or proof-status evidence was read, and no Lean command was run. Only this report was written.

## Suspected source defects

No new pinned-source erratum or blueprint defect is asserted here. The two existing SOURCE_GAP notes in inv-conj and inv-lim remain exposed and are not treated as proof closure; the two findings above concern missing graph edges only.
