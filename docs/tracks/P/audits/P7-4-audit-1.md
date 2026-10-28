# P7-4 independent audit 1

Overall: **FAIL for complete coverage of `bpP:p7:holomorphic`; PASS for the exact designed P7-4 Lean contract.** The failure is the missing real-point symplectic conclusion described in F1, not an unsound proof of the exported theorem. No frozen anchor is proved or sealed by this infrastructure package, so a frozen-anchor seal verdict and provider/frozen ABI probe are not applicable.

Audited worktree: `/root/code/KAM-inp-p74`. HEAD: `69623b9e2ca62e4b7c290a788ddee3edf5be7464`; comparison ref `inp`: `d9921a75b2e196520afda935beee22c004461382`. `git diff inp...HEAD` adds only `KAM/Planetary/Poincare/Holomorphic.lean` (395 lines). The handoff was already untracked. This audit changes only this report outside temporary `.lake/abi-scratch/` probes, which are removed after checking.

Read the repository rules, PLAN, DECISIONS, package audit brief, handoff, track-P statement conventions, design §2.4/§7/§7.1 and embedded signatures, blueprint-P Part 7, imported chart/tube interfaces, and relevant frozen coordinate/form definitions. The user's explicit report destination overrides the generic brief's main-worktree destination. Proof review is confined to P7-4; imported packages are prerequisites, not independently re-audited here. All audit Lean/Lake invocations are sequential with `LEAN_NUM_THREADS=1` and `nice -n 5`.

## Declaration and node coverage

Names below have namespace `KAM.Planetary`.

| Node / obligation | Declaration | Verdict | Reason |
|---|---|---|---|
| Complex oscillator action | `poincareGammaC` (line 32) | PASS | Literal `(ξ² + η²)/2`, matching design and blueprint. Complex squares, not squared norms. |
| Complex eccentricity vector | `poincareVC` (line 33) | PASS | Principal complex power of the stated radicand, multiplied by `(ξ,η)`. No eccentricity division at the circular set. |
| Complex chart | `poincareC` (line 36) | PASS | Exact designed rational formulas, correct coordinate order, signs, and mass factors. |
| Complex domain | `poincareNbhd` (line 45) | PASS | Exactly the blueprint's open strip/disk bounds, with constants `1/4`, `1/2`, `1/16` and the same positive reference action. |
| Designed P7-4 theorem; `ho-size`, holomorphy/reality/periodicity part of `ho-hol` | `poincare_holomorphic` (lines 374–390) | PASS | Signature is text-identical to design lines 2183–2195. Five conjuncts establish openness; tube membership and nonvanishing variable denominators; complex differentiability; domain-preserving `2π` periodicity; and equality with the real chart plus real-domain inclusion. No additional premise or changed carrier. |
| Full `bpP:p7:holomorphic`, final clause of `stepP:p7:ho-hol` | No P7-4 export | FAIL | Blueprint line 169 also asserts the real-point symplectic derivative identity and hence applicability to `hol-chart`. These conclusions are absent from both the designed signature and implementation; see F1. |

All four definition blocks are text-identical to design lines 2167–2181. An independent scratch theorem copied the expected signature from the design and proved it by `KAM.Planetary.poincare_holomorphic hm hκ hΛ`; it elaborated successfully. There is one new public theorem and 22 private proof helpers. The private helpers have no conclusion-shaped hypotheses; local estimates are proved from domain membership. There are no new instances, structures, bundled result assumptions, or choice-based definitions.

## Definitions on their carriers

- `poincareGammaC`: polynomial complexification, intended on the entire complex coordinate space.
- `poincareVC`: total principal-branch complex-power formula. Outside the specified domain it need not be holomorphic; no theorem assumes that it is. On the domain its radicand has positive real part, so there is no branch-cut or zero issue, including at `ξ=η=0`.
- `poincareC`: total algebraic formula using the existing total `keplerLongC`. Lean's total division and the imported Kepler solution outside its tube are irrelevant to the asserted domain: the proof establishes tube membership and nonzero variable denominators. Under `hm,hκ`, the constant `m²κ` is nonzero as well. The private analyticity proof actually allows arbitrary real `m,κ`, since division by a fixed constant, even zero under Lean's field convention, is a constant scalar factor; the public theorem retains the designed physical positivity hypotheses.
- `poincareNbhd`: literal strict-inequality set for every real reference value. For nonpositive reference values the action-disk inequality makes it empty; no theorem exploits an invalid fallback. The public theorem assumes positive reference action.

No definition introduces a junk value on a carrier where the theorem relies on its physical interpretation.

## Proof review

The radicand proof (lines 113–131) uses `Complex.div_re`, quantitative bounds on numerator real/imaginary parts, and positive `normSq Λ`. This directly proves positive real part rather than assuming an argument estimate. The tube proof (lines 147–170) derives `‖s‖² = ‖R‖` from the principal half-power square identity and obtains the required strict sum-of-component-norms bound. These estimates apply throughout the domain, including the circular set.

The differentiation proof (lines 205–278) composes the principal power on the slit plane, the already analytic tube Kepler solution, trigonometric functions, and rational operations. `nbhd_k_ne` and `Tube.jac_ne_zero` discharge the two chart-specific denominators. The local multivariable division helper is a direct product-with-inverse argument. No removed circular locus, polar-angle choice, or removable-singularity claim is hidden in this construction.

Periodicity (lines 280–300) uses the Kepler longitude shift and exact `2π` trigonometric periodicity. Reality/extension (lines 302–368) first proves membership in the real chart domain, identifies the positive real square root using `Complex.ofReal_cpow`, identifies the Kepler solutions, and checks both output components. Equality to `phaseToC (poincare …)` is stronger than merely saying that the output is real. No constant-dependence change occurs: there are no existential constants in this package's public statement.

## Findings and source/design fidelity

### F1 — missing blueprint conclusion (statement coverage failure)

`blueprint-P/parts/p7-kepler-poincare.tex:169` states: “`D\Psi^{\top}M_0D\Psi=M_0` at real points. Hence it satisfies the hypotheses of Lemma … `hol-chart` with `c=1`.” Line 173 expressly derives this from `poincare` (c) and real restriction of the complex derivative.

`docs/tracks/P/design/KEPLER-LEAN-DESIGN.md:2183–2195` and `KAM/Planetary/Poincare/Holomorphic.lean:374–390` omit that derivative identity. Their final conjunct ends with real-domain membership and equality of function values. Neither a symplectic derivative identity nor a `hol-chart` applicability result is exported. Function-value agreement alone does not supply the missing symplectic theorem.

This mismatch originates in the design, and the implementation follows that design exactly. Design line 442 assigns real-chart symplecticity to P7-2, while line 435 places P7-4 earlier, depending only on P7-1 and KEP-4. That explains the split but does not prove the omitted clause of the full blueprint node. The brief explicitly requires failure for a weakened blueprint conclusion. Therefore the complete node must not be marked proved from this package alone.

Required resolution: retain the successful P7-4 theorem and provide an explicitly owned glue theorem after P7-2 proving the real-point derivative identity on `phaseToC ⁻¹' poincareNbhd Λo`, with the real/complex derivative restriction justified; or explicitly split the blueprint node and record the remaining clause as pending. No change to a frozen statement is requested. This audit does not assess or demand completion of P7-2's proof within P7-4.

### N1 — handoff's proposed argument-bound erratum is incorrect

`docs/tracks/P/audits/P7-4-handoff.md:17` says “the actual bound from `|Λ-Λ°|<Λ°/2` is only `|arg Λ| < π/4`”. The asserted limitation is false. The disk bound gives the sharper `|arg Λ| < π/6`, as the blueprint correctly explains at line 172 by the tangent-angle bound `arcsin(1/2)`.

For an elementary verification, write `Λ=x+iy`, `L=Λ°>0`. The disk inequality gives `x>0` and

```text
x²/3 - y² = (4/3)(x - 3L/4)² + L²/4 - ((x-L)² + y²) > 0.
```

Thus `|y|/x < 1/√3`, yielding `|arg Λ|<π/6`. Separate bounds `|Im Λ|<Re Λ` are weaker, but they do not exhaust the information in the disk hypothesis. Do not enter the handoff's claim as a source/design erratum. The implementation's real-part proof is valid and does not depend on this mistaken criticism.

No pinned-source defect was identified in the audited proof. No source PDF audit beyond this module's local blueprint/design obligations is claimed. The proof uses a valid alternative real-part argument and a sufficient `<1/4` tube estimate; those are harmless proof-route differences, not statement deviations.

## Independent checks

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p74 KAM.Planetary.Poincare.Holomorphic
```

Exit 0. Gate output: `[inp-gate] slot 2 acquired 04:36:47 for KAM.Planetary.Poincare.Holomorphic`. Final output: `Build completed successfully (9097 jobs).` This was a targeted incremental build through the required gate, not a clean rebuild. Replayed warning messages concerned unused `hm,hκ` in Energy, Chart and Holomorphic; P7-4 warnings are at line 374, columns 43 and 56. No elaboration/resource failure occurred.

### Expected-type probe and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P74Audit.lean
```

Exit 0. The probe imports only `KAM.Planetary.Poincare.Holomorphic`, opens its existing namespaces, copies the designed theorem signature under `audit_p74_expected`, and applies the public export with its three explicit proof binders in order. It then prints:

```text
'KAM.Planetary.poincareGammaC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareVC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_holomorphic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No provider export or frozen theorem anchor belongs to this package; provider/frozen type comparison and a frozen seal-body copy are consequently N/A. The expected-design-type probe above is the applicable independent interface check.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.Holomorphic
```

Exit 0; complete output:

```text
replaying KAM.Planetary.Poincare.Holomorphic
```

One invocation covers the sole new module and all its private helpers.

### Source hygiene and immutability

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the expressly permitted stale generated root. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (395 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint checks passed. The auditor did not regenerate `KAM.lean`.

The module has 395 lines, the prescribed copyright/module/public-import/docstring/public-section format, and exposed definitions via `@[expose] public noncomputable section`. A direct forbidden-token scan found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, forbidden carrier, or resource override. Its project-import closure contains 51 modules: no provider and no frozen theorem imports; all 43 reachable frozen definition anchors have manifest state `SEALED`. Imported definitions keep their frozen meanings.

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exit 0 with empty output. No frozen, manifest, root, or generated README changes occur in the package diff. No repository source was repaired by the auditor. Remaining uncertainty is the unproved full-node glue obligation F1, not the correctness of the exported designed theorem.
