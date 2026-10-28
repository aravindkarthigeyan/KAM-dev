# C5-5 prover handoff (branch inp-c55, 919092f; contains inp-c56 (C5-6, delivered); offloaded package run by the main orchestrator; prover on claude-12)


## Files (new; all committed on inp-c55)
- `KAM/Canonical/FlowInverse.lean` (256 lines): `gauge_fderiv_le` (helper), `flow_c`, `flow_e` (+ helpers
  `imCLM`, `imCLM₂`, `mem_range_realInclusion₂_iff`).
- `KAM/Canonical/SymplecticForm.lean` (244 lines, helper module): `symplFormC` algebra, nondegeneracy,
  `symplFormC_hamiltonianJ`, `symplBilin`, `det_eq_one_or_neg_one`, `map_hamiltonianJ_comp`,
  `hasDerivAt_symplFormC`, `symplFormC_fderiv_field`, `fderiv_fderiv_symm`, `symplFormC_fderiv_field_skew`.
- `KAM/Canonical/Symplectic.lean` (263 lines): `eq_of_hasDerivAt_Ioo`, `hasDerivAt_flow_fderiv`,
  `fderiv_flow_zero`, `flow_symplFormC`, `symplectic`, `canonical_bracket`, `canonical_field`, `canonical_orbit`.
No existing file was edited; KAM.lean not regenerated (the sub-orchestrator must run scripts/gen_root_imports.py;
`scripts/lint_sources.sh` reports "KAM.lean is out of date" for that reason, which predates my work as well).

## Nodes
- `flow` (c): `KAM.Canonical.flow_c`; `flow` (e): `KAM.Canonical.flow_e`;
- `symplectic`: `KAM.Canonical.symplectic`; `canonical` (a),(b),(c): `canonical_bracket`, `canonical_field`, `canonical_orbit`.
All signatures verbatim from `.drafts/design/NPart145Signatures.lean` (no hypotheses added or changed).
`flow_c`'s first four conjuncts use `flow_a` uniqueness on the shifted curves `s ↦ X^{s±1} z`.

## Approach
- flow_c: shift solution + `flow_a` uniqueness; derivative bound by the one-variable Cauchy estimate in the gauge
  (`Complex.norm_deriv_le_of_forall_mem_sphere_norm_le` on `s ↦ W(X^t(z+sv) - (z+sv))`, radius `1/(2ν(v))`).
- flow_e (R2-02 binding note: signature is the verbatim two-block statement; the three-block regrouping is the
  consumer's job and is NOT done here). Proof differs from the design plan (no real ODE / continuation): the Picard
  iterates of `FlowPicard` stay in `ker Im` (integral commutes with the ℝ-linear map `imCLM₂`; `F` preserves real
  points), and converge to the flow by `picard_flow_estimate`, so `Im(flow) = 0`.
- symplectic: `Y(τ) = DX^τ(z)` has `Y' = DF(X^τ z) Y` on `(-1,1)` (FTC on the variational integral equation of
  `flow_b`); `DF = DX_φ` is symplFormC-skew by symmetry of `D²φ` (`ContDiffAt.isSymmSndFDerivAt`), so
  `ω(Yv,Yw)` is constant, `Y(0) = 1`. Y injective by nondegeneracy, hence surjective (finite dim.), giving
  `Y J(η∘Y) = Jη` (the "YJYᵀ = J" clause). `det Y = ±1` via `LinearMap.BilinForm.toMatrix_comp` and
  `nondegenerate_iff_det_ne_zero`. flow_c is not needed.
- canonical_*: chain rule + `poissonBracket_eq_fderiv_field` + `map_hamiltonianJ_comp`.

## Checks (all run in /root/code/KAM-inp-c55)
- Gate builds: `inp_lake_build.sh /root/code/KAM-inp-c55 KAM.Canonical.SymplecticForm KAM.Canonical.FlowInverse` and
  `... KAM.Canonical.Symplectic`: "Build completed successfully", no warnings, no `sorry`, no `set_option`.
- `#print axioms` of `symplectic`, `canonical_bracket`, `canonical_field`, `canonical_orbit`, `flow_c`, `flow_e`:
  `[propext, Classical.choice, Quot.sound]` each.
- `scripts/lint_sources.sh`: check_lean_modules PASS (390 Lean files); no over-100-char lines, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only
  complaint "KAM.lean is out of date" (generated; orchestrator regenerates; three new modules need to be added).

## Uncertainties / design signals
- No heartbeat problems. One whole-declaration timeout while developing `flow_symplFormC` was due to an
  unnormalised `ContinuousOn.comp` unification, fixed by factoring out `continuousOn_symplFormC_apply` (not a budget issue).
- The 1500-line cap is not approached (largest 263 lines).

## Suspected errata / deviations
- None in the pinned sources. Deviation from the design *plan* only (not from signatures): flow_e proof route (above);
  `symplectic` does not use flow_c; an extra helper module `SymplecticForm` (not in the design module table).

AUDIT FOCUS (design docs/tracks/N/design/PART145-LEAN-DESIGN.md row C5-5 and proof plan; binding audit-2 notes incl. R2-02 (flow_e consumer wording); audits PART145-design-audit-{1,2}.md; blueprint-N p5 symplectic, canonical, flow (c), (e)): (1) statements = blueprint and signature (the time-t map is symplectic/canonical; the inverse flow; flow (c) and (e) exactly as the signature file, with R2-02 respected); (2) proofs sound (variational equation from flow_b; symplecticity via the derivative of the symplectic form along the flow); (3) the module split respects the DAG; (4) hygiene. Audit ONLY the C5-5 module(s) (git diff inp-c56...HEAD restricted to KAM/Canonical/).
