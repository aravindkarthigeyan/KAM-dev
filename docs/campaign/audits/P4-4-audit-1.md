# P4-4 independent audit 1

**Overall verdict: PASS WITH NOTES.** The implemented STAB theorem has the exact binding design signature and proves the blueprint statement, with its stated constants. The sharper derivative estimate is valid. No blocking or major finding; the notes concern dependency documentation and graph bookkeeping.

Audit date: 2026-10-27. Audited checkout: `/root/code/KAM-w-p4-4`, branch `k/p4-4`, HEAD `2695c73a2737205332062ec5028db125fc2d04de`; comparison main `a7c2b201a5682652da9cf7b05df984d6d021282c`. The handoff's `f63e250` describes the prover commit; this audit covers the merged checkout actually present. Scope: the two new Lean modules and their source correspondence, proof estimates, imports, and hygiene. This is infrastructure acceptance, not HEAD/provider closure or an independent audit of the published source PDFs.

Read the repository rules, PLAN, DECISIONS, package and common briefs, AUDIT-PACKAGE, the supplied handoff, the relevant Part 4 design and prior design audit, blueprint STAB and standing-data text, graph contracts, and the implementation and relevant imported interfaces. Only this report is retained as an audit edit. Temporary Lean probes were placed in `.lake/abi-scratch/` and deleted. No state-changing git command was used.

## Snapshot

SHA-256:

```text
1b138be4ac02348d612bb2598c82ecd8c84c031539fc41bfba1784373b54cc4d  KAM/Head/StabFrame.lean
75d581ec828edc5dab31ba7442fd54953914df0126376d5b23b74389cd059874  KAM/Head/Stab.lean
cb301f9c57ff4ff7d36a88c850459937c8f4ca8b789e88eeb4ca710edf2987d2  docs/campaign/design/PART4-LEAN-DESIGN.md
6de22b372e66280b06e14c26220e311983c97ce848c868b8843c49230d780642  blueprint/parts/p4-measure.tex
71df4a2a91ce04910f23393faa8e8a19794bc044250fc473921fe614f9dc720b  docs/graph/K/DEPGRAPH.md
884ee4d15bd0a7113cda7ac4cb654047c0641ad0e7c9fdf752627d9fcbbe81b7  docs/campaign/audits/P4-4-handoff.md
```

`git diff --stat main...HEAD`:

```text
 KAM.lean                |   2 +
 KAM/Head/Stab.lean      | 469 ++++++++++++++++++++++++++++++++++++++++++++++++
 KAM/Head/StabFrame.lean | 385 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 856 insertions(+)
```

The generated root adds just the two public imports. Its generation check passes.

## Node inventory

In this table, `S.` means `KAM.Head.Stab.`; all locations are at the audited HEAD.

| Node | Lean declaration / covering proof | Verdict | Reason |
|---|---|---|---|
| `bp:p4:stab` | `KAM.Head.stab`, Stab:396–465 | PASS | Exact Appendix A §9 signature; all (a)–(d), average inverse and conditional frozen H2–H4 row sums retained. |
| `step:p4:stab-small` | `S.eta_small`, StabFrame:353; `S.three_n_le_cT`:345 | PASS | Gives the stronger bound cT η/δ² ≤ 1/(16 Lplus) and 12na ≤ 1; η ≥ 0 and δ ≤ 1 are derived in the caller. |
| `step:p4:stab-cauchy` | `S.tangent_close`:165, `S.fderiv_fderiv_eq`:180, `S.norm_fderiv_fderiv_le`:193, `S.norm_dL_le`:207, `S.frame_basic`:283 | PASS | Affine reference has zero second derivative; full operator-norm Cauchy estimate strengthens the componentwise blueprint bound. |
| `step:p4:stab-ball` | `S.ball_subset_domainD`, Stab:58; root's `hball`:439 | PASS | Triangle inequality puts the μ-ball inside the reference δStar-ball, with 2μ = δStar. Membership in the domain follows using μ > 0. |
| `step:p4:stab-gram` | `S.norm_gram_sub_one_le`, StabFrame:55; `S.gram_inv`:85; `S.frame_basic`:283 | PASS | Expansion around L0 gives 5na, and Neumann supplies invertibility, inverse bound 2 and inverse difference 10na. |
| `step:p4:stab-frame` | `S.norm_normal_sub_le`:105, `S.norm_dN_le`:125, `S.fderiv_gramMatrix_eq`:251, `S.fderiv_normalMat_eq`:262, `S.frame_basic`:283, `S.frame_deriv`:320 | PASS | Correct transpose rather than conjugate transpose; inverse differentiation and normal-frame differentiation give 12na, 2 and 66nb. |
| `step:p4:stab-xn` | `S.norm_fderivX_sub_le`, Stab:75; `S.normalField_close`:241; `S.xn_const_le`:170; local `hXb` in `S.torsion_close`:307–327 | PASS | Segment lies inside a convex ball contained in the domain; H1 supplies the second derivative bound. Difference coefficient is stronger than blueprint; the XN ≤ M+1 conclusion is proved locally. |
| `step:p4:stab-torsion` | `S.norm_torsion_combo_le`:149, `S.torsion_const_le`:179, `S.torsion_arith`:212, `S.torsion_close`:275 | PASS | Frozen torsion is identified with Nᵀ Ω XN at differentiable normal frames. Both expansion terms fit the original cT. |
| `step:p4:stab-twist` | `S.twist_close`:342, especially local `hΔ`:366–369 | PASS | Continuity justifies entrywise averages on the real unit cube; Neumann product is ≤ 1/8, hence ≤ 1/2; inverse bound is 4 Lplus. |
| `step:p4:stab-h2h4` | final conjunct of `KAM.Head.stab`, Stab:452–465 | PASS | Holomorphy/primarity restrict, reality persists, and operator bounds imply exactly the frozen row sums and margins. |

Local estimates inside their named covering declarations satisfy the audit brief's “declaration that covers it” criterion. They are not additional public exports.

## Statement and hypothesis fidelity

Compared `blueprint/parts/p4-measure.tex:583–601`, design Appendix A §9 and Stab:396–426 directly. The design signature, from `theorem stab (` through the end of its type, is **byte-identical** to the implementation. An independent application at that extracted design type elaborated successfully.

| Inputs (expanded where bundled) | Classification | Assessment |
|---|---|---|
| n, τ, s₀, r₀, Lh, B, h, f, ε, I, ω, δ, ρ, η, K and their function/Fin carriers | TYPING | Precisely the mathematical data, torus and bounds; no auxiliary witness of the conclusion. |
| `Data.two_le`, `tau_gt`, `s₀_pos`, `r₀_pos`, `isOpen`, `isBounded`, `holo`, `real`, `nondeg` | STANDING (9 fields) | Exactly the fixed HEAD data at blueprint:138–147 and design §2.1. Nondegeneracy witness Lh is fixed before the perturbation. |
| `Pert.holo`, `periodic`, `real`, `bound` | STANDING (4 fields) | Exactly the perturbation assumptions at blueprint:145–147. No result is hidden in the bundle. |
| `hε`, `hεF`, `hI`, `hω`, `hδ`, `hδρ`, `hρ`, `hK`, `hclose`, `hη` | SOURCE (10 premises) | Match STAB:584–587, including weak closeness bound, strict positive strip loss, and ε ≤ 1. |
| Primarity and reality in the last implication | SOURCE (2 conditional premises) | Needed only for the H2–H4 block, exactly as at blueprint:599–601. |

EXCESS: 0; RULED additions: 0. No GValid, gate theorem, stability conclusion, integrability assumption, or positivity assumption on ε or η is added. The proof derives η ≥ 0 from closeness at a real point, and δ ≤ 1 from δ < ρ ≤ s/4. All max norms and row-sum matrix operator norms agree with the design. `IsUnit det` is equivalent to the required nonzero complex determinant.

The result is slightly stronger than the standing blueprint setting because it omits the boundary-layer witness and B nonempty as separate assumptions. These are unnecessary here; I ∈ B already supplies nonemptiness. No constants gain dependence on f, ε, K, I, ω, ρ, δ or η: cT and etaStar retain their existing formulas in Defs:240–245.

Internal matrix/arithmetic lemmas take local estimates as premises under distinct helper names. The root proves and supplies each estimate; none replaces the source theorem with a conditional shell.

## Refutation of the sharper estimate and constant risk

I specifically checked whether the missing factor n in the directional derivative was an unjustified norm conversion. It is not. HigherCauchy:45–59 and :87–94 give the full bilinear second Fréchet derivative bound 4η/δ², by applying the dimension-independent closed-ball Cauchy operator estimate twice at radius δ/2. The δ-ball about a point of T_(ρ−δ) stays inside T_ρ. Applying that bilinear map to the complex inclusion of ω and to a coordinate unit vector bounds each matrix entry by 4Wη/δ². Summing only over the n columns gives 4nWη/δ² (StabFrame:223–247). There is no coordinate sum over ω that would require another n.

Consequently the normal derivative bound is 264n²Wη/δ², and the normal-field difference coefficient is 2M + 12n²M + 264n²W. Stab:170–187 and :212–229 explicitly prove that this coefficient together with the transpose/normal contribution 24n³(M+1) is at most 304n³(M+W+1) for n ≥ 2 and M,W ≥ 0. The original cT is unchanged. No blueprint contradiction or suspected source defect was found.

For twist, the proof establishes domain membership before applying `torsion_regular_design`, obtains continuity of both real restrictions, bounds the actual frozen averages, and supplies the reference inverse from `unperturbed_twist`. No use of a totalized nonintegrable integral or singular inverse bypasses its hypotheses.

## Definitions and imports

**New definitions/abbreviations/structures: none** in either added module. Section variables, namespace names and local `set`/`have` terms introduce no public mathematical object or fallback semantics.

Existing semantic objects used were checked at their actual interfaces: affine `unperturbedTorus`, frameL0/frameN0, Gram inverse and normalMat, frozen torsion/average, domainD, muParam, cT and etaStar. Uses of inverse objects are guarded by proved invertibility; use of the average is justified by proved continuity on the real cube. No replacement carrier or norm is introduced.

Recursive source-import inspection from `KAM.Head.Stab` visited 83 project modules, found zero cycles and zero imports of `KAM.Provider.*` or `KAM.Frozen.Theorems.*`. The three extra imports identified in the handoff are harmless: PerturbationTorsion supplies general matrix-combination and average-difference inequalities, Identities supplies differentiation of tangent-matrix entries, and HigherCauchy supplies the stronger second derivative bound. These are proved analytic/algebraic infrastructure, not frozen theorem shortcuts. Frozen definition imports are permitted.

**Provider exact-type probe: N/A.** P4-4 has no provider or frozen theorem target. The independent exact-design-type probe below passed instead.

## Checks and actual output

Lean processes were serialized, all at niceness 5. No full-library rebuild or clean was requested.

```text
$ nice -n 5 lake build KAM.Head.Stab
Build completed successfully (3217 jobs).
exit 0

$ nice -n 5 lake env lean .lake/abi-scratch/P44Audit.lean
exit 0
```

The temporary probe imported only `KAM.Head.Stab`, opened the design's matrix scope and namespaces, declared the ambient variables, and used Appendix A §9's literal signature as an `example`, with proof:

```lean
by
  exact stab hD hP hε hεF hI hω hδ hδρ hρ hK hclose hη
```

It then ran `#print axioms` on **all 29 added theorems**, not just the main theorem. Each printed exactly `[propext, Classical.choice, Quot.sound]`. Complete output:

```text
'KAM.Head.Stab.frameL0_transpose_mul_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_gram_sub_one_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.gram_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_normal_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_dN_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.tangent_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.fderiv_fderiv_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_fderiv_fderiv_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_dL_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.fderiv_gramMatrix_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.fderiv_normalMat_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.frame_basic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.frame_deriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.three_n_le_cT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.eta_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.ball_subset_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_fderivX_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.normalFieldMat_unperturbed' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_linMat_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_linMat_unperturbed_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.norm_torsion_combo_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.xn_const_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.torsion_const_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.xn_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.torsion_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.normalField_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.torsion_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Stab.twist_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.stab' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```text
$ nice -n 5 sh scripts/lint_sources.sh
check_lean_modules: PASS (277 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 0

$ git diff main...HEAD -- KAM/Frozen manifest
(no output; exit 0)

$ git diff --check main...HEAD
(no output; exit 0)

$ rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Head/Stab.lean KAM/Head/StabFrame.lean
(no output; exit 1, meaning no matches)

$ wc -l KAM/Head/Stab*.lean
  469 KAM/Head/Stab.lean
  385 KAM/Head/StabFrame.lean
  854 total
```

Both files have copyright, module command, interface imports, module docstring and exposed public section. Lint includes root-generation, module, frozen-byte and ABI checks. No heartbeat, recursion-depth or synthesis override occurs in the package. The extra Python source inspections printed:

```text
DESIGN_SIGNATURE_BYTE_EQUAL: True
AXIOM_PROBE_RESULTS: 29
PROJECT_IMPORT_CLOSURE: 83
IMPORT_CYCLES: []
QUARANTINED_IMPORTS: []
NEW_DEFINITIONS: [('KAM/Head/StabFrame.lean', []), ('KAM/Head/Stab.lean', [])]
```

Signature equality was checked by slicing each file from `theorem stab (` to its first ` := sorry` (design) / ` := by` (implementation). Import inspection recursively matched `^(?:public )?import (KAM\.\S+)`, with an active traversal stack for cycles. Temporary probe removed after its successful run.

## Findings and proposed follow-up

1. **Minor — design import diagram is stale for this implementation.** Design §4 lists the narrower StabFrame/Stab DAG; StabFrame:10–12 and Stab:12 use the additional modules described above. Refutation check: complete project import traversal has no cycle or quarantined target, and all theorem axioms are clean. Proposed fix: update the design diagram/dependency notes to record these reusable infrastructure imports and the sharper Cauchy route. No Lean repair is needed.
2. **Minor — graph Lean status has not been updated.** DEPGRAPH:10945–11255 still records `NOT_STARTED` and empty Lean references for STAB and its nine steps, despite the checked implementations. Proposed fix: orchestrator records this audit and the covering declarations, including the local XN bound in `torsion_close` and the H2–H4 block in `stab`. This is bookkeeping, not a proof gap.

No blocking/major findings, suspected pinned-source errata, unauthorized statement changes, or unreported mathematical deviations. The sharper bounds are a valid strengthening already disclosed by the prover. No files were repaired by the auditor. Limits: imported infrastructure was checked where consumed, not subjected to a fresh comprehensive source audit; no external PDF correspondence or downstream HEAD assembly is certified here.
