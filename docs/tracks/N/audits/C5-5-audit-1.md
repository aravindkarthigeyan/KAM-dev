# C5-5 independent package audit 1

**Overall verdict: PASS WITH NOTES.** All six requested infrastructure results pass the statement and proof audit. Both targeted builds, all six signature/explicit-application probes, all 33 public-theorem axiom checks, and kernel replay pass. Lint has only the brief-authorized generated-root exception. No material C5-5 defect was found.

There is **no frozen theorem anchor or provider export in C5-5**, hence no anchor to seal and no frozen seal body to test. This verdict approves the audited infrastructure for integration; it does not seal any I/N/P headline. Per-result verdicts: `flow_c`, `flow_e`, `symplectic`, `canonical_bracket`, `canonical_field`, `canonical_orbit`: **PASS**. The notes concern consumer transport and pre-existing documentation/integration housekeeping.

## Snapshot and authority

- Date: 2026-10-28. Worktree: `/root/code/KAM-inp-c55`.
- Audited HEAD: `919092feb9e6a5f561c75da3667df42b4778733f`.
- Observed `inp`: `59aa6ce896afaa3cf07fb4a97bd4f3e4be494c00`.
- Observed `inp-c56`: `a9c0bc75a0995e4861f7c55d9f9aca148dd59bc5`.
- Read AGENTS.md, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the C5-5 handoff and its AUDIT FOCUS, Part145 design (especially C5-5 row/proof plan and binding audit-2 notes), design audits 1/2, blueprint-N Part 5, and Track N statement conventions. Inspected the flow/regularity interfaces and relevant frozen definitions.
- Compared `git diff inp...HEAD`; additionally followed the handoff's narrow scope `git diff inp-c56...HEAD -- KAM/Canonical/`. Both identify exactly the same three added modules: FlowInverse (256 lines), SymplecticForm (246), Symplectic (263); 765 added lines, no edits to existing production files. C5-6 is not re-audited here.
- Signature authority: `/root/code/KAM-inp/.drafts/design/NPart145Signatures.lean`, SHA256 `1db3ad2b05ea000a814403bb7c3f60a8aa300db91e612d94184ef3245991ee53`, matching the design's recorded hash.
- The user's exact report destination in this worktree overrides the generic brief's main-worktree destination. Only this report was added by the auditor; the untracked handoff pre-existed. No git mutation, production edit, frozen edit, generated-root edit or package-cache operation was performed.

## Statement fidelity and attempted refutations

The six production headers are identical to their signature-file headers after whitespace removal. The audit copied each expected header under a fresh name, proved it by explicit application of the production theorem, and checked `example : type_of% @audit_expected_<name> := @<name>`. All twelve checks elaborate without a warning. No sorry-bearing design module was imported. The explicit argument sequences were:

| Result | Body of copied expected declaration |
|---|---|
| `flow_c` | `by exact flow_c h hz` |
| `flow_e` | `by exact flow_e h hreal` |
| `symplectic` | `by exact symplectic hφ h hz ht Y hY` |
| `canonical_bracket` | `by exact canonical_bracket hφ h hz ht hU hzU hu hv` |
| `canonical_field` | `by exact canonical_field hφ h hz ht hU hzU hH` |
| `canonical_orbit` | `by exact canonical_orbit hφ h ht hU hH hy hyU` |

`flow_c` preserves both inverse identities at times ±1 and membership of both intermediate points in Ω^(1/2). The 2ε bound uses the original gauge on `DX^t(z)v−v` for every vector and every t∈[-1,1], with z∈Ω¹. No extra interior slack or smaller time interval is assumed. The gauge helper legitimately uses the closed radius-1/2 ball: all its points lie in the open half-interior, so differentiability on the sphere is available. The v=0 branch is explicit; finite-dimensional and n=0 degeneracies introduce no division-by-zero premise.

`flow_e` is exactly the two-block real-locus statement. Each Picard iterate stays in Ω by its proved displacement bound and stays real because the real-linear imaginary-part map commutes with the integrable real-time integral. The factorial convergence estimate, with operator norms of Im and W⁻¹, then forces the flow's imaginary part to vanish. It never assumes the desired reality of the flow. This is a valid alternative to the design's real-ODE continuation route.

For symplecticity the integrand in the variational equation is continuous on [-1,1]. FTC gives Y′=DF(X^t z)Y on the open interval, while the integral equation gives Y(0)=id. Holomorphic regularity supplies the actual symmetric Hessian, proving ω(DF·u,w)+ω(u,DF·w)=0. The product rule therefore makes ω(Yv,Yw) constant. Closed-interval continuity covers both endpoints. All form calculations are complex bilinear with plain transpose, consistent with the blueprint and the frozen sign convention; no Hermitian transpose is substituted.

The algebraic helpers prove nondegeneracy rather than assume invertibility of the flow derivative. Form invariance implies injectivity, hence surjectivity in finite dimension, which gives YJ(η∘Y)=Jη. A nonzero determinant of the bilinear form yields (det Y)²=1. The ±1 conclusion is exactly the blueprint target, even though a Hamiltonian flow has determinant +1. This alternative to obtaining invertibility from flow_c is sound and covers the wider z∈Ω^(1/2) domain of the symplectic theorem.

The three canonical results use the chain rule and that proved J-intertwining identity. Open U and membership of Φ(z) in U give the local holomorphy needed for derivatives; the orbit result uses genuine two-sided HasDerivAt data and restriction of scalars. No future orbit, confinement, inverse, or bracket-preservation conclusion is an input. Form-preservation premises in the separately named linear-algebra helpers are legitimate conditional statements; the main flow theorem supplies their premises by proof.

## Declaration inventory

All names below have namespace `KAM.Canonical`. Locators refer to `KAM/Canonical/<file>.lean`. Every new named declaration is included, including the three private helpers; public structure-generated fields are absent because this package adds no structure.

| Blueprint node / role | Lean declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| flow helper | `gauge_fderiv_le` (FlowInverse:47) | PASS | One-variable complex Cauchy estimate at radius 1/(2ν(v)); v=0 handled separately. Stronger helper: no finite-dimensional assumption. |
| flow helper | `flow_mem_half` (FlowInverse:96) | PASS | Private helper: displacement ≤ ε ≤ 1/2 gives the required closed-ball containment. |
| flow helper | `flow_back` (FlowInverse:106) | PASS | Private helper: uniqueness on [-1,0] or [0,1] for shifted genuine solution curves. |
| flow (c) | `flow_c` (FlowInverse:132) | PASS | Exact design type; both inverse identities, both half-interior memberships, and 2ε gauge derivative estimate. |
| flow helper | `imCLM` (FlowInverse:172) | PASS | Definition: componentwise imaginary part as a continuous real-linear map. |
| flow helper | `imCLM₂` (FlowInverse:176) | PASS | Definition: product of the two componentwise imaginary-part maps. |
| flow helper | `imCLM₂_apply` (FlowInverse:179) | PASS | Exact coordinate evaluation of the new real-linear map. |
| flow helper | `mem_range_realInclusion₂_iff` (FlowInverse:183) | PASS | Real locus equals zero imaginary part in both blocks, including n=0. |
| flow (e) | `flow_e` (FlowInverse:196) | PASS | Exact two-block signature; Picard iterates and their factorial convergence preserve the real locus. R2-02 remains a consumer obligation. |
| symplectic / canonical helper | `symplFormC_add_left` (SymplecticForm:37) | PASS | Elementary bilinearity identity for the existing form. |
| symplectic / canonical helper | `symplFormC_smul_left` (SymplecticForm:42) | PASS | Complex linearity, with no complex conjugation. |
| symplectic / canonical helper | `symplFormC_neg_left` (SymplecticForm:47) | PASS | Elementary additive identity. |
| symplectic / canonical helper | `symplFormC_antisymm` (SymplecticForm:52) | PASS | Correct sign for Σ(v_I w_θ − v_θ w_I). |
| symplectic / canonical helper | `symplFormC_add_right` (SymplecticForm:57) | PASS | Right bilinearity derived from antisymmetry. |
| symplectic / canonical helper | `symplFormC_smul_right` (SymplecticForm:63) | PASS | Complex bilinearity rather than a Hermitian form. |
| symplectic / canonical helper | `symplFormC_sub_left` (SymplecticForm:68) | PASS | Elementary subtractivity identity. |
| symplectic / canonical helper | `symplFormC_eq_zero_of_forall` (SymplecticForm:74) | PASS | Nondegeneracy proved by testing both coordinate basis families. |
| symplectic / canonical helper | `symplFormC_eq_of_left` (SymplecticForm:84) | PASS | Equality derived from proved nondegeneracy. |
| symplectic / canonical helper | `clm_apply_prod'` (SymplecticForm:91) | PASS | Coordinate expansion of any continuous complex-linear functional; no analytic premise needed. |
| symplectic / canonical helper | `symplFormC_hamiltonianJ` (SymplecticForm:102) | PASS | Correct sign: ω(Jℓ,w)=−ℓ(w), using the frozen field convention. |
| symplectic / canonical helper | `symplBilin` (SymplecticForm:112) | PASS | Definition: genuine complex bilinear form packaging the existing symplFormC. |
| symplectic / canonical helper | `symplBilin_apply` (SymplecticForm:118) | PASS | Evaluation agrees with the underlying form on the entire carrier. |
| symplectic / canonical helper | `det_eq_one_or_neg_one` (SymplecticForm:122) | PASS | Conditional linear-algebra helper; cancels nonzero form determinant to obtain (det Y)²=1. |
| symplectic / canonical helper | `map_hamiltonianJ_comp` (SymplecticForm:151) | PASS | Conditional linear-algebra helper; form invariance implies injectivity, finite-dimensional surjectivity and YJ(η∘Y)=Jη. |
| symplectic / canonical helper | `hasDerivAt_symplFormC` (SymplecticForm:174) | PASS | Product rule for two real-time curves in the complex phase space. |
| symplectic / canonical helper | `symplFormC_fderiv_field` (SymplecticForm:196) | PASS | Differentiates the frozen Hamiltonian field; obtains −D²φ(u,w). Open-domain holomorphy pays derivative regularity. |
| symplectic / canonical helper | `fderiv_fderiv_symm` (SymplecticForm:224) | PASS | Holomorphic regularity supplies C²; symmetry is proved with isSymmSndFDerivAt. |
| symplectic / canonical helper | `symplFormC_fderiv_field_skew` (SymplecticForm:235) | PASS | Skewness follows from the two preceding identities and antisymmetry; not assumed. |
| symplectic / canonical helper | `eq_of_hasDerivAt_Ioo` (Symplectic:42) | PASS | Continuity on the closed interval plus zero derivative on its interior suffices, including negative t. |
| symplectic / canonical helper | `continuousOn_flow_fderiv_time` (Symplectic:61) | PASS | Restricts the jointly continuous derivative from flow_b to fixed z. |
| symplectic / canonical helper | `fderiv_flow_zero` (Symplectic:68) | PASS | The variational integral equation at time zero gives the identity map. |
| symplectic / canonical helper | `hasDerivAt_flow_fderiv` (Symplectic:76) | PASS | FTC applied to flow_b, with integrability, local continuity and eventual equality supplied on (-1,1). |
| symplectic / canonical helper | `continuousOn_symplFormC_apply` (Symplectic:112) | PASS | Continuous coordinate products/sums of Y(t)v and Y(t)w. |
| symplectic / canonical helper | `flow_symplFormC` (Symplectic:127) | PASS | Variational equation and Hessian skewness give zero time derivative; endpoint continuity extends conservation to [-1,1]. |
| symplectic | `symplectic` (Symplectic:157) | PASS | Exact design type: form invariance, functional-bracket invariance and determinant ±1 at every permitted time. |
| symplectic / canonical helper | `flow_fderiv_J` (Symplectic:177) | PASS | Private conditional helper: open-domain chain rule plus the already proved symplectic form identity. |
| canonical (a) | `canonical_bracket` (Symplectic:206) | PASS | Exact design type; preserves the bracket and gives DifferentiableAt of the pullback. |
| canonical (b) | `canonical_field` (Symplectic:225) | PASS | Exact design type; DΦ·X_(H∘Φ)=X_H∘Φ, with holomorphy only on a neighbourhood of the image point. |
| canonical (c) | `canonical_orbit` (Symplectic:238) | PASS | Exact design type; chain rule after restricting scalars to ℝ transfers genuine HasDerivAt solutions on any J. |

## Definitions and imports

Exactly three definitions are new:

| Definition | Classification and whole-carrier meaning |
|---|---|
| `imCLM` | Intended linear object on every complex coordinate vector: z ↦ (Im zᵢ)ᵢ. No branch or fallback. |
| `imCLM₂` | Intended product real-linear map on every pair: (z,w) ↦ (Im z,Im w). No branch or fallback. |
| `symplBilin` | Intended complex bilinear packaging of the existing symplFormC; evaluation equality is proved on all v,w. No fallback. |

All three are in `@[expose] public noncomputable section`. No new abbrev, structure, instance or ambient norm is introduced. `symplFormC` itself is pre-existing in Setting, not redefined here. The pre-existing total `flow` has a fallback outside its existence locus; C5-5 never relies on that branch: every use is under SmallField and the appropriate gauge-interior premise, where flow_a/flow_b apply.

The module DAG is acyclic: FlowInverse → FlowRegular/RealRestriction; Symplectic → FlowRegular/SymplecticForm; SymplecticForm → Setting/Regularity and Mathlib linear algebra/calculus. The extra helper module introduces no reverse dependency or unplanned later-package dependency. Symplectic needs no FlowInverse import under the proved nondegeneracy route.

A recursive source-import scan finds 33 project modules in the closure, **no provider import and no frozen theorem import**. Its six frozen imports are definitions only: `ComplexStrip`, `HamiltonianVectorField`, `HamiltonianVectorFieldC`, `IsPrimaryOnStrip`, `IsRealOnReals`, `OmegaZero` (all in `KAM/Frozen/Defs/`, each manifest state SEALED). Their bodies were inspected; the frozen real SymplecticForm was also checked for sign correspondence. Therefore there is no DRAFT_SORRY theorem in this dependency closure. No theorem under `KAM/Frozen/{Iso,Nekhoroshev,Planetary}/Theorems/` is implemented or imported by this package.

## Independent checks and exact receipts

All Lean-related commands were run serially, with `LEAN_NUM_THREADS=1` and niceness 5. Builds used the mandated compile gate, which invokes `nice -n 5 lake build`. No heartbeat, recursion-depth, or synthesis-budget override was used. The second target includes SymplecticForm as its dependency; no separate concurrent build was run.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c55 KAM.Canonical.FlowInverse
```

Exit 0; exact output:

```text
[inp-gate] slot 1 acquired 04:20:55 for KAM.Canonical.FlowInverse
Build completed successfully (2906 jobs).
```

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c55 KAM.Canonical.Symplectic
```

Exit 0; exact output:

```text
[inp-gate] slot 1 acquired 04:21:06 for KAM.Canonical.Symplectic
Build completed successfully (2941 jobs).
```

### Signature probes and every public theorem's axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C55Audit.lean
```

Exit 0. The scratch file contained the six fresh expected declarations and the six type_of% checks described above, plus `#print axioms` for **all 33 new public theorems**. There were no warnings or errors. Exact output:

```text
'KAM.Canonical.gauge_fderiv_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_c' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.imCLM₂_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.mem_range_realInclusion₂_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_e' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_add_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_smul_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_neg_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_antisymm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_add_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_smul_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_sub_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_eq_zero_of_forall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_eq_of_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.clm_apply_prod'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_hamiltonianJ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplBilin_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.det_eq_one_or_neg_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.map_hamiltonianJ_comp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.hasDerivAt_symplFormC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_fderiv_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.fderiv_fderiv_symm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplFormC_fderiv_field_skew' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.eq_of_hasDerivAt_Ioo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_flow_fderiv_time' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.fderiv_flow_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.hasDerivAt_flow_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_symplFormC_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_symplFormC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.canonical_bracket' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.canonical_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.canonical_orbit' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The scratch file was deleted after verification. Private helper bodies are covered transitively by these axiom checks and by replay of their containing modules.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.FlowInverse KAM.Canonical.SymplecticForm KAM.Canonical.Symplectic
```

One invocation, exit **0**; exact output:

```text
replaying KAM.Canonical.Symplectic
replaying KAM.Canonical.SymplecticForm
replaying KAM.Canonical.FlowInverse
```

### Lint and immutable surfaces

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely for the brief-authorized generated-root exception. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (390 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint checks pass, including frozen guard and all 144 frozen ABI hashes. `KAM.lean` was left untouched as required.

`git diff --check inp...HEAD`: exit 0, no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty output. A direct forbidden-token/resource-option search on the three new modules has no matches. All three have copyright comments, `module`, public imports, module docstrings and exposed public sections; their complete file lengths are 256, 246 and 263 lines, below the 1500-line cap. Lint supplies the corresponding whole-project module/frozen/ABI checks.

## Notes, errata, deviations and remaining boundaries

1. **R2-02 respected, transport still belongs to the consumer.** Design L344 says “11b: three-block gauge, flow_a..e verbatim.” Audit-2 L38–42 correctly limits flow_e to the two-block carrier. The package implements that exact signature and its handoff explicitly acknowledges the regrouping obligation. N11b must provide an explicit real-preserving coordinate regrouping and flow transport (or a separately proved general real-subspace wrapper) before invoking it. Nothing here proves that consumer step or generalizes the N11b symplectic form.
2. **Known blueprint typo, pre-existing.** `blueprint-N/parts/p5-canonical-maps.tex:59` prints “symmetrically ... $T_->-1$.” The required left-endpoint extension is $T_-<-1$. This is already recorded in `PART145-LEAN-DESIGN.md:360`. C5-5 assumes no such incorrect endpoint inequality and uses the established flow_a/flow_b conclusions. No blueprint or frozen repair was made by this audit.
3. **Design-route deviations accepted.** Reality is proved by invariant Picard iterates rather than a separate real continuation argument. Symplectic invertibility comes from nondegeneracy plus finite dimension rather than flow_c. SymplecticForm is an additional lower helper module. These changes preserve every specified premise and conclusion, and are paid by checked proofs.
4. **Housekeeping.** The handoff says SymplecticForm has 244 lines; the audited file actually has 246. This is a count discrepancy only. The orchestrator must regenerate the generated root at integration as the brief anticipates.
5. **Source/proof boundaries.** No new suspected pinned-source erratum or Lean statement defect was found. The item above is a known blueprint defect, not a new claim against Pos93. This report independently verifies C5-5 proofs and their blueprint/signature correspondence; it does not certify unrelated package bodies or discharge downstream N/P analytic/consumer obligations.

Auditor changes: this report only. No unresolved C5-5 mathematical or kernel-check uncertainty remains.
