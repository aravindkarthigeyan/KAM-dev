# P5-2 independent audit 1

**Verdict: PASS WITH NOTES for package P5-2.** No mathematical, statement-fidelity, premise-discharge, or kernel defect found in the added module. The note is a repository-wide lint failure inherited from the package base, detailed below. The expected generated-root warning also remains.

This is an infrastructure package, not a frozen-anchor provider or seal. **I-HEAD (`KAM.Iso.all_time_confinement`): no seal verdict; not made seal-ready by P5-2.** Its frozen body remains unchanged. There is no P5-2 provider export against which a frozen ABI/seal-body probe could be run; those two provider-specific checks are inapplicable. No track N/P anchor is claimed by this package.

## Scope and evidence

Audited worktree: `/root/code/KAM-inp-p52`; HEAD `cdfb8c699fa24221966c689e145e031d2dc174ed`; comparison branch `inp` at `f56dab7c4b2a96d2fd66dd13f585d7e144927ae9`; merge base `441fed0cf02e55611c521d5f1e86f3f04f27c2c2`.

`git diff inp...HEAD` adds exactly `KAM/Iso/Confinement/RealHam.lean` (275 lines), with no other tracked changes. The existing untracked `P5-2-handoff.md` was read and preserved. Only this report was written outside the permitted `.lake/abi-scratch/` probes; no state-changing git command was run.

Read the package audit brief, AGENTS, PLAN, DECISIONS, the handoff/AUDIT FOCUS, design §8.1 and section B (lines 983–1061), `blueprint-I/parts/p5-confinement.tex:26–53`, the I-HEAD track statement and frozen declaration, the relevant frozen domain/Hamiltonian/solution definitions, Setting, and the real-restriction and ODE APIs used by the proof. This audit checks the package against those repository specifications; it makes no new claim to independently verify a pinned external PDF.

All 14 public theorem headers are identical to design section B modulo whitespace (including binders and conclusions). An untracked Lean probe copied those design statements as `example`s, proved each by application of the corresponding package theorem, and queried every public theorem's axioms. It elaborated successfully. There are no widened constant dependencies or new conclusion-shaped assumptions.

## Declaration results

All names in this table are in `KAM.Iso.Confinement`; line numbers refer to `RealHam.lean`.

| Node / role | Declaration | Verdict | Reason / note |
|---|---|---|---|
| real domain | `isOpen_realAct` (62) | PASS | Continuous preimage of an open union of complex balls; no openness of B needed. |
| real domain | `subset_realAct` (66) | PASS | Self-center witness uses precisely `0 < r₀`. |
| real-ham (d), domain | `toC_pair_mem_fractD` (70) | PASS | Real angle has zero imaginary part; `min s₀ 1 / 2` and `r₀ / 2` are positive. |
| real-ham (a), values | `realHam_eq` (83) | PASS | Frozen real Hamiltonian equals the complex sum since both summands are real. |
| real-ham (a), regularity | `realHam_contDiffOn` (106) | PASS | Holomorphic sum on the open complex domain; restrict scalars and compose with the real inclusion and real part. |
| real-ham (a), period | `realHam_periodic` (120) | PASS | Exactly period-one integer angle shifts; actions unchanged. |
| real-ham (b) | `realHam_field_eq` (142) | PASS | Both fields identified through `realInclusion₂`; all reality, domain, and local agreement premises supplied. |
| real-ham (c), regularity | `realHam_field_contDiffOn` (171) | PASS | `ham_reduction` on the open enlarged domain, then restriction to `ℝ² × B`. |
| real-ham (c), period | `realHam_field_periodic` (177) | PASS | Full shift invariance of the enlarged open set and Hamiltonian periodicity established. |
| real-ham (c), solution | `realHam_solution_iff` (195) | PASS | Correct orientation of the I-solution equivalence from `ham_reduction`; retains differentiability in the frozen predicate. |
| real-ham (d) | `realHam_fderiv_bound` (206) | PASS | Same `F₁ * ε`, sup/operator norm, and real action carrier; proves differentiability as well as the norm bound. See conditional interface note below. |
| real-ham (e) | `realHam_sub_le` (241) | PASS | Exact perturbation real part, bounded by its complex norm and then ε. |
| ham-energy specialization | `realHam_energy_const` (249) | PASS | Solution equivalence supplies differentiability and derivative to `ham_energy`; arbitrary order-connected J. |
| hd-uniq specialization | `realHam_unique` (258) | PASS | Both solutions lifted to the same open enlarged domain, unchanged field/time interval/initial equality. No competitor confinement assumed. |
| private domain helper | `isOpen_actionNbhd_two` (48) | PASS | Extensional equality with union of balls, valid even for empty B or nonpositive radius. |
| private domain helper | `isOpen_domain` (58) | PASS | Product of open strip and action neighborhood. |
| private membership helper | `toC_pair_mem_domain` (78) | PASS | Positive strip width and realAct membership give the exact complex domain. |
| private value helper | `realHamiltonian_eq_re_comp` (93) | PASS | Definitional identity, proved by `rfl`. |
| private analytic helper | `differentiableOn_totalH` (97) | PASS | Projection composition of `hb.holo`, plus `hf.holo`. |
| private membership helper | `mem_domain_of_realAct` (136) | PASS | Same membership expressed through the real linear inclusion. |
| private containment helper | `prod_subset` (155) | PASS | Uses `subset_realAct`, no extra domain assumption. |
| private openness helper | `isOpen_prod_realAct` (160) | PASS | Product openness, no `IsOpen B` premise. |
| private regularity helper | `realHam_contDiffOn_two` (165) | PASS | Restricts established infinite smoothness to order two. |

The package statements are stronger than the blueprint's common standing-data formulation where irrelevant headline premises are omitted: in particular, no boundedness, nondegeneracy, nonemptiness, or openness of B is needed here. Statements and carriers agree with the approved design; none is weakened.

For (d), the explicit `hD` is the separately named Part 3 complex derivative estimate (`bpI:p3:hypothesis-d`), as authorized by design B4, lines 251–253. P5-2 transfers this estimate to the real derivative; it does not establish existence/uniform dependence of `F₁`. The blueprint's `ε ≤ 1` is needed upstream to derive `hD`; once `hD` is supplied the transfer holds without that restriction. Holomorphy of f is present through `PerturbData`, as required by the design's earlier F01 correction. Thus the totalized complex derivative is not being used on an undifferentiable function. The operator norm statement implies the blueprint directional bound by applying the derivative to v; both the inclusion `(0, ι v)` and the real part are contractions, with no extra dimension factor.

## ODE premise audit

`W := univ ×ˢ realAct B r₀` is open by the continuous-preimage argument. Every action in B lies in realAct by the self-center witness and `hb.hr`. Holomorphic regularity gives `ContDiffOn ℝ 2 (realHamiltonian h f) W`. These are exactly the three premises supplied to `ham_reduction` (lines 173–174, 200–201); its pre-existing API does not require B itself to be open.

For field periodicity, integer shifts preserve W because they change only the angle. The proof establishes equality of the shifted image with W in both directions, using subtraction for the reverse inclusion (180–190), and supplies Hamiltonian periodicity on W to `ham_periodic`.

For energy, conversion to `IsHamiltonianSolutionOn` gives the differentiability of H at each trajectory point and the full `HasDerivAt` assertion required by `ham_energy` (253–254). Order-connectedness is an explicit legitimate time-domain premise.

For uniqueness (265–271), `hmono` changes only domain membership: solutions already in `ℝ² × B` remain solutions of the identical field in W. `ham_smooth_c1` supplies C¹ on W, `ordConnected_Ioo` supplies the time interval condition, `⟨ha, hb0⟩` places 0 in the interval, and h0 is the common initial value. Consequently the open-set substitution is valid without assuming `IsOpen B`. No use is made of a confinement estimate or a frozen headline theorem.

## Definition classification

There are **no new `def`, `abbrev`, or `structure` declarations** in the diff. All 23 new declarations are theorems (14 public, 9 private). The package consumes the existing Setting objects literally: `toC` is the real inclusion; `realAct` its preimage of the complex action neighborhood; `totalH` the sum; `realPart` the unperturbed real part; and `fractD` the specified smaller strip/action domain. `BaseData` and `PerturbData` contain source analytic/domain/reality/periodicity/bound premises. The derivative estimate is separately explicit, not hidden in a bundled conclusion field. No fallback or junk-valued definition is introduced or relied upon. Genuine derivatives are guarded by holomorphy on an open neighborhood before using `fderiv`.

## Independent checks

Targeted build:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p52 KAM.Iso.Confinement.RealHam
[inp-gate] slot 2 acquired 00:58:37 for KAM.Iso.Confinement.RealHam
⚠ [2841/2861] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
Build completed successfully (2944 jobs).
exit 0
```

The gate runs `nice -n 5 lake build`; the displayed job count includes cached dependency jobs, not a fresh library rebuild. No clean/update/cache command was run.

Signature/axiom probe:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P52Audit.lean
exit 0
```

The only probe diagnostics were unused/unreachable tactic warnings from the mechanical `apply ... <;> assumption` wrappers. Exact axiom output:

```text
'KAM.Iso.Confinement.isOpen_realAct' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.subset_realAct' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.toC_pair_mem_fractD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_contDiffOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_field_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_field_contDiffOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_field_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_solution_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_fderiv_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_energy_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.realHam_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (one invocation; no provider module exists in this package):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.RealHam
replaying KAM.Iso.Confinement.RealHam
exit 0
```

Lint (final rerun, after all other Lean work had finished):

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
Lean lines over 100 characters:
/root/code/KAM-inp-p52/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-p52/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-p52/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-p52/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (272 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The four line-length failures are in `KAM/Kepler/Orbit.lean:36,38,57,199` (103, 107, 102, 105 characters). That entire file is byte-identical to merge base `441fed0cf02e55611c521d5f1e86f3f04f27c2c2`; it is outside the package diff. The current `inp` tip has since corrected those lines, but this package branch retains the older baseline. Therefore full lint does **not** pass even after allowing the expected generated-root warning. This is an inherited integration limitation, not a P5-2 code finding; no unrelated repair was made. Module checks, frozen guard, and all 144 frozen ABI hashes pass.

Execution deviation: the first lint invocation used plain `sh scripts/lint_sources.sh` while the gated build request was outstanding. I initially treated it as a static check, but its final ABI stage invokes Lean; that invocation lacked the required explicit thread/niceness settings and could overlap the build. The complete lint was rerun with the displayed settings after build, probe, and replay finished. No other Lean checks were overlapped by this audit. This procedural correction does not convert the inherited lint exit 1 into a pass.


Static checks:

- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0.
- `git diff --check inp...HEAD`: no output, exit 0.
- Public signature extraction against design section B: `Public signatures: 14 design signatures: 14`; `Exact signatures modulo whitespace: True`; `Differences: []`.
- Recursive KAM import inspection: 42 modules; provider/frozen-theorem edges `[]`. Only frozen definitions are used.
- New module: 275 lines, correct copyright, `module`, public imports, module docstring and exposed public section; no forbidden proof escape, resource override, or `EuclideanSpace` occurrence.

## Defects, deviations, and limits

No new suspected blueprint or pinned-source defect was found. The design's already documented conditional derivative interface B4 and earlier F01 holomorphy repair are implemented literally, not new deviations. Upstream Part 3 must still supply the complex derivative estimate. This package proves the real-Hamiltonian infrastructure and its uniqueness/energy specializations; it does not close the confinement theorem or any source gap in the wider I/N/P campaign.
