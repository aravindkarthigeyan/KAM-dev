# P8-4 independent package audit

Overall verdict: **PASS WITH NOTES** for P8-4's two helper results. No material mathematical or statement-fidelity defect found. This package proves input data for I-HEAD; it does not prove or seal a frozen theorem. Frozen-anchor/provider ABI and seal-body checks are therefore **not applicable**, rather than passed by a helper substitution.

Audited 2026-10-28 in `/root/code/KAM-inp-p84`, HEAD `e8bfea542ec1763f349f84681c2b030e9f7529c9`. The requested `git diff inp...HEAD` against `inp` at `53fd5275a5e6b56352932d45d6237d4228c1f9a0` contains exactly `KAM/Iso/R3bp/HeadData.lean` (93 lines). The handoff's original `inp-p83...HEAD` comparison includes unrelated merges; those are excluded, as explicitly clarified by the orchestrator. Report location follows the user's exact worktree path, overriding the generic brief's main-worktree destination. No source or git state was changed. Temporary probes were confined to `.lake/abi-scratch/` and removed.

## Contracts and declaration ledger

Read the audit brief, AGENTS.md, PLAN/DECISIONS, current handoff, Track I statement, design §8.1/P8-4, §12/P8-4, Appendix N (lines 1662–1686), Part 5 setting/consumer tables, both PART58 design audits, blueprint `p8-r3bp.tex:170–184`, the upstream period-one and nondegeneracy contracts, Safe, and the frozen I-HEAD type and relevant definitions. The historical design audits are design evidence only; the checks below use actual proved imports.

All names below have prefix `KAM.Iso.R3bp`.

| Node / object | Declaration and source line | Verdict | Reason |
|---|---|---|---|
| `p8:head-data`, Hamiltonian | `r3bpH`, 37 | PASS | Literal period-one Kepler Hamiltonian with κ=(2π)² and Ω=1/(2π). |
| `p8:head-data`, strip radius | `r3bpS₀`, 40 | PASS | Exactly `exactDelta (safeK am ap em ep) / (2π)`. |
| `p8:head-data`, action radius | `r3bpR₀`, 41 | PASS | Exactly `2π * exactDelta (safeK am ap em ep)`. |
| `p8:head-data(a)`; `hd-h`, `hd-sets` | `r3bp_headData`, 44–58 | PASS | Exact design type, only parameter premises; every HeadData field proved. |
| `p8:head-data(b)`; `hd-f` | `r3bp_perturbData`, 62–87 | PASS | Exact design type; only parameter premises and `0 ≤ μ < μ₂`; all PerturbData fields proved on the full prescribed complex domain. |
| `p8:head-data(c)` | Dependence in the three definitions and `exactMu2 (safeK ...)`, `exactCF (safeK ...)` | PASS | All constants fixed by the four region parameters, before μ. No additional choice or wider dependence introduced. |

The signatures match the design Appendix, including implicit parameter and μ binders, η=1, the same function `tildeF`, and ε=`μ * exactCF (safeK ...)`. Reordering the displayed product CF·μ uses real commutativity and changes no bound. The frozen I-HEAD type (`AllTimeConfinement.lean:45–70`) is represented field-for-field by `HeadData`/`PerturbData` in `Confinement/Setting.lean:80–112`; only the intended later smallness premise ε<ε₀ is omitted from PerturbData. There is no extra nonemptiness premise on B', no extra holomorphy or determinant premise, and no assumed output bundle.

## Proof and field audit

`r3bp_headData` obtains `SafeAction (safeK ...)` from `safe_inclusions`, `kRhoMax < 1` from `safe_radii`, and the scaled-action inclusion from `safe_domain`. These are proved dependencies, not new hypotheses.

| Field | Actual construction |
|---|---|
| `BaseData.hs`, `.hr`, `.holo` | `period_one hK hρ hKB`, with the exact two radii; no radius change. |
| `BaseData.real` | `keplerRotH_real` and imaginary part of a real coercion. The upstream identity actually holds on all real actions under Lean's total division; the theorem consumes it only on the required action tube. |
| `HeadData.isOpen`, `.bounded`, `.nonempty` | First three outputs of `safe_domain hp`. |
| `HeadData.iso` | `nondeg_exact` supplies both `0 < I 0` and determinant `3 / I 0 ^ 4` on the real slice of the entire action neighborhood. Positive denominator makes this nonzero; no unbordered Hessian substitution. |
| `HeadData.isOpen'`, `.compact`, `.inside` | Corresponding outputs of `safe_domain hp`. |
| `HeadData.hη` | `one_pos`. |
| `PerturbData.holo`, `.periodic`, `.bound` | The μ-instance of `period_one`, rewriting `abs_of_nonneg h0`. The sup bound remains pointwise on the entire complex product, not only real points. |
| `PerturbData.real` | Apply the real clause at `(θ,I)` for arbitrary real θ and any real I whose inclusion lies in the action tube. Every real angle lies in the positive strip, so there is no hidden θ restriction. |
| `PerturbData.nonneg` | Choose I∈B from `safe_domain`, embed it in the positive action tube at distance zero, and use the bound at `(0,toC I)`: `0 ≤ ‖f(0,toC I)‖ ≤ μ CF`. This remains valid at μ=0 and does not assume CF positivity. |

## Definition classification and notes

The complete new-definition inventory is three `def`s, no `abbrev` or `structure`. All three are explicit intended formulas on their whole declared carriers, exposed by the enclosing `@[expose] public noncomputable section`. There is no local choice, branch, fallback or substituted object. The radii are total formulas for all real parameter tuples; positivity is asserted only under `R3bpParams`. `r3bpH` uses the existing total rational Kepler function, with every singularity-sensitive theorem restricted to the proved positive-first-action domain.

**N1 (nonblocking, inherited representation convention):** blueprint `p8-r3bp.tex:171` says the perturbation is “extended by ... 0 outside” the complex product. Actual imported `PeriodOne.lean:52–53` defines `tildeF K μ z := μ * exactF K (periodOneMapC z) μ` as a total formula, without that explicit zero-extension branch. P8-4 neither introduces nor relies on an off-domain value: all five PerturbData fields concern the stated domain or its real slice. Thus these helpers establish the intended I-HEAD premises. If the blueprint's global zero extension is meant as literal function identity rather than a permissible totalization, its wording should acknowledge the existing total-formula representative. No zero-outside identity was proved or used here.

**N2 (expected integration task):** generated `KAM.lean` lacks the new import. The brief explicitly permits this lint exception and assigns regeneration to the orchestrator. The auditor did not edit generated files.

Import closure inspection traversed 92 local KAM modules (53 frozen definition modules): **no provider or frozen theorem module occurs**, hence no DRAFT_SORRY theorem is imported and no frozen-theorem manifest-state exception is needed. Mathlib's imported infrastructure is upstream. In particular I-HEAD and I-R3BP remain outside this package's proof dependencies.

## Independent verification

Targeted build, via the required compile gate:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p84 KAM.Iso.R3bp.HeadData
[inp-gate] slot 1 acquired 04:02:14 for KAM.Iso.R3bp.HeadData
Build completed successfully (9138 jobs).
exit 0
```

The gate invokes `nice -n 5 lake build`. Replayed upstream warnings: unused `hm`/`hκ` at `KAM/Kepler/Energy.lean:106` and unused section instance at `KAM/ODE/Exit.lean:36`; no diagnostic in HeadData. No library clean, cache retrieval, or dependency update was performed.

Probe command (after the build):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P84Audit.lean
'KAM.Iso.R3bp.r3bp_headData' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.r3bp_perturbData' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

The probe copied both exact design result types and applied the exports to their explicit binders; it also checked all three definition equations by `rfl`. These are helper-contract probes, not frozen-provider type or seal probes. The first probe run had a probe-only namespace typo (`KAM.Kepler.keplerRotH` instead of `KAM.Iso.keplerRotH`); corrected and rerun successfully without changing production code. These are the only new public theorems, and neither has `sorryAx` or any other extra axiom.

Independent kernel replay, exactly the package module and no unrelated merge modules:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.R3bp.HeadData
replaying KAM.Iso.R3bp.HeadData
exit 0
```

Lint was initially invoked as `sh scripts/lint_sources.sh`; it returned exit 1 with only the permitted stale-root warning, module PASS, frozen guard OK and ABI hashes OK. Because that first invocation did not explicitly set the requested thread count or niceness for its ABI subprocess, it was repeated below with the environment and scheduling prefix, after all other audit Lean commands completed. Build, explicit probe runs and replay each used `LEAN_NUM_THREADS=1` and were serialized. The lint script itself invokes Lean for its ABI check, so the final lint run was also treated as a Lean operation.

Final lint rerun:

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (387 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

This is the explicitly permitted generated-root exception, not an unqualified lint exit-0 claim. No other lint error occurred. The new file has the copyright/license/authors header, `module`, public imports, module docstring and public exposed section; 93 lines, below 1500. Direct forbidden-token/option scan found no matches. No resource-budget override was used.

```text
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
(no output; exit 0)
git diff --check
(no output; exit 0)
```

Final uncertainties and errata: no suspected external pinned-source defect or mathematical blueprint defect established by this package audit. N1 records the exact inherited blueprint/global-representative discrepancy; N2 records the expected generated-root integration work. The exported helper statements and their proofs need no repair. This audit does not independently re-audit the previously delivered P8-2/P8-3 packages or certify an I-R3BP root seal. No proof-source deviations were introduced by the auditor; the initial lint invocation and corrected probe typo are recorded above. Only this report was written outside temporary scratch.
