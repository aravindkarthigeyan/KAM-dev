# P4-8 independent audit 1

Overall verdict: **FAIL** under the audit brief's requirement that every mapped graph node retain its full conclusion. **The main theorem `KAM.Head.lagrangian` passes** statement, proof and axiom checks. The failure is an incomplete statement for the separately claimed `step:p4:lag-regular`, not a refutation of the Lagrangian theorem.

Audited checkout: `/root/code/KAM-w-p4-8`, branch `k/p4-8`, HEAD `2507c741c5262d50dd4403bee011bce8cc22f3c3`; comparison main `3d7ac61e58a331f6cbb10c090645df267fcfa906`. Package implementation commit: `e7eb9b4`. The pre-existing untracked handoff was read and left untouched.

Inputs: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P4-8.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, `P4-8-handoff.md`, `PART4-LEAN-DESIGN.md`, `DESIGN-P4-audit-1.md`, the five node contracts in `docs/graph/K/DEPGRAPH.md`, and their literal blueprint text at `blueprint/parts/p4-measure.tex:961–1007`. Relevant imported definitions and proofs were inspected. No external source PDF was audited.

## Node inventory

All declarations below are in `KAM/Head/Lagrangian.lean` and namespace `KAM.Head`.

| Node | Lean declaration / locator | Verdict | Reason |
|---|---|---|---|
| `bp:p4:lagrangian` | `lagrangian`, line 235 | PASS | Signature byte-identical to Appendix A §13; exact full-strip vanishing. All blueprint premises retained, with no added premise or constant. |
| `step:p4:lag-regular` | `lagrangeMat_regular`, line 213 | FAIL | Proves holomorphy and periodicity of Λ, but omits Λ bounded on the full strip and u, v, Du bounded on the half strip, explicitly required by the graph contract and blueprint lines 977–978. See F1. |
| `step:p4:lag-exact` | `avg_lagrangeMat_eq_zero`, line 222; `KAM.Apost.Exactness.avg_lagrangeMat` | PASS WITH NOTES | Zero average under weaker analytic premises; the imported curl proof supplies the derivative representation. Uses a valid Part 2 route rather than the listed averages route; see F2. |
| `step:p4:lag-transport` | `fderiv_lagrangeMat_omega`, line 184 | PASS | Full matrix directional derivative zero for arbitrary holomorphic φ on an open domain, with K mapping into it and exact invariance; this specializes to the blueprint Hamiltonian. |
| `step:p4:lag-unique` | body of `lagrangian`, lines 250–264; imported `coh_unique_zero` | PASS WITH NOTES | All entrywise premises discharged on Tρ. No explicit strip loss is needed: the imported Fourier uniqueness proof includes the strip-identity continuation. |

## Statement and proof checks

The main signature at lines 235–242 is literally the design signature at `PART4-LEAN-DESIGN.md:1303–1311`, before the proof body. A mechanical string comparison returned `True`; a scratch Lean example with that copied signature and a direct application of the exported theorem also elaborated.

The quantifier order retains fixed standing data and perturbation before arbitrary ρ, γ, ω, K, then all θ in Tρ. `Data` and `Pert` unpack to the source standing premises, not Lagrangianity, transport, average vanishing or any other desired conclusion. There is no GValid, reality-of-K, normalization, smallness, or extra boundedness premise. The bound on DK is the original existential pointwise operator-norm bound. The unused `hε` and `hDK` remain in the signature. The dropped unused section variable `gc` does not occur in its elaborated type. There are no existential constants whose dependence could have widened.

**Transport.** Lines 76–88 establish symmetry of D²φ using holomorphy on an open set and differentiability of Dφ there. Lines 93–106 combine that symmetry with the actual Hamiltonian derivative `D Xφ = hamJ ∘ D²φ`, not an assumed infinitesimal-symplectic identity. The pairing is complex bilinear, with transpose, not conjugate transpose. Lines 145–176 differentiate the invariance equation as an eventual equality in an open neighborhood, apply the chain rule at Kθ, and commute the second derivatives of K. All differentiability and domain-membership premises are proved. Lines 184–206 then differentiate Λ = LᵀΩ₀L and factor the result as Lᵀ(AᵀΩ₀ + Ω₀A)L = 0. The signs agree with `hamJFun` and the existing Ω₀ convention.

**Exactness.** The wrapper uses `KAM.Apost.Exactness.avg_lagrangeMat` (`Exactness.lean:177`). That theorem uses `curl_actionForm` (line 122) with action forms `f_j = Kᴵ · ∂j Kθ`, then integrates derivatives of periodic holomorphic functions. It proves the actual average, not vanishing of a placeholder integral. Continuity on the real slice gives integrability on the compact cube. Global bounds near the complex-strip boundary are unnecessary for this route.

**Uniqueness premises at lines 255–263.** For w = Λij: hρ, hγ and hω are the original hypotheses; matrix holomorphy yields scalar holomorphy; projecting matrix periodicity yields scalar periodicity; continuity on the real slice justifies moving entries through `torusAverage`, and the projected matrix average is zero; `fderiv_matrix_apply` converts the matrix transport identity into the required scalar directional derivative. Evaluation at the arbitrary θ and its membership proof returns Λij(θ) = 0 on Tρ itself. The existing `CohUnique.lean:37` adapter proves this from Fourier coefficients and nonresonance; its `eq_zero_of_torusCoeff_holomorphic` predecessor (`FourierBasic.lean:193`) invokes `strip_identity`. No τ-sign, forcing bound or smaller-strip premise is silently assumed.

## Definition classification and hypotheses

The package diff introduces **no `def`, `abbrev`, or `structure`**: eleven theorems only. Consequently there is no new junk value, choice fallback, or altered mathematical carrier to classify.

Relevant existing objects were checked: `tangentMat` is the coordinate matrix of DK; `linMat` is that of DXφ at Kθ; `lagrangeMat` is literally LᵀΩ₀L (`Torus/Objects.lean:61–70`). `IsPeriodicOn` is coordinate period one, and `avg` is the real unit-cube average (`Torus/Basic.lean:122,134`). `actionForm` is the action-coordinate contraction with the angle derivative (`Apost/Exactness.lean:54`); `hamJFun` and its continuous linear map implement the canonical Hamiltonian vector field (`Head/HamiltonianField.lean:46,63`). Their total derivative definitions outside differentiability loci are never used as substitutes for derivatives: the relevant loci are open and holomorphy is discharged before differentiation. No inverse, arbitrary witness selection or fallback enters this proof.

Helper premises are source analytic assumptions, ordinary typing data, or explicit algebraic hypotheses for independent linear-algebra lemmas. No hard step of the main result is assumed through a helper or structure field.

## Hygiene and exact checks

Commands ran from the audited checkout. Builds, lint's ABI elaboration, and the scratch Lean run were serialized; no heartbeat or recursion overrides were used.

1. `git diff --stat main...HEAD`

   ```text
    KAM.lean                 |   1 +
    KAM/Head/Lagrangian.lean | 270 +++++++++++++++++++++++++++++++++++++++++++++++
    2 files changed, 271 insertions(+)
   ```

   The root change is the expected generated import. No source edit was made by this auditor.

2. `git diff main...HEAD -- KAM/Frozen manifest`

   No output; exit 0. Frozen files and manifest unchanged.

3. `git diff --check main...HEAD`

   No output; exit 0.

4. `wc -l KAM/Head/Lagrangian.lean`

   ```text
   270 KAM/Head/Lagrangian.lean
   ```

   Copyright, `module`, public interface imports, module docstring and public section are present. Ambient types use Fin-function spaces. No forbidden proof escapes or overrides were found. Imported frozen modules are definitions; there is no provider or frozen theorem import in the package module.

5. `nice -n 5 lake build KAM.Head.Lagrangian`

   ```text
   Build completed successfully (3201 jobs).
   ```

   Exit 0; no diagnostics. This is the targeted build, not a whole-library rebuild.

6. `sh scripts/lint_sources.sh`

   ```text
   check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   Exit 0.

7. `nice -n 5 lake env lean .lake/abi-scratch/P48Audit.lean`

   Exit 0. The scratch file imported `KAM.Head.Lagrangian`, elaborated an example with the copied design signature, and ran `#print axioms` on all eleven new theorems plus the imported uniqueness adapter. Exact output:

   ```text
   'KAM.Head.clm_prod_apply_eq_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.fderiv_fderiv_symm' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.dotC_derivHamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.matrix_eq_zero_of_dotProduct_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.sqMat_transpose_mul_add_mul_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.sumVec_fderiv_fderiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.fderiv_tangentMat_omega' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.fderiv_lagrangeMat_omega' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lagrangeMat_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.avg_lagrangeMat_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lagrangian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.coh_unique_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   Thus no result depends on `sorryAx` or an additional axiom. Probe removed after checking.

Provider exact-type probe: **not applicable**, since P4-8 has no provider or frozen theorem export. The main design-signature application above checks its intended interface independently.

## Findings and proposed fixes

**F1 — major; blocks full graph-node acceptance. Incomplete `lag-regular` conclusion.** `DEPGRAPH.md:12002` and `p4-measure.tex:977–978` require Λ bounded on Tρ and u, v, Du bounded on Tρ/2, as well as the regularity facts. `Lagrangian.lean:213–216` exports only holomorphy and periodicity of Λ. Those two clauses alone do not imply boundedness on the full open strip; the original DK bound is relevant to that assertion, and the wrapper does not even take it. This is an omitted node conclusion, not an added theorem premise or an unsound main proof. The audit brief explicitly requires failure for a weakened conclusion at any mapped node.

Proposed fix: retain this useful wrapper under its existing name, and add a separately named theorem covering the complete regularity node under its original hypotheses, including the DK bound and ρ > 0, with explicit pointwise existential bounds for Λ and u, v, Du. Map the node to that complete declaration and its regularity predecessors. Alternatively the orchestrator must explicitly approve and record a narrower node contract reflecting the new proof route; the auditor has not changed the graph. Do not change the binding `lagrangian` signature.

**F2 — minor; graph route documentation.** The `lag-exact` edge list (`DEPGRAPH.md:12036–12041`) names the Part 1 averages route, while `Lagrangian.lean:225` imports the already-proved Part 2 exactness theorem. Its inspected proof establishes the same derivative representation and average identity, with weaker boundedness requirements. This is a sound proof reuse, but the common brief says the DEPS list specifies allowed predecessors. Record the Part 2 reuse as an explicit graph route/dependency update before declaring literal dependency compliance. The same bookkeeping should state that the existing `coh_unique_zero` packages Fourier uniqueness and strip identity. No extra analytic hypothesis or weakened main conclusion results from either route.

## Errata, deviations and limits

No suspected defect in a pinned external source or frozen statement was found. The blueprint's unused ε ≤ 1 and DK bound are not errors; the alternative proof needs fewer assumptions. No blueprint identity was contradicted. The proof deviations are the Part 2 average reuse and the full-strip uniqueness adapter described above. The outstanding uncertainty is acceptance of the omitted intermediate-node clauses and route bookkeeping, not the kernel-checked main theorem. No provider sealing, root closure, or external-PDF verification is claimed.

Auditor changes: this report only; temporary probe created under `.lake/abi-scratch/` and deleted. No state-changing git command, source repair or generated-file edit was performed.
