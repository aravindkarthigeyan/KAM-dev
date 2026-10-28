# P8-5 prover handoff (branch inp-p85, c1f3255; contains inp-p84 and inp-p83 (delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Iso/R3bp/Constants.lean` (195 lines). No other file touched (KAM.lean not regenerated: lint reports "KAM.lean is out of date", sub-orchestrator to run gen_root_imports.py).

**Declarations (signatures verbatim from IPart58Signatures.lean):** shellNu, r3bpMu0, r3bpD, r3bpR (defs); r3bp_constants_pos, r3bp_small, delaunay_radius_bounds, delaunay_energy, exactMu2_safe_pos, delaunay_orbit_bounds, r3bp_core. Extra helper (new, unfrozen): `shellNu_pos`.

**Approach:** as in design §9 P8-5. exactMu2_safe_pos by unfolding `shiftEps` with `safe_radii`; constants via `lt_min`/`min_le_*`; r3bp_small via `lt_div_iff₀`; adapters via `orbitMapR_radius_bounds`/`orbitMapR_energy` with `eccOf_pos_lt_one`; orbit bounds from `kRmin_le`/`le_kRhoMax` and the energy identity (`planeSq p ≤ 2/radius q ≤ 2/rmin`, `Real.sqrt_le_sqrt`); r3bp_core: `exists_delaunay_preimage`, `w₀ = ((2π)⁻¹•w.1,(2π)•w.2)`, Kepler `transfer`, `Collision.shell_exclusion`, `1 < R` from `rmin ≤ ρmax < 1`.

**Checks:** `inp_lake_build.sh /root/code/KAM-inp-p85 KAM.Iso.R3bp.Constants` → "Build completed successfully"; only warning in my file: unused `hp` in `r3bp_small` (kept: signature verbatim). `scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only note: KAM.lean out of date (expected). No sorry/axiom/heartbeat overrides.

**`#print axioms`** (r3bp_core, r3bp_constants_pos, r3bp_small, delaunay_orbit_bounds, exactMu2_safe_pos, delaunay_energy, delaunay_radius_bounds): all `[propext, Classical.choice, Quot.sound]`.

**Uncertainties / errata / deviations:** none. No signature changed; no heartbeat issues. Quarantine respected (imports only Collision, PeriodOne, HeadData).

AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P8-5, §11.2 (what the I-R3BP provider consumes from r3bp_core); audits PART58-design-audit-{1,2}.md; blueprint-I R3BP constants and core): (1) statements = design and blueprint (shell constants ν, μ₀, d, R, positivity, μ₀ ≤ 1/2; r3bp_core with ε_H taken as a parameter, as §11.2 requires — the frozen I-HEAD is NOT imported here); (2) every premise discharged (transfer, orbitMapR_energy, orbitMapR_radius_bounds, P8-1 collision); (3) hygiene. Audit ONLY the P8-5 module(s) (git diff inp-p84...HEAD restricted to KAM/Iso/R3bp/).
