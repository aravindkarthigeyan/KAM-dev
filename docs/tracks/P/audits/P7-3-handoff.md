# P7-3 prover handoff (branch inp-p73, 0fec970; contains inp-p72 (P7-2, delivered); offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Planetary/Poincare/Bijective.lean` (~440 lines). No other file touched (KAM.lean not regenerated:
`lint_sources.sh` prints only the expected "KAM.lean is out of date").

**Declarations (verbatim signatures):** `poincare_image`, `poincare_eq_iff`, `poincare_localDiffeo`, `poincareInv` (def,
body as in the signature file), `poincareInv_poincare`, `poincare_poincareInv`. Namespace `KAM.Planetary`.

**Approach**
- `poincare_eq_iff`: Λ, Γ from `poincare_elements`; Γ = 0 via `poincare_circular` (cos/sin of λ agree, `Real.cos_eq_one_iff`);
  Γ > 0 via `poincare_eq_delaunayMK` (private `bj_noncirc`) and `delaunayMK_eq_iff`; converse is `poincare_periodic`.
- `poincare_localDiffeo`: `D poincare` is symplectic (`poincare_symplectic`), hence injective, hence an equivalence
  (same argument as `delaunay_fderiv_equiv`, nondegeneracy re-proved locally); then `ContDiffAt.toOpenPartialHomeomorph`
  restricted to `poincareDom` and `contDiffAt_symm`, as in `delaunayMK_localDiffeo`. This covers Γ = 0 uniformly.
- Surjectivity (private `bj_surj`): `C < Λ` by `delaunayMK_image` with Γ = L - G, `(λ, g) = (ℓ + g, g)`; `C = Λ` by
  `cross_le_action` / `cross_eq_action_iff` (q ⟂ p, |q| = a) onto the circular torus `poincare_circular`.
- `poincareInv_poincare`: elements give Λ, Γ, v; algebra `bj_c_eq` shows c = (cos F, sin F); `Complex.arg` recovers F mod 2π
  (`Complex.cos_arg/sin_arg`), `keplerPhi_keplerLong` gives λ mod 2π. `poincare_poincareInv` from surjectivity + this + periodicity.

**Checks:** gate build `KAM.Planetary.Poincare.Bijective` succeeded, no warnings from my file (only pre-existing ones in Mass.lean);
`scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK, only "KAM.lean out of date".
`#print axioms` for all five theorems: `[propext, Classical.choice, Quot.sound]`.

**Uncertainties / errata / deviations:** none. No statement was changed or needed extra hypotheses. No heartbeat issues
(default budget everywhere). Imports: Symplectic and Kepler.DelaunayChart (frozen defs only; no theorem anchors, no providers).

AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §7 row P7-3, §7.1; blueprint-P poincare (e), inverse): (1) statements = design and blueprint (bijectivity of the Poincaré chart onto its stated image, the inverse and its regularity); (2) proofs sound, in particular at the circular set; (3) hygiene. Audit ONLY the P7-3 module(s) (git diff inp-p72...HEAD restricted to KAM/Planetary/Poincare/).
