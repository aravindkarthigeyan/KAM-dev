# N3-6 / N3-3 independent package audit 1

Date: 2026-10-27. Auditor marker: `audit-n3-63`.

Overall: **PASS WITH NOTES** for N3-6 Maximal solutions and **PASS WITH NOTES** for N3-3 Periodic uniform data. No provider or frozen anchor exists; seal-body/provider-identity checks are inapplicable. This is infrastructure acceptance, not a frozen theorem seal. The only hygiene exception is the explicitly permitted stale generated root.

## Snapshot and authority

Worktree: `/root/code/KAM-inp-n3w3`, branch `inp-n3w3`, HEAD `d0c88f6baad787a65995ff751ed011f81b43c59d`.

Actual package base: `22c7beb752fa458494ce78d891f6722b229225b2`. Exactly two commits follow it: `6a45e68` (N3-6) and `d0c88f6` (N3-3). The complete package diff adds only `KAM/ODE/Maximal.lean` (346 lines) and `KAM/ODE/UniformPeriodic.lean` (98 lines).

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the entire `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, track-N statement packet, binding design Appendix A sections C/F and general carrier decisions, blueprint-N Part 3 conventions and the three specified nodes, and the imported project definitions/proof interfaces. No external source claim was needed beyond the supplied blueprint authority.

Baseline note: at inspection `inp` resolved to `7dbe2e061221a19be6aeabec66230c22304a7ed3`; `git merge-base inp HEAD` was HEAD itself. Thus the requested literal `git diff inp...HEAD` was empty because integration had advanced. I also inspected `git diff 22c7beb..HEAD`, which exposes both original package commits. An empty current triple-dot diff was not treated as evidence of an empty package.

## Declaration inventory and signature identity

All names below are in `KAM.ODE`. Locators are in the package snapshot. The four design theorem signatures were compared byte-for-byte from `theorem <name>` up to `:=`, preserving binder names, order, implicitness, and all conclusions; each matched. `eIoo`'s entire definition and `IsMaximalSolution`'s entire structure body also matched byte-for-byte. A temporary Lean probe independently re-elaborated all four theorem signatures copied from Appendix A and supplied the corresponding implementation theorem at each exact signature.

| Node / role | Declaration and locator | Verdict | Reason |
|---|---|---|---|
| Extended interval | `eIoo`, Maximal:37 | PASS | Exact design formula on all EReal endpoints. |
| gen-maximal predicate | `IsMaximalSolution`, Maximal:42 | PASS | Exact five design fields; maximality includes every interval through zero. |
| Interval helper | `mem_eIoo_iff`, Maximal:51 | PASS | Literal membership equivalence, no premise. |
| Interval helper | `eIoo_bot_top`, Maximal:54 | PASS | Both infinite endpoints give all real times. |
| Interval helper | `ordConnected_eIoo`, Maximal:59 | PASS | Monotone real-to-EReal coercion; includes empty intervals. |
| Interval helper | `isOpen_eIoo`, Maximal:64 | PASS | Strict inequalities pulled back by continuous coercion. |
| Prover-chosen helper | `IsMaximalSolution.isSolution_of_mem`, Maximal:68 | PASS | Membership and two-sided derivative, not a within-derivative or only one conjunct. |
| Predicate helper | `zero_mem_eIoo`, Maximal:73 | PASS | Projects the strict endpoint signs. |
| Topological helper | `isOpen_of_ordConnected_of_no_endpoints`, Maximal:78 | PASS | Valid elementary auxiliary theorem; each point lies in an internal open interval. |
| Extension step (private) | `extend_right`, Maximal:89 | PASS | Glues at an included greatest endpoint with two one-sided derivatives; otherwise preserves the interval. |
| Extension step (private) | `extend_open`, Maximal:155 | PASS | Reverses time and extends the other end, then proves no endpoints remain. |
| bpN:p3:gen-extend | `gen_extend`, Maximal:194 | PASS | Exact Appendix A signature and full blueprint conclusion. Nonempty interval is a source premise. |
| Time-reversal helper | `IsMaximalSolution.neg`, Maximal:203 | PASS | Exact Appendix A signature, swaps endpoints to `-Tp,-Tm`, solves `-F`. |
| Gluing data (private) | `GoodInterval`, Maximal:235 | PASS | Literal open interval/initial-value/solution record used inside the union construction. |
| Maximal existence (private) | `exists_maximal`, Maximal:244 | PASS | Constructs all maximality fields from local existence, overlap uniqueness, and extension. |
| Uniqueness step (private) | `eIoo_subset_of_maximal`, Maximal:308 | PASS | Applies the other maximal solution's defining property. |
| Endpoint step (private) | `left_eq_of_eIoo_subset`, Maximal:314 | PASS | Gives `Tm' ≤ Tm`; signs exclude degenerate/empty interval ambiguity. |
| Endpoint step (private) | `right_eq_of_eIoo_subset`, Maximal:322 | PASS | Gives `Tp ≤ Tp'`; same nondegeneracy safeguard. |
| bpN:p3:gen-maximal | `gen_maximal`, Maximal:331 | PASS | Exact Appendix A signature; unique endpoints and `EqOn` on the open interval only. |
| bpN:p3:gen-uniform-periodic | `gen_uniform_periodic`, UniformPeriodic:35 | PASS | Exact Appendix A signature; uniform constants chosen before centers and ball points. |

Generated constructor/projection declarations for the two structures carry precisely their displayed fields; they add no mathematical premise to the existence theorems.

## Expanded binder audit

Bins: T = TYPING, S = SOURCE, ST = STANDING, R = RULED, X = EXCESS. There are no R or X inputs. Each listed binder is a separate input even where a row shares an explanation. Local helper premises are judged against the helper's stated elementary claim, not promoted to source results.

Common general-layer context (inherited only where Lean retains it):

| Binder | Bin | Authority |
|---|---|---|
| `E : Type*` | T | Part 3 conventions; design §0.1. |
| `[NormedAddCommGroup E]` | T | Real normed ambient space. |
| `[NormedSpace ℝ E]` | T | Real differentiation. |
| `[ProperSpace E]` in gen_extend/gen_maximal | ST | Part 3 finite-dimensional/proper standing convention; design §0.1. |

Exact designed theorem binders:

| Theorem | Binder | Bin | Source locator / meaning |
|---|---|---|---|
| gen_extend | `F` | T | gen-extend field. |
| gen_extend | `W` | T | gen-extend domain. |
| gen_extend | `hW` | S | “open set W”. |
| gen_extend | `hF` | S | “F be C¹”. |
| gen_extend | `J` | T | gen-extend time set. |
| gen_extend | `hJ` | S | “an interval”. |
| gen_extend | `hne` | S | “J ≠ ∅”. |
| gen_extend | `y` | T | Candidate total curve. |
| gen_extend | `h` | S | IsSolIn hypothesis. |
| gen_maximal | `F` | T | gen-maximal field. |
| gen_maximal | `W` | T | gen-maximal domain. |
| gen_maximal | `hW` | S | “open set W”. |
| gen_maximal | `hF` | S | “F be C¹”. |
| gen_maximal | `x₀` | T | Initial point. |
| gen_maximal | `hx₀` | S | “x₀ ∈ W”. |
| IsMaximalSolution.neg | `F` | T | Design F time-reversal helper. |
| IsMaximalSolution.neg | `W` | T | Solution domain. |
| IsMaximalSolution.neg | `x₀` | T | Initial point. |
| IsMaximalSolution.neg | `Tm` | T | Left endpoint. |
| IsMaximalSolution.neg | `Tp` | T | Right endpoint. |
| IsMaximalSolution.neg | `z` | T | Representative. |
| IsMaximalSolution.neg | `h` | S | A maximal solution, expanded below; this helper transforms an existing object. |
| gen_uniform_periodic | `n` | T | Part 3 periodic carrier; no positive-dimension premise. |
| gen_uniform_periodic | `U` | T | Action domain. |
| gen_uniform_periodic | `F` | T | Field on the product of sup-norm coordinate spaces. |
| gen_uniform_periodic | `hU` | S | gen-uniform-periodic: U open. |
| gen_uniform_periodic | `hF` | S | C¹ on Rⁿ × U. |
| gen_uniform_periodic | `hper` | S | Periodicity on W for every integer angle shift. |
| gen_uniform_periodic | `K` | T | Action set. |
| gen_uniform_periodic | `hK` | S | K compact. |
| gen_uniform_periodic | `hKU` | S | K ⊆ U. |

These 31 theorem-specific binders comprise T=17, S=14, ST=0, R=0, X=0; add the shared ambient context and the properness instance for each applicable theorem. The maximality record is a conclusion of gen_maximal, never an input to its existence proof. The uniqueness half universally quantifies both endpoint pairs and curves and takes the two maximality records as its two source comparison premises, exactly as the blueprint's uniqueness assertion.

Expansion of every project-owned assumption bundle: `IsSolutionIn F W J y` means `∀ t ∈ J, y t ∈ W ∧ HasDerivAt y (F (y t)) t` (Basic:41–42). `IsMaximalSolution` has five clauses: `Tm < 0`, `0 < Tp`, `z 0 = x₀`, that solution predicate on `eIoo`, and universal inclusion/agreement for every competing interval solution through x₀. Each is SOURCE when the helper assumes an existing maximal solution. `UniformData` is an output, with `δ > 0`, `M ≥ 0`, closed-ball inclusion in W, the norm bound on every such ball, and `LipschitzOnWith L` on every ball (Lipschitz:52–57). `L : ℝ≥0` supplies nonnegativity without another premise.

For `isSolution_of_mem`, each of `F,W,x₀,Tm,Tp,z,t` is TYPING and each of `h,ht` is SOURCE for this projection helper (T=7, S=2, X=0). Expanding h gives the five SOURCE fields above. The output is literally `z t ∈ W ∧ HasDerivAt z (F (z t)) t`; no regularity, uniqueness result, or requested derivative is assumed separately.

Other new public helpers: `mem_eIoo_iff` has typing inputs `a,b,t`; `eIoo_bot_top` has none; `ordConnected_eIoo` and `isOpen_eIoo` have typing inputs `a,b`. `zero_mem_eIoo` has typing inputs `F,W,x₀,Tm,Tp,z` and source input h, expanded above. `isOpen_of_ordConnected_of_no_endpoints` has typing input S and exactly the three source inputs hS (order connectivity), hlo (a smaller internal point), hhi (a larger internal point). No additional typeclass or bundled analytic assumption occurs.

## Definition classification

`eIoo`: literal definition, not a selected object. BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. Empty/reversed/infinite endpoint cases have their ordinary set meanings; no `toReal` conversion truncates infinities.

`IsMaximalSolution`: literal Prop-structure spelling out the blueprint's maximality property. BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. This is not a definition selecting “the” solution from an unproved existence result. Existence and restricted uniqueness are separately proved by gen_maximal.

Private `GoodInterval`: literal proof-local record of openness, order connectivity, zero membership, initial value, and the solution predicate. BODY_MATCH: OK; PUBLIC_CARRIER: OK (private); WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. Each field is actually supplied by local existence or extension.

No new definitions occur in UniformPeriodic. Local choices in exists_maximal: the interval is the union of all GoodIntervals; at an internal time the proof chooses any representative, and hz_key proves its value agrees with every eligible representative using overlap uniqueness. Outside the union it assigns x₀, exactly as blueprint step max-glue explicitly permits. This is an existentially constructed total representative with proved choice independence on its entire claimed solution domain, not a public canonical global solution. Arbitrary outside values enter no solution claim or uniqueness claim.

## Refutation attempts and proof review

Endpoint gluing: included endpoints require two-sided derivatives, not merely equality on J. extend_right proves derivatives within both Iic b and Ici b, then uses their union = univ (Maximal:122–133). Reversal genuinely changes F to -F. No illicit equality of total representatives follows from equality on a closed or open time set.

Extended-real bookkeeping: the nonempty union contains zero by local existence (248–252). Tm and Tp are sInf/sSup of the real-coercion image (253–254) in the complete lattice EReal, so no missing real boundedness assumption arises. Openness supplies strict neighbors for each member (255–265). Conversely, sInf/sSup strict inequalities produce actual real witnesses, and order connectivity through zero puts the intermediate point in the union (266–277). At uniqueness, real-between witnesses and the strict signs at zero prove the endpoint inequalities even for infinite endpoints (314–328). The proof does not use addition or subtraction of indeterminate infinities.

Total representatives: gen_maximal concludes only `EqOn z z' (eIoo Tm Tp)` (331–343). It does not claim equality outside the maximal interval. This matches the current blueprint statement and final proof sentence at p3:251–267, including the earlier review's corrected warning about total representatives.

Periodic uniformity: δ=min(δ₀,1)>0; the compact cell is [-1,2]ⁿ × cthickening δ K. Compactness and inclusion provide one M,L before the center x is quantified. The same integer shift floor(x.1) is used for all points of each ball. Its action component is zero; the product max norm controls each angle coordinate and the action distance. Periodicity is applied only at the translated point already proved in W, and translation preserves edist. Empty K is valid: Mathlib cthickening_empty is empty, and the compact-thickening theorem covers it. For positive δ and compact K, cthickening equals the union of closed balls (Mathlib Thickening:552), hence matches the blueprint's existential thickening. No infDist-empty convention is imported. Fin 0 poses no floor/coordinate exception because coordinate claims are universally quantified.

## Verification receipts

Commands ran sequentially for Lean operations; no clean/cache/update operation, frozen edit, generated-file edit, or state-changing git command was performed. Temporary probes/logs were confined to `.lake/abi-scratch/` and removed after recording the results.

1. `git diff inp...HEAD --stat`: empty (advanced integration ref; see snapshot note).
2. `git diff --numstat 22c7beb..HEAD`:

```text
346  0  KAM/ODE/Maximal.lean
98   0  KAM/ODE/UniformPeriodic.lean
```

`git diff --exit-code 22c7beb..HEAD -- KAM/Frozen manifest KAM.lean README.md` and `git diff --check 22c7beb..HEAD`: no output, exit 0.

3. `LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3w3 KAM.ODE.Maximal KAM.ODE.UniformPeriodic` (gate invokes `nice -n 5 lake build`):

```text
[inp-gate] slot 2 acquired 22:04:47 for KAM.ODE.Maximal KAM.ODE.UniformPeriodic
Build completed successfully (2844 jobs).
```

Exit 0. This was a targeted build against the existing overlay, not a clean rebuild.

4. `LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/audit-n3-63.lean`: exit 0. The probe contained four Appendix-A-signature examples, the literal eIoo equation, cthickening_empty, and `#print axioms` for every new public theorem. Exact axiom output:

```text
'KAM.ODE.mem_eIoo_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.eIoo_bot_top' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.ordConnected_eIoo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.isOpen_eIoo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.IsMaximalSolution.isSolution_of_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.zero_mem_eIoo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.isOpen_of_ordConnected_of_no_endpoints' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_extend' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.IsMaximalSolution.neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_maximal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_uniform_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

5. `LEAN_NUM_THREADS=2 sh scripts/lint_sources.sh`: exit 1 solely for the permitted stale root; exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (241 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No forbidden proof escape, resource override, oversized file, line-length problem, module-header defect, or EuclideanSpace use was reported. Both files contain copyright, module, public imports, module docstrings and `@[expose] public noncomputable section`. No provider or frozen module is directly imported by either package; the clean axiom closure also excludes transitive sorryAx dependence.

6. One and only one kernel replay invocation:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.Maximal KAM.ODE.UniformPeriodic
```

Exact output:

```text
replaying KAM.ODE.UniformPeriodic
replaying KAM.ODE.Maximal
```

Exit 0. No second replay was run.

## Findings, uncertainties, errata, deviations

No mathematical defect, signature drift, conclusion-shaped existence premise, weakened source conclusion, or suspected blueprint/source erratum found in this scope. No implementation deviations introduced. The stale KAM.lean warning is the audit brief's explicit allowed integration note, not an instruction to edit the generated file. Current inp advancement explains the empty prescribed triple-dot diff; the original base comparison prevents that moving ref from hiding the package.

The report concerns the supplied blueprint/design and these two package commits. It does not independently certify every upstream ODE source correspondence, any Hamiltonian specialization, or any frozen gate. Imported proof dependencies are covered by the exported axiom checks and the kernel replay, not by a new full mathematical audit of every imported theorem.
