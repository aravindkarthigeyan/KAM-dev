# P8-4 prover handoff (branch inp-p84, e8bfea5; contains inp-p83 (P8-3, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Iso/R3bp/HeadData.lean` (92 lines). KAM.lean not touched (sub-orchestrator regenerates; lint reports it out of date, expected).

**Nodes:** `r3bp_headData` -> `KAM.Iso.R3bp.r3bp_headData`; `r3bp_perturbData` -> `KAM.Iso.R3bp.r3bp_perturbData`; defs `r3bpH`, `r3bpS₀`, `r3bpR₀`. Signatures verbatim from IPart58Signatures.lean.

**Approach:** `safe_domain` gives the set facts; Kepler `period_one` (with `K := safeK`, `hρ := safe_radii.2.1`, `SafeAction` from `safe_inclusions`) gives `0<s₀`, `0<r₀`, holomorphy of h̃, and holomorphy/bound/periodicity/reality of f̃_μ. Reality of h̃ via `keplerRotH_real`; `iso` via `nondeg_exact` (det = 3/I₀⁴, nonzero). PerturbData: `|μ|=μ`; reality clause is the Kepler clause at `z=(θ,I)` with `toC θ ∈ complexStrip 2 s₀`; `0 ≤ μ C_F` from the bound at `(0, toC I)`, `I ∈ B` (nonempty).

**Checks:** gate build `KAM.Iso.R3bp.HeadData` succeeded, no sorry/warnings in file (only pre-existing unusedSectionVars notes from upstream). `scripts/lint_sources.sh`: no over-length lines after fix; only "KAM.lean out of date" (expected); check_lean_modules PASS; frozen guard OK; ABI hashes OK.
`#print axioms` of both theorems: [propext, Classical.choice, Quot.sound].

**Uncertainties / errata / deviations:** none. No heartbeat issues; no frozen or provider imports (imports: Mathlib, KAM.Iso.PeriodOne, KAM.Iso.Confinement.Setting, KAM.Iso.R3bp.Safe).

AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P8-4 and the Part 5 setting table (HeadData, PerturbData); audits PART58-design-audit-{1,2}.md; blueprint-I R3BP head data): (1) r3bp_headData and r3bp_perturbData = design and blueprint (the R3BP period-one Hamiltonian satisfies every HeadData / PerturbData field on the stated domain, with the stated constants); (2) no field is assumed (each is proved from Kepler period_one, nondeg_exact, exact_ham and P8-2/P8-3); (3) hygiene. Audit ONLY KAM/Iso/R3bp/HeadData.lean (the P8-4 package; P8-3 Safe.lean was audited separately). The branch also carries unrelated inp merges — ignore them.
