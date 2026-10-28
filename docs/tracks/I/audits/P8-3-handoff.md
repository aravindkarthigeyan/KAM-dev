# P8-3 prover handoff (branch inp-p83, ea93c61; contains inp-p82 (P8-2, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Iso/R3bp/Safe.lean` (~230 lines). Nothing else touched (KAM.lean not regenerated; lint notes it is out of date, expected).

**Declarations proved, all signatures verbatim from IPart58Signatures.lean section M:** `safeT`, `safeAminus/Aplus/Eminus/Eplus`, `safeU`, `safeK`, `safeB`, `safeB'` (defs);
`safeT_pos`, `safe_regionParams`, `safe_inclusions`, `safe_elements`, `safe_radii`, `kRmin_le`, `le_kRhoMax`, `safe_domain`.
Extra helpers (not in the signature file): `safeT_le_eighth`, `safeT_mul_le` (`6 ap t ≤ 1 - ρ*`), and `safe_rho_arith` (the stand-alone arithmetic lemma the design asks for).

**Approach:** as in the design §P8-3. `safe_inclusions` uses `kappa_strictAntiOn` and `Real.sqrt_lt_sqrt`; nonemptiness comes from `nearCircular_nonempty` / `nearCircular_eq_image_region`. `kRmin_le`/`le_kRhoMax` reuse `ComplexDomainAux.sInf_spec/sSup_spec` (KAM.Iso.ComplexDomain). `safe_domain` via `Homeomorph.smulOfNeZero (2π)` (open map, `image_closure`, compact image). Imports: Mathlib, KAM.Iso.ComplexDomain (Kepler SafeAction/kRmin/kRhoMax), KAM.Iso.R3bp.Region; no frozen theorem, no provider.

**Checks:** `inp_lake_build.sh /root/code/KAM-inp-p83 KAM.Iso.R3bp.Safe` → "Build completed successfully", no sorry/error in Safe. `sh scripts/lint_sources.sh`: no long-line complaints after fix; check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only note is "KAM.lean is out of date" (sub-orchestrator regenerates).
`#print axioms` of safe_domain, safe_radii, safe_inclusions, safe_elements, kRmin_le, le_kRhoMax, safe_regionParams, safeT_pos: all `[propext, Classical.choice, Quot.sound]`.

**Uncertainties / design signals:** none; no heartbeat issues, no overrides. No statement needed changing.
**Suspected errata / deviations:** none. Note: `SafeAction`, `kRmin`, `kRhoMax` live in `KAM.Iso` (ComplexDomain.lean), as used literally by the signatures.

AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md §8.1 row P8-3, section M; audits PART58-design-audit-{1,2}.md; blueprint-I R3BP safe region): (1) statements = design and blueprint (the safe parameters safeT, the enlarged window, inclusions, elements, radii bounds kRmin_le / le_kRhoMax, the safe domain); (2) definitions are the intended objects; the arithmetic lemma safe_rho_arith is correct; (3) hygiene. Audit git diff inp-p82...HEAD.
