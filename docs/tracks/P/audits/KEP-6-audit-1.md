# KEP-6 independent audit 1

Verdict: **PASS WITH NOTES** for the KEP-6 infrastructure package implementing `bpI:p7:symplectic`. No mathematical or statement-fidelity blocker found. The package introduces no provider export and seals no frozen anchor; “seal-ready” is therefore not an applicable claim. All seven designed theorem interfaces and both public definition bodies match the design appendix. Notes concern pre-existing lint failures, one new whitespace defect, and a design-plan notation typo.

Audited on 2026-10-28 in `/root/code/KAM-inp-kep6`, HEAD `1b224954ca2be4ad7dbca5caa9d2d2904d4ccb7c`. Comparison command: `git diff inp...HEAD`. Recorded `inp` tip: `9415aec0ff2ff12402d6556302a5ce5406aeb353`; merge base: `1a23e2345e80c1cc5f2d0f70fba4b5b51d77174f`. The three-dot comparison contains exactly two new Lean files (1,087 lines).

The user's explicit absolute report path overrides the generic brief's MAIN-worktree output instruction. Only this report was written outside `.lake/abi-scratch/`; no source, frozen file, manifest, generated file, or git state was edited. The existing untracked handoff was preserved.

## Scope and authority

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the KEP-6 handoff, design §§2.2, 7, 7.1 and Appendix A, `blueprint-I/parts/p7-delaunay.tex` (especially lines 205–240), track I/N/P statement conventions, the actual frozen `Phase`, `symplecticForm`, and `hamiltonianVectorField`, and the relevant existing Kepler definitions and analytic facts. Inspected both new files in full.

The standalone untracked `KeplerSignatures.lean` was absent from this checkout and the main inp draft directory. Used its verbatim tracked transcription in `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`, Appendix A.1 (KEP-6 interfaces at lines 1150–1218). This supplies exact local authority without relying on the handoff's whitespace-match assertion.

I-KEPLER (`KAM.Iso.kepler_bordered_det`, frozen `Iso/Theorems/KeplerBorderedDet.lean`) is an existing, distinct determinant theorem, already sealed through its own provider. KEP-6 neither proves nor imports it. No track I/N/P frozen theorem is a new export of this package. Consequently frozen-provider ABI and seal-body probes are N/A; equivalent exact-type/application probes were run against the seven designed KEP-6 interfaces.

## Declaration-by-declaration results

Names below are in `KAM.Kepler`; J = `KAM/Kepler/DelaunayJacobian.lean`, S = `KAM/Kepler/DelaunaySymplectic.lean`.

| Node / role | Declaration and locator | Verdict | Reason |
|---|---|---|---|
| Explicit columns | `orbitMapColumn` (J:188) | PASS | Exact designed formula on its entire total carrier; body equality checked by `rfl`. |
| Differentiation helper | `hasDerivAt_eccAnom_curve` (J:150) | PASS | Chain rule and differentiated Kepler equation for any differentiable real curves with `abs(e(t)) < 1`; derivative denominator proved positive. |
| Differentiation helper | `hasDerivAt_orbitMapR_curve` (J:207) | PASS | Four-column chain rule under `0 < L`, `0 ≤ e < 1`. Includes circular endpoint; assumes curve derivatives, not the target orbit derivative. |
| Differentiation helper | `fderiv_apply_eq_of_hasDerivAt_line` (J:237) | PASS | General normed-space calculus identity; differentiability guard is necessary for total `fderiv`. |
| Differentiation helper | `hasDerivAt_orbitMapR_line` (J:246) | PASS | Specializes the proved curve rule to affine lines, including `e = 0`. |
| Explicit columns | `fderiv_orbitMapR_basis` (J:257) | PASS | Exact designed binders/type, including strict `0 < e`; no newly added premise. |
| Eccentricity helper | `eccOf_data` (J:272) | PASS | Derives both eccentricity bounds and radicand positivity from `0 < G < L`. |
| Eccentricity helper | `hasDerivAt_eccOf_line` (J:280) | PASS | Derives `(G² a/L³ − G b/L²)/e` from the square-root formula on the open cone. |
| Explicit columns | `fderiv_delaunay_basis` (J:326) | PASS | Exact designed four-column conjunction and coefficients, including signs and action powers. |
| `bpI:p7:symplectic` | `delaunay_symplectic` (S:447) | PASS | Exact `IsSymplecticOn 1 delaunay deDom`; all tangent vectors and all points of `0 < G < L`. |
| Liouville primitive | `delaunayGen` (S:485) | PASS | Exact `2 L e sin u`; body equality checked by `rfl`. |
| Liouville identity | `delaunay_liouville` (S:616) | PASS | Exact identity `p·Dq(u) = L u_ell + G u_g + DF(u)` for every tangent vector. |
| Derivative existence | `delaunay_hasFDerivAt` (S:658) | PASS | Exact designed statement; analytic regularity is supplied by KEP-5. |
| Invertibility | `delaunay_fderiv_equiv` (S:664) | PASS | Exact designed continuous-linear-equivalence witness with equality to the actual derivative. |
| Hamiltonian transport | `delaunay_hamiltonianVectorField` (S:698) | PASS | Exact designed type; only pointwise differentiability of H at the image is needed, stronger locality than blueprint's open-domain C¹ hypothesis. |

The six additional public calculus/domain helpers have no separate prescribed blueprint signatures. Each proves an ordinary calculus or cone fact used to implement the designed node; none assumes canonicity, invertibility, a primitive identity, or transport. They introduce no constants or changed carriers. All 13 public theorems passed the axiom audit.

## Definition classification (all 13 new definitions)

| Definition(s) | Classification and full-carrier behavior |
|---|---|
| `orbitMapColumn` (J:188) | Explicit total rational/trigonometric expression for four rotated columns. Uses the existing total anomaly, square root, and real division. Derivative claims are restricted to the appropriate nonsingular domain. No `if`, choice, fabricated derivative, or conclusion-dependent branch. |
| `delaunayGen` (S:485) | Explicit total scalar `2 L e sin u`; its geometric meaning and derivative identity are asserted on `deDom`. No fallback branch. |
| Private `b0`, `b1`, `b2`, `b3` (S:250–253) | The four fixed coordinate basis vectors of `Phase 2`, on their entire carrier. |
| Private `colF0`, `colF1`, `colF2`, `colF3` (S:295–309) | Explicit unrotated rational columns with independent real parameters `L,e,c,s,k,D`. The displayed formulas define them everywhere; identities require the actual algebraic relations and nonzero denominators. |
| Private `genDℓ`, `genDL`, `genDe` (S:489–498) | Explicit partial-derivative expressions in intermediate `(ell,L,e)` coordinates. `genDL` deliberately holds e fixed; the later chain rule adds its e(L,G) contribution. No global derivative meaning is claimed at singular parameters. |

No new abbreviation, structure, typeclass instance, or bundled proof assumption.

## Proof and DAG review

The source imports only Mathlib and earlier shared Kepler modules. Recursive inspection of imports from `DelaunaySymplectic` visited 50 local modules with no cycle, provider, or frozen theorem module. `DelaunaySymplectic:14` **publicly imports** `DelaunayJacobian`; the latter imports only Basic, Plane, Energy, Equation and Orbit. This is the permitted two-file split explicitly anticipated by design §7.1, line 498 (“split into two files if needed”). Consumers retain the designed facade import. Both files are Lean modules with copyright, `module`, public imports, module docstrings and `@[expose] public noncomputable section`; lengths are 355 and 732 lines.

The private `br01`–`br23` (S:50–140) genuinely prove six rational identities. Their assumptions are only `D ≠ 0`, `k ≠ 0`, `L ≠ 0`, `s²+c²=1`, `k²=1−e²`, and `D=1−ec` (some unused). Every denominator-clearing step is justified. `col_hyps` (S:340) derives these relations from real trigonometry and `0 ≤ e < 1`, with L positivity supplied separately. `col_br01`–`col_br23` remove the rotation and instantiate these certificates. No bracket is a public premise.

At the Delaunay level the intermediate brackets `(01,02,03,12,13,23) = (0,−1,0,−k,Le/k,0)` become `(0,−1,0,0,−1,0)` by the proved eccentricity chain rule and `G=Lk`. `symp_of_basis` then expands arbitrary vectors in the actual coordinate basis. The frozen form is `dp∧dq`, so these minus signs are correct; preservation of it also preserves its negative, the blueprint's `dq∧dp`.

Likewise `lv0`–`lv3` (S:142–198) use only those same derived scalar relations. Their four column identities are combined with the independently proved derivative of `2Les`, including eccentricity dependence. Thus the Liouville identity is for the actual `fderiv`, with no appeal to the zero value of `fderiv` at a non-differentiable point. Invertibility is deduced from nondegeneracy and finite-dimensional injectivity/surjectivity. The Hamiltonian proof uses `dH(v)=Ω(v,X_H)`, the chain rule, symplecticity and surjectivity; it does not presume the desired transport law.

No Euclidean norm/carrier substitution or period normalization occurs. Internal angles remain radians; conversion to period one belongs to later packages. The matrix/curve formulations in the blueprint are represented by the designed bilinear-form, derivative-equivalence and vector-field interfaces. Separate matrix and trajectory corollaries are not exported by KEP-6; they are not missing clauses of the approved design signatures.

## Independent checks

All commands ran from `/root/code/KAM-inp-kep6`. The final validation sequence used `LEAN_NUM_THREADS=1`, `nice -n 5`, and one Lean-bearing command at a time. No heartbeat, synthesis, recursion, or other resource override was used.

1. Targeted build, through the required compile gate:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep6 KAM.Kepler.DelaunaySymplectic
```

Exit **0**. The gate runs `nice -n 5 lake build`. Relevant output:

```text
[inp-gate] slot 1 acquired 01:23:55 for KAM.Kepler.DelaunaySymplectic
⚠ [9087/9096] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9096 jobs).
```

The two warnings belong to unchanged dependency code. The targeted build covers both new modules; it did not clean or rebuild the library from scratch.

2. Exact interfaces, definition bodies and axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP6Audit.lean
```

Exit **0** after correcting a scratch-only missing `noncomputable section` (the first scratch run exited 1 for that reason). The probe imported only the public `DelaunaySymplectic` facade, copied the seven designed theorem declarations under fresh names, and supplied `by exact` bodies applying the implementation to exactly its explicit arguments. For each copied declaration it also elaborated `example : type_of% @expected_name := @KAM.Kepler.name`. Both design definitions were copied under fresh names and compared with implementation by function equality `rfl`.

Axiom output, verbatim:

```text
'KAM.Kepler.hasDerivAt_eccAnom_curve' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_orbitMapR_curve' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.fderiv_apply_eq_of_hasDerivAt_line' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_orbitMapR_line' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.fderiv_orbitMapR_basis' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eccOf_data' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_eccOf_line' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.fderiv_delaunay_basis' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_liouville' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_hasFDerivAt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_fderiv_equiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay (one invocation for both modules):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.DelaunaySymplectic KAM.Kepler.DelaunayJacobian
```

Exit **0**, complete verbose output:

```text
replaying KAM.Kepler.DelaunayJacobian
replaying KAM.Kepler.DelaunaySymplectic
```

Both new module objects were replayed successfully, including their private bracket and Liouville certificate proofs.

4. Source lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, with the complete output:

```text
Lean lines over 100 characters:
/root/code/KAM-inp-kep6/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-kep6/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-kep6/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-kep6/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (268 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The stale root is the brief's allowed exception. The four overlong lines are an additional baseline failure: `git show 1a23e2345e80c1cc5f2d0f70fba4b5b51d77174f:KAM/Kepler/Orbit.lean` contains exactly the same lengths at 36, 38, 57 and 199. They are not introduced by this package. Current inp has since corrected them, but the required comparison is three-dot against the merge base. Module-system, frozen-anchor and all 144 frozen ABI checks passed. Thus the global lint command did not pass except for the root exception; this is recorded explicitly rather than reported as a clean run.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit **0**, empty output. Forbidden-token/option scan of both new modules: no matches. Recursive local import traversal: 50 modules, no cycle and no provider/frozen-theorem imports.

6. `git diff --check inp...HEAD`: exit **2**, output (the final space is rendered as `[space]`):

```text
KAM/Kepler/DelaunaySymplectic.lean:721: trailing whitespace.
+  rw [sf_comm, hAv][space]
```

This is a new, nonblocking whitespace defect. Suggested correction: remove the single trailing space at S:721. No code was edited by the auditor.

## Suspected defects, deviations and limitations

- **Design notation typo, nonblocking:** `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md:502` writes the bracket expression “`sum_i (d p_i/d a)(d q_i/d b) - (d q_i/d a)(d p_i/d b) = delta_{ab}`”. A skew form cannot equal the Kronecker delta (diagonal brackets are zero, not one). Replace the right side by `symplecticForm e_a e_b` in the stated coordinate order; the six independent values are `0,−1,0,0,−1,0`. The implementation correctly proves these values. This is a design-text defect, not a pinned-source erratum or a proof deviation.
- **Lint baseline:** four old overlong lines in `Orbit.lean`, beyond the allowed generated-root exception; exact locations above. No new-file line-length violation.
- **New whitespace:** S:721, as above.
- **Audit execution deviation:** the initial lint command was started while the targeted build command was outstanding, before noticing that lint itself invokes Lean for ABI checking. That initial lint invocation also lacked the explicit single-thread environment. Lint was therefore rerun after build completion with `LEAN_NUM_THREADS=1` and inherited niceness 5; the signature probe and kernel replay were then run sequentially. No resource-budget override was used. This does not constitute a proof defect, but the initial scheduling did not enforce the requested serialization.
- No suspected defect in a pinned mathematical source was found. The blueprint expressly describes symplecticity here as a direct verification of its own; this audit checked that proof and its exact Lean objects, and does not claim a new independent transcription audit of Chi05.
- No new frozen theorem is closed, and no I/N/P headline closure follows from this infrastructure audit. The two-file split is authorized by the design. The only missing standalone design artifact was handled using its tracked verbatim appendix.

Final artifact validation: report whitespace check passed; all auditor-created probe/log files in `.lake/abi-scratch/` were removed. The final source hashes match the audited files. No unresolved mathematical uncertainty within the seven designed KEP-6 interfaces remains.
