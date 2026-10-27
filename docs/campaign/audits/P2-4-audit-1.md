# P2-4 independent audit 1

Overall verdict: **PASS**.

Audited branch `k/p2-4`, HEAD `a43c0b1fd69f2ee83d43407dfa9c7645173d0bd2`, on 2026-10-27.
The package proves the two required Appendix A declarations with the intended blueprint contracts.
No blocking, major, or minor defect was found.

## Scope and method

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit brief, P2-4 handoff and package brief,
`P23-COMMON.md`, `PROVER-COMMON.md`, and the relevant Part 2/3 design sections and Appendix A.
Compared `git diff main...HEAD`: two new modules, `KAM/Apost/Hamiltonian.lean` (409 lines) and
`KAM/Apost/Periodicity.lean` (497 lines), plus two generated imports in `KAM.lean`.
The root generator check passed; no hand edit of the generated root was needed for this audit.

Compared the declarations directly with `blueprint/parts/p2-aposteriori.tex:214-258` and `:324-355`,
and the contracts in `docs/graph/K/DEPGRAPH.md:5037-5420`. Inspected the imported standing structure,
carrier bridges, Taylor and increments statements, and frozen torsion and torsion-average definitions.
Only this report was added by the auditor; temporary probes and logs were placed in `.lake/abi-scratch/`
and removed after recording the evidence below. No state-changing git command was run.

## Node table

All declarations below are in namespace `KAM.Apost`; H means `KAM/Apost/Hamiltonian.lean`,
P means `KAM/Apost/Periodicity.lean`. The first two rows are the package's required result nodes;
the remaining rows record coverage of their graph proof steps.

| Node | Lean declaration / locator | Verdict | Reason |
|---|---|---|---|
| `bp:p2:hamiltonian` | `hamiltonian`, H:377 | PASS | Exact Appendix A signature; all five items, standing premises, carriers, and constants preserved. |
| `bp:p2:periodicity` | `periodicity`, P:447 | PASS | Exact Appendix A signature; all periodicity and realness conclusions, including the average, preserved. |
| `step:p2:ham-regular` | `differentiableOn_fderiv_h`, `differentiableOn_ham`, `differentiableOn_fderiv_ham`, `norm_fderiv_fderiv_eq`, `ham_regularity`, H:140-172 | PASS | Holomorphic regularity supplies the derivatives; the iterated derivative norm is unchanged. |
| `step:p2:ham-periodic` | `fderiv_h_translate`, `ham_translate`, `fderiv_ham_translate`, `ham_periodic`, H:178-209 | PASS | Differentiates the local translation identity twice. |
| `step:p2:ham-real` | `im_fderiv_real_direction`, `im_ham_eq_zero`, `im_sqMat_ham`, `ham_real`, H:75,212-264 | PASS | Real directional differentiation supplies real vector and matrix coordinates. |
| `step:p2:ham-symplectic` | `sumVec_omegaZero_ham`, `fderiv_fderiv_comm`, `omegaZeroMatrix_mul_sqMat_apply`, `ham_symplectic`, H:269-346 | PASS | Uses the actual Hamiltonian identity and symmetric Hessian, with the correct transpose sign. |
| `step:p2:ham-mvt` | `ham_mvt`, H:351 | PASS | Convex-ball segment, increments bound, and Taylor remainder with factor one half. |
| `step:p2:per-dk` | `isPeriodicOn_fderiv_of_shift`, `periodic_fderiv_K`, `periodic_K_snd`, P:61,99,135 | PASS | Primary identity gives periodic action component and derivative; the generic derivative lemma can be applied again for second derivatives. |
| `step:p2:per-compose` | `ham_translate_single`, `periodic_tangentMat` through `periodic_eta`, P:88-196 | PASS | Composition and algebra use the genuine frozen objects; torsion uses its differentiable carrier bridge. |
| `step:p2:per-real` | `im_sumVec_fderiv_real`, `hasRealEntries_*`, `hasRealVec_eta`, `im_action_dot`, `im_torsionAverage`, P:281-438 | PASS | Real derivatives, inverse, products, and entrywise integration establish every listed realness item. |

## Statement fidelity and hypotheses

A mechanical comparison extracted each `theorem <name> ... :=` prefix from Appendix A and its source
module and collapsed whitespace. Both comparisons returned `True`:

```text
hamiltonian: whitespace-normalized Appendix A signature equal = True
periodicity: whitespace-normalized Appendix A signature equal = True
```

The section variables in both modules also match the design: `n`, the real standing parameters,
open-domain carrier, scalar Hamiltonian, real frequency, and Diophantine constant. There is no extra
premise, existential constant with enlarged dependence, weakened conclusion, or altered norm.
`Standing` contains only the source parameter restrictions, domain/holomorphy/periodicity/realness
conditions, original derivative bounds, and Diophantine premises. No new bundled hypothesis was introduced.
The positive strip width is explicit in `periodicity`; in `ham_mvt`, positivity of beta follows
from `0 ≤ ‖w‖ < beta`, so no extra radius assumption is missing.

The public statements use max-norm finite function and pair spaces, continuous linear map derivatives,
and the `sumVec`/`sqMat` bridges. Both modules open `Matrix.Norms.Operator`. Realness means vanishing
imaginary coordinates, not a change of carrier. Periodicity is coordinatewise period one, as explicitly
allowed by design §1.4 and joined to integer shifts by the existing infrastructure.
Conditional helpers have distinct names and prove elementary closure implications; none assumes a hard
step in place of proving a package result.

## Focus checks

1. **Taylor constant and domain (H:357-372).** Positivity of beta places z in its ball; the strict
   displacement bound places z+w there. Convexity supplies the whole real segment inside the ball and
   hence inside the original domain. `increments_open` is applied to `DX_h` with derivative bound M
   from `ham_regularity`. `taylor_iteratedFDeriv` is applied to `X_h` with the original
   `iteratedFDeriv` bound `(hS.bounds x hx).2.2`. The intermediate bound is exactly
   `M / 2 * ‖w‖ ^ 2`; `M ≥ 0` justifies the final relaxation to `M * ‖w‖ ^ 2`.
2. **Real-line helper (H:57-70).** The real path `t ↦ x + (t:ℂ) • v` has derivative v.
   Restricting the complex derivative to real scalars, composing with the path and then with the
   imaginary-part continuous linear map, gives derivative `im (Df x v)`. The eventual zero identity
   supplies derivative zero of the same real function. Uniqueness equates the derivatives. No
   unjustified assumption about global realness or a complex neighbourhood of the real line occurs.
3. **Full object inventory (P:450-471).** The first group includes L, G, E, A, the Lagrangian matrix,
   h composed with K, the action component, and every action-weighted derivative f_j. The second group
   includes B, N, P, X_N, T, the symplectic defect, and eta. The realness group includes all of these
   and every entry of the frozen torsion average. No object is silently dropped.
4. **Determinant use.** Pure algebraic periodicity helpers prove stronger results without requiring
   `det G ≠ 0`, including periodicity of the total matrix inverse. `periodic_torsion` (P:178-187)
   uses invertibility to establish holomorphy of N before differentiating its columns through
   `torsion_eq_mat`; it checks both the original and shifted points. Real inverse and normal-frame
   derivative arguments similarly use invertibility (P:311-390). The main conjunction retains exactly
   the design's conditional grouping; no determinant premise is added to its first periodicity group.
5. **Average (P:427-438).** The proof unfolds the frozen entrywise integral over `[0,1]^n`, rewrites
   each real-valued integrand as a complexified real part, and applies `integral_complex_ofReal`.
   This establishes imaginary part zero without an integrability premise, valid even for the total
   Bochner integral's nonintegrable case. It does not claim existence of a nontrivial integral or
   promote a fallback value into any estimate. In the package theorem the actual torsion realness
   lemma supplies the helper's premise.
6. **Proof dependencies.** The proof uses holomorphic regularity, the Hamiltonian symplectic identity,
   increments, Taylor, real inverse, and the existing frozen-agreement/carrier results. The average's
   realness is proved directly from the entrywise integral, rather than importing the whole Tools
   average conjunction. This is a valid direct proof of the blueprint step. There is no shortcut
   through a frozen theorem or provider.

## New definition classification

| New definition | Classification | Whole-carrier check |
|---|---|---|
| `KAM.Apost.HasRealEntries`, P:206 | Elementary predicate on complex matrices | Exactly `∀ i j, (A i j).im = 0`, for arbitrary index types. No default, branch, or junk value. |
| `KAM.Apost.HasRealVec`, P:209 | Elementary predicate on complex vectors | Exactly `∀ i, (v i).im = 0`, for arbitrary index type. No default, branch, or junk value. |

There are no other new `def`, `abbrev`, or `structure` declarations. Both definitions are exposed by
`@[expose] public noncomputable section`. Existing total `fderiv`, matrix inverse, and integration
operations are used appropriately: regularity is established where derivatives have analytic meaning;
invertibility is supplied where inverse differentiation is needed; no estimate relies on a junk value.

## Hygiene and exact check evidence

Commands ran from `/root/code/KAM-w-p2-4`, with build and Lean probe execution serialized.

```sh
nice -n 5 lake build KAM.Apost.Hamiltonian KAM.Apost.Periodicity
```

Exit 0; output:

```text
Build completed successfully (2899 jobs).
```

```sh
sh scripts/lint_sources.sh > .lake/abi-scratch/P24Audit-lint.log 2>&1
cat .lake/abi-scratch/P24Audit-lint.log
```

Exit 0; output:

```text
check_lean_modules: PASS (221 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

```sh
git diff main...HEAD -- KAM/Frozen manifest
git diff --check main...HEAD
git diff --check
```

Each exited 0 with empty output. Frozen files and manifest are untouched.
Both modules have copyright headers, `module`, public interface imports, module docstrings and public
sections. No forbidden proof escape, resource override, or `EuclideanSpace` occurs in package code.
Their full file lengths, including comments, are 409 and 497, below the 1500-line cap.

Provider exact-type probe: **not applicable**. P2-4 is infrastructure and has no provider or frozen
root to seal. Neither new module imports a provider or a frozen theorem.

### Axiom probe

The probe was generated from every line beginning `theorem` in both package modules (78 results,
including helpers). Exact generation and execution:

```sh
python3 - <<'PROBE'
from pathlib import Path
import re
p = Path('.lake/abi-scratch/P24Audit.lean')
names = []
for module in ['Hamiltonian', 'Periodicity']:
    s = Path('KAM/Apost/' + module + '.lean').read_text()
    names += ['KAM.Apost.' + n for n in
              re.findall(r'^theorem\s+([^\s({:]+)', s, re.M)]
p.write_text('import KAM.Apost.Periodicity\n' +
             ''.join('#print axioms ' + n + '\n' for n in names))
PROBE
nice -n 5 lake env lean .lake/abi-scratch/P24Audit.lean > .lake/abi-scratch/P24Audit-axioms.log 2>&1
```

Exit 0. All 78 results report exactly `[propext, Classical.choice, Quot.sound]`; no additional axiom
or `sorryAx` appears. Full output:

```text
'KAM.Apost.fderiv_add_right_eq_of_eventually' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_fderiv_eq_zero_of_real_line' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_fderiv_real_direction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumVec_symm_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumVec_symm_single_im' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumVec_symm_single_inl' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumVec_symm_single_inr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.differentiableOn_fderiv_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.differentiableOn_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.differentiableOn_fderiv_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.norm_fderiv_fderiv_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_regularity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.add_angle_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.fderiv_h_translate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_translate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.fderiv_ham_translate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_ham_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.fderiv_sumVec_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sqMat_apply_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_sqMat_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumVec_omegaZero_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.fderiv_fderiv_comm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.omegaZeroMatrix_mul_sqMat_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_mvt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.add_single_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.isPeriodicOn_fderiv_of_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cast_single_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_translate_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_fderiv_K' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_lagrangeMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_h_comp_K' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_K_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_action_dot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_inv_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_normalMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_frameMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_normalFieldMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_torsion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_symDefect' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodic_eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.HasRealEntries.fromCols' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_omegaZeroMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_fderiv_real_direction_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.realPoint_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealVec_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_sumVec_fderiv_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.exists_map_of_hasRealEntries' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_map' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_inv_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_normalMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_frameMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.ham_real_of_K' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_lagrangeMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealVec_sumVec_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.isRealOnReals_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_normalFieldMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_torsion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealEntries_symDefect' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.hasRealVec_eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_action_dot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.im_torsionAverage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.periodicity' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Findings, uncertainties, errata, and deviations

- Blocking: none. No fix required.
- Major: none. No fix required.
- Minor: none. No fix required.
- Suspected pinned-source or blueprint errata: none identified in this audit. The blueprint already
  labels HL19's abbreviated periodicity assertion as a source gap; this package supplies the check.
- Deviations introduced by this audit: none. The stronger algebraic helpers and direct entrywise
  average proof preserve the required contracts.
- Scope limit: this certifies P2-4 against the current blueprint and binding design. It does not seal
  G1/G2 or certify later consumers. The handoff's separate kernel-replay claim was not independently
  repeated; this audit independently ran the targeted Lake build, Lean axiom probe, lint, and frozen ABI checks.
