# I-R3BP provider handoff (branch inp-ir3bp, 63688ce; off inp with I-G1 and I-HEAD SEALED, plus inp-p85 (P8-5, delivered); offloaded package run by the main orchestrator; prover on claude-12)

PROVIDER PACKAGE for the frozen I-R3BP (KAM.Iso.restricted_near_circular, KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean, DRAFT_SORRY) — the last unsealed theorem of track I.


**Files:** KAM/Provider/Iso/RestrictedNearCircular.lean (only file changed; ~75 lines).

**Approach:** section P of IPart58Signatures.lean verbatim. `R3bpParams` from the six frozen binders; `r3bp_headData`;
one call of the SEALED frozen `KAM.Iso.all_time_confinement` (imported as `import KAM.Frozen.Iso.Theorems.AllTimeConfinement`,
private import) to get `εH`; `r3bp_core hp hεH` for `μ₀ d R`; `isOpen_nearCircular_region`, `nearCircular_nonempty`;
per `μ`, `z₀`: perturb data, `w₀`, frozen-theorem solution `zt`, `hrest`; uniqueness by `restricted_unique`.
No new lemmas; imports only R3bp.Constants/HeadData/Uniqueness + the frozen sealed theorem; no other provider.

**Checks:**
- Gate build `KAM.Provider.Iso.RestrictedNearCircular`: "Build completed successfully (9268 jobs)"; no warnings in my file.
- Exact-type probe (untracked `.lake/abi-scratch/ProbeR3bp.lean`, deleted afterwards): both `type_of%` directions
  and `@provider = @frozen := rfl` elaborated with NO errors.
- `#print axioms KAM.Provider.Iso.restricted_near_circular`: [propext, Classical.choice, Quot.sound].
- `scripts/lint_sources.sh`: check_lean_modules PASS; FROZEN-ANCHOR GUARD OK; ABI HASHES OK (144).
  It also prints "KAM.lean is out of date; run scripts/gen_root_imports.py" — this is not caused by my change
  (only a provider, which the root file skips changed); I did not touch KAM.lean (rule 10). Orchestrator should regenerate.

**Uncertainties / errata / deviations:** none. No heartbeat issues, no set_option, file far below 1500 lines.
Frozen anchor not sealed (per brief).

AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §2, the Part 8 provider rows, §11.2 binder-by-binder table, section P of IPart58Signatures.lean; corrected audit brief inp-audit-package.md §4 (a provider MAY import a SEALED frozen theorem); blueprint-I I-R3BP): (1) PROVIDER EXACT TYPE: re-run the exact-type probe yourself (untracked file in .lake/abi-scratch/: import the frozen module and the provider; example : type_of% @KAM.Iso.restricted_near_circular := @KAM.Provider.Iso.restricted_near_circular and the converse; delete afterwards); (2) every frozen binder consumed as §11.2 says; the quantifier order of μ₀ d R (constants chosen from (a±, e±) and ε_H only, before μ and z₀); no premise smuggled; (3) the frozen KAM.Iso.all_time_confinement import: verify it is SEALED in manifest/frozen-anchors.json; no DRAFT_SORRY anchor and no other provider imported; (4) consumption of r3bp_core, r3bp_headData, perturb data, restricted_unique (graph predecessors), not a shortcut; (5) hygiene and axioms. Audit git diff a1f36d2..63688ce.
