# P4-7 independent audit 1

Overall verdict: **PASS WITH NOTES**.

The exact Appendix A theorem is proved, with the blueprint constants, carriers, strip losses and all six conclusion clauses intact. No blocking or major finding. The note concerns the handoff's step-to-declaration mapping, not a mathematical gap. This is acceptance of the conditional Part 4 package; it is not a HEAD provider or root-closure audit.

Audited 2026-10-27 in `/root/code/KAM-w-p4-7`, branch `k/p4-7`, HEAD `42c70ca303d7aef140201b239e480d162a8fa0b0`; main resolved to `bb245db6d14fb08e0f04650885d73d8a10b325e2`. Package implementation commit: `4578ce7`. Compared `git diff main...HEAD`, and inspected the working-tree sources. Initial status had only untracked `docs/campaign/audits/P4-7-handoff.md`; this auditor changed only this report and a subsequently deleted scratch probe.

Read: AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, P4-7, P23-COMMON and PROVER-COMMON briefs, the handoff, Part 4 design (especially decisions, interfaces, package mapping and Appendix A §11), DESIGN-P4-audit-1, graph nodes at DEPGRAPH.md:11547–11757, and their actual blueprint statements/proofs. Applied the lean-statement-audit skill's binder/definition methodology to this non-frozen infrastructure package. No external PDF was needed or audited.

## Node inventory

All declarations below are in namespace `KAM.Head`, file `KAM/Head/LipError.lean`. Blueprint locators are in `blueprint/parts/p4-measure.tex`.

| Node | Actual Lean coverage | Verdict | Reason |
|---|---|---|---|
| bp:p4:lip-error (820–829) | `lip_error`, 405–472 | PASS | Exact Appendix A signature; holomorphy and primarity on s/8, reality, global displacement identity, eta0 bound and A1 epsilon/gamma² error bound on 3s/32. |
| step:p4:le-basic (832–836) | `lip_error`, 423–467; `invarianceError_shift_le`, 300–321 | PASS WITH NOTES | Inverse-frequency and near-pair bound produce action shift ≤ deltaStar/4; normalize and smallness produce displacement ≤ deltaStar/2. Holomorphy/primarity/reality and displacement identity proved in lip_error. The handoff's helper-only mapping is incomplete. |
| step:p4:le-split (838–851) | `invarianceError_shift_eq`, 190–272; `hamiltonianVectorField_hbold`, 115–119; `lipError_split`, 179–184 | PASS | Uses actual invariance, real/complex gradient agreement and derivative of the constant shift. Correct subtraction of DW times Delta omega; no quadratic pure-frequency error survives. Domain premises are discharged at 322. |
| step:p4:le-h (853–858) | `gradC_mixed_difference`, 100–110; `norm_iteratedFDeriv_two_gradC_le`, 86–94; application 324–360 | PASS | Full parallelogram lies in actionNbhd B (r0/2); adapter receives openness, holomorphy and D²-gradient bound at every point. Norm of gradJ ≤ 1 preserves H3. |
| step:p4:le-f (860–865) | `norm_hamiltonianVectorField_f_shift_le`, 125–144; application 345, 361, 368–374 | PASS | Both endpoints are strictly inside the same deltaStar ball. Convexity gives the whole segment; ball inclusion supplies domainD. Derivative bound is F2 epsilon, without an extra dimension factor. |
| step:p4:le-transport (867–869) | `norm_fderiv_sub_unperturbed_le`, 150–162; application 346, 362–367 | PASS | Cauchy loss s/32 from s/8 gives 3s/32 and n(s/32)⁻¹ eta. Applied operator norm to the actual complexified frequency difference. |
| step:p4:le-sum (871–873) | `invarianceError_shift_le`, 368–374; `lipError_const_le`, 380–402; `lip_error`, 468–472 | PASS | Triangle inequality plus inverse-frequency Lipschitz bound; epsilon ≥ 0 and 0 < gamma ≤ 1 give epsilon ≤ epsilon/gamma². A1 unfolds to exactly Lplus(H3 A0 + F2) + 32n A0/s. |

The split and mixed-difference helpers deliberately generalize to an abstract torus. Their explicit invariance, domain and closeness premises are internal conditional-helper inputs, not replacement assumptions of `lip_error`: normalize, inverse_freq, smallness and the proved ball/parallelogram inclusions supply all of them at the call sites. No blueprint proof step is assumed on the public node theorem.

## Binder and constant fidelity

The theorem signature at LipError.lean:405–420 is byte-identical (before the proof delimiter) to the design at PART4-LEAN-DESIGN.md:1273–1288. Its logical order is Data, Pert, GValid, SA, frequencies, memberships, near-pair bound, then the conjunction of conclusions. Below is the expanded input inventory; source references to “standing” mean blueprint:138–147, “parameters” means 405–436, and SA means 440–444.

| Binder or expanded field | Bin | Source / meaning |
|---|---|---|
| n | TYPING | Dimension carrier. |
| tau | TYPING | Real Diophantine exponent parameter. |
| s0 | TYPING | Real strip-width parameter. |
| r0 | TYPING | Real action-radius parameter. |
| Lh | TYPING | Real nondegeneracy witness, fixed data. |
| B | TYPING | Set of Fin n → real. |
| h | TYPING | Complex action Hamiltonian. |
| f | TYPING | Complex product Hamiltonian perturbation. |
| epsilon | TYPING | Real size parameter. |
| gamma | TYPING | Real Diophantine parameter. |
| gc | TYPING | Six real G constants, explicit binding-design interface. |
| omega | TYPING | Fin n → real. |
| omega' | TYPING | Fin n → real. |
| hD.two_le | STANDING | n ≥ 2, standing data. |
| hD.tau_gt | STANDING | tau > n−1, standing data. |
| hD.s0_pos | STANDING | Positive initial strip width. |
| hD.r0_pos | STANDING | Positive action radius. |
| hD.isOpen | STANDING | B open. |
| hD.isBounded | STANDING | B bounded. |
| hD.holo | STANDING | h holomorphic on actionNbhd B r0. |
| hD.real | STANDING | h real on the real slice of that neighbourhood. |
| hD.nondeg | STANDING | For all I,J in closure B, norm(I−J) ≤ Lh norm(freq I−freq J). |
| hP.holo | STANDING | f holomorphic on the original product domain. |
| hP.periodic | STANDING | Every integer angle shift preserves f on that domain. |
| hP.real | STANDING | f real on its real slice. |
| hP.bound | STANDING | Pointwise norm f ≤ epsilon on the original domain. |
| hgc.C11_pos | RULED | First G1 smallness constant positive. |
| hgc.C21_pos | RULED | First G1 closeness constant positive. |
| hgc.C12_pos | RULED | Second G1 smallness constant positive. |
| hgc.C22_pos | RULED | Second G1 closeness constant positive. |
| hgc.cG_pos | RULED | G2 uniqueness constant positive. |
| hgc.g1a | RULED | Entire G1Body at (s/4,s/8), bounds M,sigmaK,sigmaB,sigmaT,mu, gammaBar=1. |
| hgc.g1b | RULED | Entire G1Body at (3s/32,s/16), same bounds. |
| hgc.g2 | RULED | Entire G2Body at s/16 and those bounds. |
| hgc.g3 | RULED | All positive alpha: non-Diophantine volume in frequencyMap h '' B ≤ ofReal(C3 alpha). |
| hSA.gamma_pos | STANDING | 0 < gamma, SA. |
| hSA.gamma_le | STANDING | gamma ≤ 1, SA. |
| hSA.eps_nonneg | STANDING | 0 ≤ epsilon, SA. |
| hSA.eps_le | STANDING | epsilon ≤ cStar gamma⁴, SA. |
| hω | SOURCE | omega in frequency image intersect Dio, blueprint:821. |
| hω' | SOURCE | omega' in frequency image intersect Dio, blueprint:821. |
| hclose | SOURCE | norm(omega'−omega) ≤ lamStar gamma², blueprint:821. |

Counts: TYPING 13; STANDING 17; RULED 9; SOURCE 3; EXCESS 0. RULED identifies the explicitly mandated binding design §0(1), §2.2, rather than asserting a separate owner approval of these helper signatures. GValid is the permitted interface to the source G results, not a field containing this package's conclusion. Its G1Body/G2Body definitions contain the full universal input/output implications at fixed constants (Defs.lean:131–196); they add no LIP or shifted-error result. Only its positivity and predecessor normalize are used here. No provider is smuggled through an instance.

The constants A0, lamStar and A1 in Defs.lean:213–224 take only fixed data and gc; none takes f, epsilon, gamma or either frequency. eta0 explicitly takes epsilon and gamma as specified. The bound uses the max norm on function carriers, the product max norm and induced operator norms. The complexification maps preserve real-vector norms. Omitting the unused boundary-layer witness and global nonemptiness strengthens this local theorem; frequency membership itself supplies actions in B. No boundary regularity or convexity of B is introduced.

## Definitions

Only one new definition exists in the package diff: `gradJ` (LipError.lean:63–64). It is the continuous linear map sending a complex linear functional to its values on the coordinate vectors. This is exactly the J-prime in blueprint:855–856, on its entire carrier, including n=0. There is no choice, fallback or conditional branch. `gradJ_apply` and `gradC_eq_gradJ` are definitional equalities; `norm_gradJ_le` proves its norm bound.

- BODY_MATCH: OK
- PUBLIC_CARRIER: OK
- WELL_DEFINEDNESS: N/A_LITERAL
- CHARACTERIZATION: N/A_LITERAL
- CHOICE_INDEPENDENCE: N/A
- DEFINITION_VERDICT: PASS

No new abbrev or structure. Inspected reused definitions: gradC is coordinatewise fderiv, shiftedTorus is the actual landed real action shift, normDisp is K minus the same unperturbed torus, lamStar/A1/eta0 and OmegaGamma have the blueprint formulas. The upstream inverse has arbitrary off-image values, and applyTorus selects a torus non-uniquely. This package never exploits those values: both frequencies are guarded by image membership, inverse_freq supplies the inverse identities, and normalize uses `Classical.epsilon_spec (apply …)` (Normalize.lean:122). Uniqueness of the selected APPLY torus is neither claimed nor needed for this error calculation. No new choice-based object is introduced here.

## Proof checks

At LipError.lean:300–321 the original and shifted points are in the open deltaStar ball: their distances are bounded by eta and eta + norm(Delta I), at most deltaStar/2 and 3deltaStar/4 respectively. Positivity of deltaStar makes both strict. At 132–144 the already proved `ball_unperturbedTorus_subset_domainD` applies on T(s/4), and the entire real segment is supplied by `convex_ball.segment_subset`. Holomorphy is restricted from the original perturbation domain through domainD. Thus `increments_open` receives its real segment premise rather than assuming global convexity of B.

At 324–343, each parallelogram point has distance at most eta + norm(Delta I) ≤ 3deltaStar/4 < r0/2 from the real action I in B; deltaStar ≤ r0/4. At 107–110 `mixed_difference_design` receives precisely that premise and the pointwise H3 bound, after holomorphy of gradC and the contraction estimate for gradJ. No derivative estimate is assumed as a result-shaped premise of lip_error.

At 453–467, gamma² ≤ 1 and Lplus lamStar = deltaStar/4 supply the needed action-shift estimate. At 390–402 the only comparison of epsilon with epsilon/gamma² uses SA's nonnegativity. The proof matches the blueprint route and reveals no false or mis-stated blueprint claim in this package's source range.

## Mechanical checks

All Lean commands were serialized, with priority `nice -n 5`. No clean, resource-budget override or state-changing git command was run.

1. `git diff --stat main...HEAD`:

   ```text
    KAM.lean               |   1 +
    KAM/Head/LipError.lean | 476 +++++++++++++++++++++++++++++++++++++++++++++++++
    2 files changed, 477 insertions(+)
   ```

   The generated root change is precisely `public import KAM.Head.LipError`; root-generator checking is included in lint. `git diff main...HEAD -- KAM/Frozen manifest` produced no output (exit 0). `git diff --check main...HEAD` produced no output (exit 0).

2. `nice -n 5 lake build KAM.Head.LipError` (exit 0):

   ```text
   Build completed successfully (2931 jobs).
   ```

3. A Python source check extracted the design theorem up to `:= sorry` and the implementation up to `:= by` and compared them directly:

   ```text
   Appendix A signature byte equality: True
   Project import closure modules: 63
   Forbidden theorem/provider imports: []
   Lean file lines: 476
   ```

   The import closure was traversed recursively from `KAM.Head.LipError` through all project import lines. No `KAM.Frozen.Theorems.*` or `KAM.Provider.*` module occurs, including transitively. Frozen definitions are legitimate dependencies.

4. `rg -n 'sorry|admit|axiom|unsafe|opaque|set_option|maxRecDepth|EuclideanSpace' KAM/Head/LipError.lean` produced no output (exit 1: no matches). The module has both authors' copyright, `module`, a public interface import, module docstring and `@[expose] public noncomputable section`.

5. `nice -n 5 lake env lean .lake/abi-scratch/P47Audit.lean` (exit 0). This imported the real package and compiled an `example` whose entire statement was copied mechanically from Appendix A and whose body was:

   ```lean
   by exact KAM.Head.lip_error hD hP hgc hSA hω hω' hclose
   ```

   It also printed axioms for every new result and the new definition. Exact output:

   ```text
   'KAM.Head.gradJ' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.gradJ_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.gradC_eq_gradJ' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_gradJ_apply_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_gradJ_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.differentiableOn_gradC' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_iteratedFDeriv_two_gradC_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.gradC_mixed_difference' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.hamiltonianVectorField_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_hamiltonianVectorField_f_shift_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_fderiv_sub_unperturbed_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_shiftConst' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.norm_pair_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lipError_split' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.invarianceError_shift_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.invarianceError_shift_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lipError_const_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lip_error' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   No sorryAx or project axiom. This is not a provider package, so the frozen-export/provider `type_of%` test is not applicable; the above exact Appendix A example tests the actual package interface instead. The scratch file was deleted after the check.

6. `sh scripts/lint_sources.sh` (exit 0):

   ```text
   check_lean_modules: PASS (276 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

## Findings and handoff

**Minor — incomplete declaration mapping in the prover handoff.** The le-basic row names only `invarianceError_shift_le` and `lipError_const_le`. The former assumes the abstract torus bounds, while the latter only proves arithmetic. Holomorphy, primarity, reality and the derived action-shift bound are proved in `lip_error` at 423–467. Similarly the final H3 eta0 Lplus frequency bound for le-h includes the application at 353–360, beyond the generic mixed-difference helper. Proposed fix: record the combined coverage in the node table, as above, and link these application ranges when updating graph metadata. No Lean proof change is required; the graph currently still marks these nodes NOT_STARTED and this auditor did not edit it.

No blocking or major findings. No suspected pinned-source erratum, blueprint defect, frozen-statement defect or mathematical deviation was found in scope. No source repair or ledger edit was made. The arbitrary choice of the upstream torus remains the binding design's existing construction; this audit certifies only its guarded use here, not global choice independence or subsequent LIP/HEAD assembly.

Files authored: `docs/campaign/audits/P4-7-audit-1.md`. All implementation and frozen files were left untouched.
