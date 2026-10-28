# P1-3a independent proof audit 1

**Verdict: PASS WITH NOTES for `bpN:p1:conic-coercive` / `KAM.Nekhoroshev.conic_coercive`.** The public statement matches the approved design signature and the blueprint; the proof checks, its kernel replay succeeds, and its axioms are permitted. No frozen anchor is proved or sealed by this package, so there is no anchor seal-readiness verdict or frozen/provider type equality to certify. The notes concern package scheduling and inherited branch changes.

Date: 2026-10-28. Audited worktree: `/root/code/KAM-inp-p13a`. HEAD: `7896a8f0db42db786829fbe9ec3b29f27704d77e`. Package commit: `b3a3e0e32456503e70c9d7791b7d71f6d1ba7594`.

## Scope and authority

Read AGENTS.md, PLAN, DECISIONS, the external `inp-audit-package.md` brief, the P1-3a handoff and AUDIT FOCUS, `docs/tracks/N/design/PART145-LEAN-DESIGN.md` including Appendix A and binding audit-2 notes, both design audits in that same design directory, the Track N statement and uniform-conversion discussion in sources.md, and blueprint-N Part 1's conic lemma and quasi-convexity consumer. Inspected the frozen N-HEAD-C statement and its transverse-QC/complex-Hessian predicates for context; none is an anchor of this helper package. The lemma's source is explicitly “Ours” (blueprint line 132); no pinned-paper erratum is asserted from this computation.

Only `KAM/Nekhoroshev/Interfaces/ConicCoercive.lean` is audited, as the handoff directs. SHA256: `f052fba1154b4bedc506e5e0329f6854feb6026046d293cc5a3402c41c7e855f`. Its only new public declaration is `conic_coercive`; six auxiliary theorems are private.

Both requested comparisons were inspected: `git diff inp...HEAD` and `git diff inp-p11...HEAD`. At inspection, `inp` was `03e10647aba94633600190126bc551d0f63c9bb4` and `inp-p11` was `ad4d22830c97c6135af141abcc62cc77c5196005`. The former warns:

```text
warning: inp...HEAD: multiple merge bases, using 2e8ce68312489b670c68720fb57772ecb687011c
```

Both comparisons list the same five paths: ConicCoercive (177 added lines), the inherited Iso Confinement/Graph (237), its audit (155) and handoff (4), and KAM.lean (1). The branch-wide protected-path check is therefore **not empty**: KAM.lean adds `public import KAM.Iso.Confinement.Graph`. This originates in parent commit `00d6e82d73f0eaef1f8bb566ccd0c2b19597a6ff`, before the P1-3a commit. `git diff b3a3e0e^ b3a3e0e -- KAM/Frozen manifest KAM.lean README.md` is empty; that commit changes only ConicCoercive. Both triple-dot comparisons are empty for KAM/Frozen, manifest and README.md. This is an inherited comparison note, not a P1-3a edit to protected files. The unrelated Iso package was not re-audited.

## Declaration and proof-step inventory

Private names below are source names within `KAM.Nekhoroshev`; Lean mangles their internal names.

| Node / role | Declaration or proof location | Verdict | Reason |
|---|---|---|---|
| `bpN:p1:conic-coercive` | `KAM.Nekhoroshev.conic_coercive`, lines 78–175 | PASS | Exact Appendix A telescope; cone width `euclid fr * q / (8 * (B + q))`; conclusion `(5/8) * q * euclid ξ^2 ≤ Q ξ ξ`. |
| Norm nonnegativity | private `euclid_nonneg'`, line 29 | PASS | Square-root nonnegativity on the entire coordinate carrier. |
| Norm square | private `euclid_sq'`, line 31 | PASS | Real Euclidean square is exactly the sum of coordinate squares. |
| Homogeneity | private `euclid_smul'`, line 36 | PASS | Absolute scalar factor, valid also at zero. |
| Pythagoras | private `euclid_add_sq_of_orth`, line 45 | PASS | Literal coordinate-dot orthogonality implies the squared-norm identity. |
| Nonzero denominator | private `euclid_pos_of_ne_zero`, line 53 | PASS | A nonzero coordinate vector has strictly positive Euclidean norm. |
| `stepN:p1:cc-num` | private `conic_numerics`, line 62, and lines 149–175 | PASS | Positive denominator; `(q+B)κ=q/8`, `κ≤1`, `Bκ≤q/8`; the final quadratic and mixed losses are bounded separately. |
| `stepN:p1:cc-unit` | lines 91–175 | PASS, alternate proof route | Unit normalization is unnecessary: the proof retains `N=euclid ξ` throughout, including ξ=0. No graph status is changed by this audit. |
| `stepN:p1:cc-decomp` | lines 87–143 | PASS | `w=(fr·ξ)/euclid(fr)^2 • fr`, `u=ξ-w`; exact orthogonality and `τ≤κN` are proved. |
| `stepN:p1:cc-expand` | lines 145–159 | PASS | Both mixed terms are retained; no symmetry assumption on Q. |

The real coordinate carrier is `Fin n → ℝ`; the auxiliary Euclidean norm is explicit rather than the ambient Pi max norm. `Q` is a curried continuous bilinear map on that carrier. This is the intended finite-dimensional bilinear object, with continuity automatic mathematically (and additionally controlled by hQ); it does not require symmetry or positivity outside the transverse space. Every argument and constant dependency matches design lines 1433–1438 and blueprint lines 127–144. No additional premise, changed binder order, existential constant dependency, or weakened coercivity conclusion was found. The parenthetical blueprint consequence with q/2 follows numerically from the retained stronger 5q/8 bound, as intended by the exact design signature.

`hn` and `hℓ0` are retained in the public telescope, with only dummy references at lines 83–84. Their mathematical redundancy is harmless: `fr ≠ 0` already excludes dimension zero, and the homogeneous argument needs only the upper bound on ℓ' together with the supplied cone inequality. This does not insert or assume a difficult proof step. Transverse coercivity hcoer is precisely the source premise, and the conclusion on the wider cone is actually proved.

For an independent calculation, put `a=euclid u`, `τ=euclid w`, `N=euclid ξ` and `κ=q/(8(B+q))`. Then `N²=a²+τ²`, `a≤N`, `τ≤κN≤N`, and

```text
Q ξ ξ ≥ q a² - 2B aτ - Bτ²
      = q N² - (q+B)τ² - 2B aτ.
(q+B)τ² ≤ (q/8)N²,       B aτ ≤ (q/8)N².
```

Subtracting gives exactly `(5q/8)N²`. All divisions by the frequency norm occur under the proved `0 < euclid fr`; B+q is positive. The zero-vector case needs no division by N and is included.

## Definition classification and imports

There are **no new `def`, `abbrev`, or `structure` declarations**. The imported P1-1 definition `euclid x = Real.sqrt (∑ i, ‖x i‖²)` in Norms.lean:31 is the intended Euclidean size on its whole real/complex coordinate carrier; this audit inspected that body but does not recertify all of P1-1. Local `set` bindings κ, s, t, w, u, N, a and τ are ordinary arithmetic expressions, orthogonal projections and sizes. They introduce no fallback or junk value used by the theorem.

The audited file directly imports only Mathlib's NormedSpace operator module and `KAM.Nekhoroshev.Interfaces.Norms`; it imports no provider or frozen theorem. No conclusion-shaped field, instance or helper premise is introduced. The complete axiom receipt below also excludes a transitive sorry dependency from the public result.

## Independent validation receipts

All Lean-related commands ran serially with `LEAN_NUM_THREADS=1`, `nice -n 5`, and default heartbeat/recursion budgets. No clean, cache fetch, package edit or git mutation was performed.

1. Targeted build through the required gate:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p13a KAM.Nekhoroshev.Interfaces.ConicCoercive
```

Exit 0:

```text
[inp-gate] slot 1 acquired 01:27:27 for KAM.Nekhoroshev.Interfaces.ConicCoercive
Build completed successfully (2103 jobs).
```

The gate invokes `nice -n 5 lake build`. This was a targeted incremental build using the worktree snapshot, not a clean rebuild; the job count is Lake's reported total.

2. Kernel replay, one invocation for the sole package lemma module (no provider module exists for this package):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.ConicCoercive
```

Exit 0:

```text
replaying KAM.Nekhoroshev.Interfaces.ConicCoercive
```

3. Exact design-type and application probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P13aAudit1.lean
```

The probe imports only ConicCoercive, copies the exact Appendix A declaration telescope under `conic_coercive_audit_signature`, and replaces its placeholder body with:

```lean
by
  exact conic_coercive hn hB hq Q hQ hfr hcoer hℓ0 hℓ
```

It additionally elaborates:

```lean
example : type_of% @conic_coercive_audit_signature := @conic_coercive
#print axioms conic_coercive
#print axioms conic_coercive_audit_signature
```

Exit 0, no warnings or errors:

```text
'KAM.Nekhoroshev.conic_coercive' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.conic_coercive_audit_signature' depends on axioms: [propext, Classical.choice, Quot.sound]
```

This checks the only new public theorem. Frozen/provider equality and frozen seal-copy probes are inapplicable because this package exports a helper rather than a provider for an anchor. The design-type check above is not represented as a frozen-anchor check. The scratch source was deleted after validation.

4. Full lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the brief's permitted generated-root exception:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (317 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The root was not regenerated under this read-only audit. No other lint diagnostics appeared. The audited file has 177 physical lines, a copyright header, `module`, public imports, module docstring and `public section`. No prohibited proof escape, resource override or ambient EuclideanSpace use occurs in it. `git diff --check inp...HEAD` exits 0 with only the already quoted merge-base warning. Final report whitespace validation exits 0.

## Findings, errata and limitations

**LOW — package dependency metadata.** `docs/tracks/N/design/PART145-LEAN-DESIGN.md:263` says P1-3a has no predecessor (`After = —`, wave 1), but ConicCoercive.lean:9 imports P1-1's Norms for the signature's `euclid`. This is a real scheduling dependency, already disclosed by the prover and satisfied by HEAD's merge of P1-1. It does not change any theorem premise or mathematical claim. A concrete corrected row for the orchestrator is:

```text
| P1-3a | conic-coercive | `ConicCoercive` | 250 | P1-1 (`euclid` in `Norms`) | 2 |
```

**Branch comparison note.** The generic protected-diff check is not literally clean because of the inherited generated-root import described above. The P1-3a commit itself passes that check. Resolve the broad comparison context and regenerate the root during integration; neither warrants rejecting the audited proof.

No suspected defect in the conic blueprint statement, its elementary numerical argument, or the inspected source-conversion computation was found. The deviation from the blueprint's unit-vector proof is the valid homogeneous proof detailed above. There is no fresh pinned-source erratum to submit. The design-audit-2 consumer notes about flow regrouping and weighted-norm wording impose no additional condition on this independent linear-algebra lemma.

Only this report was persistently authored by the auditor. The pre-existing untracked handoff was preserved. No proof, frozen file, manifest, generated file or source document was edited. Acceptance here concerns the conic helper and does not close N-HEAD-C, any other frozen theorem, or the remaining analytic/ODE conversion packages.
