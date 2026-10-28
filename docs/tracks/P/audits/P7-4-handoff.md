# P7-4 prover handoff (branch inp-p74, 69623b9; off inp; offloaded package run by the main orchestrator; prover on claude-12)


**Files:** new `KAM/Planetary/Poincare/Holomorphic.lean` (395 lines). Nothing else touched (KAM.lean not regenerated: lint reports "KAM.lean is out of date; run scripts/gen_root_imports.py" - sub-orchestrator to regenerate).

**Declarations (signatures verbatim from KeplerSignaturesP.lean):** `poincareGammaC`, `poincareVC`, `poincareC`, `poincareNbhd`, `poincare_holomorphic` (all five conjuncts proved, no sorry).

**Approach:** private bounds on `𝒩(Λ°)` (|Γ|<Λ°/256, |Γ/(2Λ)|<1/256, Re Λ>Λ°/2, |Im Λ|<Λ°/2); radicand has Re>0 (so in slitPlane; direct real-part computation with `Complex.div_re`, not an arg bound); `‖s‖²=‖R‖` via `Complex.cpow_nat_inv_pow` gives `|v0|+|v1| < 0.18 < 1/4` => `regularTube`; `Tube.jac_ne_zero` for `1 - v·c ≠ 0`; holomorphy by assembling `DifferentiableAt` of each scalar piece (`DifferentiableAt.cpow`, `Tube.keplerLongC_analyticOnNhd`), with a local `diffAt_div` (Mathlib `DifferentiableAt.div` is one-variable only); periodicity via `keplerLongC_shift`; real extension via `Complex.ofReal_cpow`, `keplerLongC_ofReal`, then componentwise `simp`.

**Checks:**
- `inp_lake_build.sh /root/code/KAM-inp-p74 KAM.Planetary.Poincare.Holomorphic`: Build completed successfully; only warnings: unused `hm`, `hκ` in `poincare_holomorphic` (designed signature; same precedent as `analyticOnNhd_poincare`).
- `scripts/lint_sources.sh`: check_lean_modules PASS, FROZEN-ANCHOR GUARD OK, ABI HASHES OK; only note: KAM.lean out of date.
- `#print axioms KAM.Planetary.poincare_holomorphic`: [propext, Classical.choice, Quot.sound].

**Uncertainties / deviations:** none; no signature changed, no extra hypotheses.

**Errata (design text, not a pinned source):** design §7.1 says `|arg Λ| ≤ π/6` on the neighbourhood; the actual bound from `|Λ-Λ°|<Λ°/2` is only `|arg Λ| < π/4` (|Im|<Re). Not needed: Re(radicand)>0 follows from the real-part computation above.

**Design signals:** none (no heartbeat problems; whole file elaborates in ~15s).

AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §7 row P7-4, §7.1; blueprint-P holomorphic): (1) statements = design and blueprint (the holomorphic extension of the Poincaré chart on the stated complex domain); (2) proofs sound (analyticity across the circular set); (3) hygiene. Audit ONLY the P7-4 module(s) (KAM/Planetary/Poincare/Holomorphic*).
