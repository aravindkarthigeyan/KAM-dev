# I-HEAD provider handoff (branch inp-ihead, d4156b3; off inp with I-G1 SEALED (e81fb67); offloaded package run by the main orchestrator; prover on claude-12)

PROVIDER PACKAGE for the frozen I-HEAD (KAM.Iso.all_time_confinement, KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean, DRAFT_SORRY).


**Files:** KAM/Provider/Iso/AllTimeConfinement.lean (only file changed; ~100 lines).
**Declarations:** `KAM.Iso.Confinement.part3_tori` (premise-free: `part3_tori_of hd hne @KAM.Iso.isoenergetic_kam @KAM.volume_not_diophantine_le`),
`KAM.Iso.Confinement.confinement_main` (by_cases B'.Nonempty; empty case ε₀ = 1; else `confinement_main_of_tori` with `part3_tori`),
`KAM.Provider.Iso.all_time_confinement` (packs frozen binders into HeadData/PerturbData, calls confinement_main).
**Imports:** KAM.Iso.Confinement.Main, KAM.Iso.Charts.Tori (public); frozen I-G1 (`KAM.Frozen.Iso.Theorems.IsoenergeticKam`) and G3 (`KAM.Frozen.Theorems.VolumeNotDiophantineLe`), both sealed (private imports). No DRAFT_SORRY anchor imported.
**Checks:**
- `lake build KAM.Provider.Iso.AllTimeConfinement` via gate: success, no warnings in my file.
- Exact-type probe (untracked, deleted): `example : type_of% @KAM.Iso.all_time_confinement = type_of% @KAM.Provider.Iso.all_time_confinement := rfl` plus both-direction `type_of%` exact examples: all elaborate, no errors.
- `sh scripts/lint_sources.sh`: check_lean_modules PASS (385 files); FROZEN-ANCHOR GUARD OK; ABI HASHES OK (144).
- `#print axioms` of `KAM.Provider.Iso.all_time_confinement` and `confinement_main`: [propext, Classical.choice, Quot.sound].
**Uncertainties / errata / deviations:** none. No heartbeat issues. `part3_tori` and `confinement_main` live in namespace `KAM.Iso.Confinement` (design placement), defined in the provider module. Frozen files, manifest, KAM.lean untouched; not sealed.

AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §2 premise policy, Part 5 rows hd-eps/hd-fix/hd-sol/hd-uniq, §11.1 binder-by-binder table, section P of IPart58Signatures.lean; PART123 design §8 for part3_tori; blueprint-I I-HEAD): (1) PROVIDER EXACT TYPE: re-run the exact-type probe yourself (untracked file in .lake/abi-scratch/: import the frozen module and the provider; example : type_of% @KAM.Iso.all_time_confinement := @KAM.Provider.Iso.all_time_confinement and the converse; delete afterwards); (2) every frozen binder is consumed as §11.1 says; no premise smuggled; the empty-B' case (ε₀ = 1) is legitimate; (3) part3_tori discharges IG1Statement and G3Statement only with the SEALED frozen theorems (KAM.Iso.isoenergetic_kam, KAM.volume_not_diophantine_le) — verify both anchors are SEALED in manifest/frozen-anchors.json and that the frozen-anchor guard accepts these imports; no DRAFT_SORRY anchor or other provider is imported; (4) the provider consumes the graph predecessors (confinement_main_of_tori, Part 3, Part 5), not a shortcut; (5) hygiene and axioms of the provider. Audit git diff inp...HEAD (ee49a8e..d4156b3).
