# KEP-5 independent package audit 1

Verdict: **FAIL** (one hygiene blocker, H01). Signature identity, definition fidelity, mathematical proof inspection, public-theorem axiom checks, targeted build, and kernel replay pass. No provider or frozen theorem anchor is in scope; provider identity, seal-body probes, and anchor sealing are skipped as explicitly instructed.

Marker: `audit-kep5`. Auditor role: independent, refute-first package auditor. Audit date: 2026-10-28 UTC.

## Scope and authority

Audited `/root/code/KAM-inp-kep5`, branch `inp-kep5`, HEAD `783f7968791a0f8178ebed50a98406cfac9a0fc5`, against its parent `c2a788bd9e2f60d4443680c10508f55557d5d612`. The change is exactly one new file, `KAM/Kepler/Orbit.lean`, 373 lines. The complete new file was inspected.

Read the full package audit brief at `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, AGENTS.md, docs/PLAN.md and docs/DECISIONS.md. Binding contracts are docs/tracks/P/design/KEPLER-LEAN-DESIGN.md (especially decisions 3, D4, the node inventory, and the KEP-5 implementation plan), `/root/code/KAM-inp-design-kep/.drafts/design/KeplerSignatures.lean:383–452`, blueprint-I/parts/p7-delaunay.tex, and blueprint-P/parts/p7-kepler-poincare.tex. Track P and I statement conventions and the frozen Phase/planeSq/planeLength/planeDot/planeCross definitions were checked, along with the imported rot, eccentric-anomaly, energy, element and domain definitions used by Orbit.

The brief's `git diff inp...HEAD` is empty because the current `inp` ref is `84618c94d75469bfa0f0e35ab3bfaae6fa123a91` and `git merge-base inp HEAD` is the audited HEAD itself. Therefore the user-specified parent comparison, rather than that empty moving-ref comparison, determines the actual package scope. Both protected-path comparisons are empty.

Pins (SHA-256):

- Orbit.lean: `83bd08de8eb499ff2a939462ad13bbc67ad4541e4022a97e3160c236a5c8fe5a`.
- External signatures: `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370`.

## Blocking finding H01: repository lint fails beyond the permitted exception

`env LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh` exits **1** and reports four overlong lines introduced by this package:

| Orbit.lean line | Unicode character count | Content |
|---|---:|---|
| 36 | 103 | Second frame vector, containing both momentum components. |
| 38 | 107 | orbitMapR documentation comment. |
| 57 | 102 | one_sub_mul_cos_pos declaration header. |
| 199 | 105 | analyticAt_mk2 declaration header. |

The brief permits only the expected stale KAM.lean warning. These four additional failures therefore block package acceptance, even though two concern private helper headers and one concerns a comment. Requested repair: wrap these four lines without changing types or proofs and rerun lint; leave generated KAM.lean regeneration to the orchestrator. No package repair was made during this audit.

## Declaration and node review

All names below are in `KAM.Kepler`. PASS in this table refers to the individual mathematical/signature check; H01 determines the overall FAIL.

| Blueprint node | Lean declaration | Verdict | Reason / note |
|---|---|---|---|
| `I:p7:orbit-maps` | `orbitFrame` (Orbit:34) | PASS | Exact signature body; ellipse-frame position and velocity. |
| `I:p7:orbit-maps; circular` | `orbitMapR` (Orbit:39) | PASS | Exact signature body; radians, eccentric anomaly, positive-root k. |
| `I:p7:orbit-maps` | `delaunay` (Orbit:43) | PASS | Exact signature body; actions ordered (L,G). |
| `I:p7:orbit-identities(a); circular` | `orbitMapR_radius` (Orbit:119) | PASS | Exact signature type; physical Euclidean radius. |
| `I:p7:orbit-identities(a); circular` | `orbitMapR_radius_bounds` (Orbit:123) | PASS | Exact signature type; both bounds and constants preserved. |
| `I:p7:orbit-identities(a); circular` | `orbitMapR_speed_sq` (Orbit:134) | PASS | Exact signature type; physical squared speed, no Pi-norm substitution. |
| `I:p7:orbit-identities(b); circular` | `orbitMapR_cross` (Orbit:139) | PASS | Exact signature type; signed cross = L sqrt(1-e²). |
| `I:p7:orbit-identities(b); circular` | `orbitMapR_dot` (Orbit:143) | PASS | Exact signature type; dot = L e sin u. |
| `I:p7:orbit-identities(c); circular` | `orbitMapR_energy` (Orbit:147) | PASS | Exact signature type; energy -1/(2L²), including e=0. |
| `I:p7:orbit-identities(d)` | `orbitMapR_radial` (Orbit:155) | PASS | Exact signature type; both identities, strengthened to include e=0. |
| `I:p7:kepler-eq(b), auxiliary` | `eccAnom_add_int_mul_two_pi` (Orbit:170) | PASS | Extra public helper, absent from signatures; integer shifts follow from uniqueness. No extra contract imposed on exports. |
| `I:p7:orbit-maps-e / chart, real periodicity` | `orbitMapR_periodic` (Orbit:183) | PASS | Exact signature type up to binder name hL → _hL; integer shifts in both angles. Positive-L premise retained. |
| `I:p7:orbit-maps-e, real analytic calculus` | `analyticAt_orbit_param` (Orbit:219) | PASS | Extra public helper, absent from signatures; analytic parameter composition with positivity guards, for arbitrary real normed spaces. Not a substitute for any blueprint conclusion. |
| `I:p7:orbit-maps-e; circular, real restriction` | `analyticOnNhd_orbitMapR` (Orbit:238) | PASS | Exact signature type; AnalyticOnNhd includes an ambient neighborhood at e=0. |
| `I:p7:elements` | `eccOf_mem_Ioo` (Orbit:255) | PASS | Exact signature type, including order of G<L then G>0 premises. |
| `I:p7:orbit-identities(c)` | `delaunay_mem_region` (Orbit:295) | PASS | Exact signature type; deDom excludes circular and radial degeneracies. |
| `I:p7:orbit-identities(c)` | `delaunay_elements` (Orbit:313) | PASS | Exact signature type; all four element equalities, in specified order. |
| `I:p7:orbit-maps` | `orbitMapR_eq_delaunay` (Orbit:333) | PASS | Exact signature type; definitional equality, hw unused as in the design. |
| `I:p7:chart, analytic component` | `analyticOnNhd_delaunay` (Orbit:338) | PASS | Exact signature type on deDom; no claim of the later chart/symplectic results. |
| `I:p7:h0` | `delaunay_hamiltonian` (Orbit:367) | PASS | Exact signature type; E minus signed angular momentum gives -1/(2L²)-G. |

There are three new public definitions and seventeen new public theorems: fifteen signature theorems plus two auxiliary theorems. The two extra public helpers are fully proved and axiom-clean. `eccAnom_add_int_mul_two_pi` is an additional export beyond the helper mentioned in the request, but introduces no mathematical or signature defect.

For all fifteen specified theorems, the scratch probe establishes equality of the complete elaborated type with the literal signature contract using `rfl`, including implicit/explicit binders and their order. All three definition bodies are likewise checked by `rfl`. The authorized `_hL` renaming is alpha-equivalent for type equality; clients using the draft's named argument `(hL := ...)` must use `_hL` for this declaration. There is no dropped hypothesis or changed conclusion.

## Definitions, domains and source fidelity

- **orbitFrame:** direct total formula on ℝ³, exactly the signature body. On L>0, 0≤e<1, sqrt(1-e²)>0 and D=1-e cos u≥1-e>0, so it is the intended frame with genuine nonzero denominators. On unrestricted inputs the same expression uses Lean's total division and real square root; it does not assert a physical ellipse there. No theorem relies on a singular denominator or an invalid square-root identity.
- **orbitMapR:** direct total rotation of the frame at the existing eccAnom. The imported keplerLong chooses the unique real solution when planeLength(v)<1 and returns 0 otherwise. Thus unrestricted inputs inherit that existing off-domain fallback. Every analytic or orbital theorem uses 0≤e<1, which gives |e|<1 and planeLength(![e,0])<1, so the fallback is never used to prove the claimed physical identities. At e=0 the actual solution is u=ℓ, not the fallback.
- **delaunay:** direct total composition with eccOf L G=sqrt(1-G²/L²). On deDom, 0<G<L gives L>0, 0<eccOf L G<1, and sqrt(1-eccOf L G²)=G/L. These are proved in eccOf_mem_Ioo/eccOf_data and discharge the real source hypotheses. Off deDom, the expression is only a total extension; no physical chart property is claimed. orbitMapR_eq_delaunay is definitional even off the domain and does not exploit junk.

The source uses a five-parameter Q_el with k independent. This package implements its designed real specialization k=sqrt(1-e²), and then k=G/L on deDom. It does not claim to supply the independent complex-k map (a later package). The positive root and G>0 preserve the prograde orientation. All geometry uses the literal frozen physical planeSq/planeLength/planeDot/planeCross on Fin 2 → ℝ, not the ambient Pi sup norm. Phase is the literal frozen (position,momentum) pair. Angles are radians with 2π periods as required for this shared Kepler layer.

The algebra retains every factor of L and the signs of radial momentum and angular momentum. Positivity of L and D and sqrt-square validity are proved before the relevant field/algebra calculations. The analytic proofs establish nonzero L D and positive radicand, compose the existing real-analytic Kepler solution, and prove AnalyticAt in an ambient neighborhood, including at e=0. They do not infer analyticity merely from unrestricted smoothness.

The circular formulas agree with blueprint-I `bpI:p7:circular` (lines 303 onward). The strict membership/elements assertions remain guarded by deDom, so no circle is placed in the strictly noncircular keplerRegion. Radius and cross specialize in the scratch probe to r=L² and Γ=L at e=0. Energy, speed, dot and radial formulas include e=0 directly through their stated hypotheses. No circular chart invertibility is claimed.

Blueprint-P Part 7 delegates strength-one orbit fundamentals to I (lines 21–23) and uses these very formulas in stepP:p7:ke-b (line 87). General mass/strength scaling, means, symplecticity, chart bijectivity, and the remaining h0 comparison with the restricted Hamiltonian are separate work; this audit does not claim completion of those broader blueprint nodes. No extra conclusion-shaped hypothesis, bundled proof assumption, or widened constant dependence was found in the new public declarations.

## Checks and exact receipts

All Lean commands were run serially with LEAN_NUM_THREADS=1; no concurrent Lean task was launched by this auditor. No resource-budget override was used.

### Targeted gated build

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep5 KAM.Kepler.Orbit
```

Exit 0. Gate receipt: `[inp-gate] slot 1 acquired 00:28:31 for KAM.Kepler.Orbit`. Terminal result: `Build completed successfully (9094 jobs).` The only build diagnostics were replayed, pre-existing unused-variable warnings for `hm` and `hκ` in Energy.lean:106:35 and :106:48. The gate runs `nice -n 5 lake build`.

### Signature probes and public axioms

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP5Audit.lean > .lake/abi-scratch/KEP5Audit.log 2>&1
rg 'depends on axioms:' .lake/abi-scratch/KEP5Audit.log
```

Final probe exit **0**, with all fifteen full-type equalities, three body equalities, two circular specializations, and seventeen axiom commands accepted. Scratch-only unused-binder warnings arise from naming the signature's proof binders inside the expected forall types; there are no errors. Exact axiom output:

```text
'KAM.Kepler.orbitMapR_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_radius_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_speed_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_cross' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_dot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_radial' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eccAnom_add_int_mul_two_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticAt_orbit_param' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticOnNhd_orbitMapR' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eccOf_mem_Ioo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_mem_region' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_elements' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapR_eq_delaunay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticOnNhd_delaunay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunay_hamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.Orbit > .lake/abi-scratch/KEP5Kernel.log 2>&1
```

Exit **0**, first attempt; no exit 143 or retry. Complete output:

```text
replaying KAM.Kepler.Orbit
```

### Repository lint

```sh
env LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh > .lake/abi-scratch/KEP5Lint.log 2>&1
cat .lake/abi-scratch/KEP5Lint.log
```

Exit **1**. Complete output:

```text
Lean lines over 100 characters:
/root/code/KAM-inp-kep5/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-kep5/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-kep5/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-kep5/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The stale generated root is the permitted exception. The four line-length findings are H01. Module format, frozen anchor guard and all 144 elaborated frozen declaration hashes pass.

### Static and protected-file checks

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff HEAD^ HEAD --check
```

All exit 0 with empty output. `wc -l KAM/Kepler/Orbit.lean` outputs `373 KAM/Kepler/Orbit.lean` (below 1500). The file contains copyright, module, public imports, module documentation and an exposed public noncomputable section. Search of Orbit for `sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace|KAM.Provider|Frozen.*Theorems` returns no matches (rg exit 1). It imports the shared layers and Mathlib; no provider or frozen theorem anchor import was added. Frozen definition imports through the shared layers are intentional literal-object reuse.

## Suspected errata, deviations and limits

No suspected blueprint/source/frozen-definition defect was found in the audited contracts. H01 is a package formatting deviation, not a mathematical erratum. The two extra public helpers and authorized `_hL` binder rename are noted above. Existing off-domain totalizations are explicitly guarded and do not establish physical claims outside their intended domains. No provider, seal, chart theorem, means theorem, mass-scaling theorem, or root-level campaign closure is certified here.

Only this report was written in the main repository. Scratch probes/logs were confined to `.lake/abi-scratch/` in the package worktree and removed after recording these receipts. No production or frozen source, generated file, manifest or git ref was changed.

## Reproducible scratch probe

The following is the final accepted probe (it can be recreated under `.lake/abi-scratch/` and run with the command above):

```lean
import KAM.Kepler.Orbit

open Set Metric Real KAM KAM.Planetary KAM.Kepler

noncomputable section

-- Signature identity: orbitMapR_radius

example : (type_of% @KAM.Kepler.orbitMapR_radius) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), planeLength (orbitMapR ℓ g L e).1 = L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) := rfl

#print axioms KAM.Kepler.orbitMapR_radius

-- Signature identity: orbitMapR_radius_bounds

example : (type_of% @KAM.Kepler.orbitMapR_radius_bounds) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), L ^ 2 * (1 - e) ≤ planeLength (orbitMapR ℓ g L e).1 ∧
      planeLength (orbitMapR ℓ g L e).1 ≤ L ^ 2 * (1 + e)) := rfl

#print axioms KAM.Kepler.orbitMapR_radius_bounds

-- Signature identity: orbitMapR_speed_sq

example : (type_of% @KAM.Kepler.orbitMapR_speed_sq) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), planeSq (orbitMapR ℓ g L e).2 =
      (1 + e * Real.cos (eccAnom ℓ e)) / (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e)))) := rfl

#print axioms KAM.Kepler.orbitMapR_speed_sq

-- Signature identity: orbitMapR_cross

example : (type_of% @KAM.Kepler.orbitMapR_cross) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), planeCross (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * √(1 - e ^ 2)) := rfl

#print axioms KAM.Kepler.orbitMapR_cross

-- Signature identity: orbitMapR_dot

example : (type_of% @KAM.Kepler.orbitMapR_dot) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), planeDot (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * e * Real.sin (eccAnom ℓ e)) := rfl

#print axioms KAM.Kepler.orbitMapR_dot

-- Signature identity: orbitMapR_energy

example : (type_of% @KAM.Kepler.orbitMapR_energy) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), kE (orbitMapR ℓ g L e) = -1 / (2 * L ^ 2)) := rfl

#print axioms KAM.Kepler.orbitMapR_energy

-- Signature identity: orbitMapR_radial

example : (type_of% @KAM.Kepler.orbitMapR_radial) = (∀ {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), (L * e * Real.sin (eccAnom ℓ e)) ^ 2 =
        -(L * √(1 - e ^ 2)) ^ 2 + 2 * planeLength (orbitMapR ℓ g L e).1
          - planeLength (orbitMapR ℓ g L e).1 ^ 2 / L ^ 2 ∧
      L ^ 2 * e * Real.cos (eccAnom ℓ e) = L ^ 2 - planeLength (orbitMapR ℓ g L e).1) := rfl

#print axioms KAM.Kepler.orbitMapR_radial

#print axioms KAM.Kepler.eccAnom_add_int_mul_two_pi

-- Signature identity: orbitMapR_periodic

example : (type_of% @KAM.Kepler.orbitMapR_periodic) = (∀ {ℓ g L e : ℝ} (k k' : ℤ) (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1), orbitMapR (ℓ + 2 * π * k) (g + 2 * π * k') L e = orbitMapR ℓ g L e) := rfl

#print axioms KAM.Kepler.orbitMapR_periodic

#print axioms KAM.Kepler.analyticAt_orbit_param

-- Signature identity: analyticOnNhd_orbitMapR

example : (type_of% @KAM.Kepler.analyticOnNhd_orbitMapR) = (AnalyticOnNhd ℝ (fun x : Fin 4 → ℝ => orbitMapR (x 0) (x 1) (x 2) (x 3))
      {x | 0 < x 2 ∧ 0 ≤ x 3 ∧ x 3 < 1}) := rfl

#print axioms KAM.Kepler.analyticOnNhd_orbitMapR

-- Signature identity: eccOf_mem_Ioo

example : (type_of% @KAM.Kepler.eccOf_mem_Ioo) = (∀ {L G : ℝ} (h : (![L, G] : Fin 2 → ℝ) 1 < (![L, G] : Fin 2 → ℝ) 0)
    (hG : 0 < G), 0 < eccOf L G ∧ eccOf L G < 1) := rfl

#print axioms KAM.Kepler.eccOf_mem_Ioo

-- Signature identity: delaunay_mem_region

example : (type_of% @KAM.Kepler.delaunay_mem_region) = (∀ {w : Phase 2} (hw : w ∈ deDom), delaunay w ∈ keplerRegion) := rfl

#print axioms KAM.Kepler.delaunay_mem_region

-- Signature identity: delaunay_elements

example : (type_of% @KAM.Kepler.delaunay_elements) = (∀ {w : Phase 2} (hw : w ∈ deDom), elemL (delaunay w) = w.2 0 ∧ planeCross (delaunay w).1 (delaunay w).2 = w.2 1 ∧
      elemA (delaunay w) = w.2 0 ^ 2 ∧ elemEcc (delaunay w) = eccOf (w.2 0) (w.2 1)) := rfl

#print axioms KAM.Kepler.delaunay_elements

-- Signature identity: orbitMapR_eq_delaunay

example : (type_of% @KAM.Kepler.orbitMapR_eq_delaunay) = (∀ {ℓ g L G : ℝ} (hw : (![ℓ, g], ![L, G]) ∈ deDom), orbitMapR ℓ g L (eccOf L G) = delaunay (![ℓ, g], ![L, G])) := rfl

#print axioms KAM.Kepler.orbitMapR_eq_delaunay

-- Signature identity: analyticOnNhd_delaunay

example : (type_of% @KAM.Kepler.analyticOnNhd_delaunay) = (AnalyticOnNhd ℝ delaunay deDom) := rfl

#print axioms KAM.Kepler.analyticOnNhd_delaunay

-- Signature identity: delaunay_hamiltonian

example : (type_of% @KAM.Kepler.delaunay_hamiltonian) = (∀ {w : Phase 2} (hw : w ∈ deDom), kE (delaunay w) - planeCross (delaunay w).1 (delaunay w).2 = -1 / (2 * w.2 0 ^ 2) - w.2 1) := rfl

#print axioms KAM.Kepler.delaunay_hamiltonian

example : @KAM.Kepler.orbitFrame = (fun (L e u : ℝ) => (![L ^ 2 * (Real.cos u - e), L ^ 2 * √(1 - e ^ 2) * Real.sin u],
   ![-Real.sin u / (L * (1 - e * Real.cos u)), √(1 - e ^ 2) * Real.cos u / (L * (1 - e * Real.cos u))])) := rfl

example : @KAM.Kepler.orbitMapR = (fun (ℓ g L e : ℝ) => (rot g (orbitFrame L e (eccAnom ℓ e)).1, rot g (orbitFrame L e (eccAnom ℓ e)).2)) := rfl

example : @KAM.Kepler.delaunay = (fun (w : Phase 2) => orbitMapR (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1))) := rfl

example (ℓ g L : ℝ) (hL : 0 < L) : planeLength (orbitMapR ℓ g L 0).1 = L^2 := by simpa using (orbitMapR_radius (ℓ := ℓ) (g := g) hL (le_refl 0) (by norm_num : (0:ℝ)<1))

example (ℓ g L : ℝ) (hL : 0 < L) : planeCross (orbitMapR ℓ g L 0).1 (orbitMapR ℓ g L 0).2 = L := by simpa using (orbitMapR_cross (ℓ := ℓ) (g := g) hL (le_refl 0) (by norm_num : (0:ℝ)<1))
```

READY audit-kep5
