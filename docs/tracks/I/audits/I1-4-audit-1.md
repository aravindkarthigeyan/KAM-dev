# Independent audit: I1-4

**Verdict: PASS WITH NOTES.** `KAM.Iso.Linear.trivial_torus` proves `bpI:p1:trivial` at the exact Appendix A type, without a Kolmogorov premise. Its axiom closure is clean and kernel replay succeeds. The only hygiene exception is the explicitly permitted stale generated `KAM.lean`. There is no frozen theorem anchor or provider in this package, so “seal-ready” applies only to acceptance of this infrastructure node; no I-G1 or I-HEAD sealing is certified.

## Scope and frozen inputs

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-i14`. Audited HEAD: `e09ab3f60ce70b9d994c99723b950cc404e650f5` (snapshot S1).

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the supplied handoff, track-I statements, the relevant frozen definitions and theorem files, the design and its two audits, and blueprint-I Part 1. The user's exact output path overrides the generic brief's main-worktree destination. Only this report is a repository deliverable; no repair, commit, or generated-file edit was authorized or performed.

The requested comparison was `git diff inp...HEAD`: one added file, `KAM/Iso/Linear/Trivial.lean`, 251 lines. At entry `inp` was `aad7c8bdc9a144490ab32c6d1a518eb4c141783f`; during the audit the shared ref advanced to `70bba4e3ddd8e44a7c57ec66b8ec5b69bd4db876`. Its merge base with HEAD remained `44f77f3f65d43cab9088fe4e2b5b7c2772d61778`, and the package diff remained the same single file. The handoff's `inp-i11...HEAD` comparison includes 88 files of intervening shared work and is not the package boundary; the user's `inp...HEAD` boundary governs.

SHA-256 pins (S1):

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Linear/Trivial.lean` | `e4c6592330491fc574d1d4702ae45678604f838be07f99f06f143d7c77316bfc` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |
| `blueprint-I/parts/p1-iso-linear.tex` | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |
| `KAM/Iso/Linear/FreqMap.lean` | `aab3c4aa4dc894f549ed033a5bb4256e2b87fbe6cb9bdfe5b644ef58a614a193` |
| `KAM/Iso/Linear/Defs.lean` | `f08cbdb606c96d8290c31f1c66009cc2cf66c74e463a65a6eec7602189383844` |
| `KAM/Frozen/Iso/Defs/BorderedHessian.lean` | `f8586cf89abbb9b66a24a34d15b7cb40d3914a6b6d6c8ae922baa98a1629f94f` |
| `KAM/Frozen/Iso/Defs/ExtendedTorsion.lean` | `90b345553446147021b49d644f0c57c99925edad3476340e288212134b848bb7` |
| `KAM/Frozen/Iso/Defs/ExtendedTorsionAverage.lean` | `b1712eca6d09e422f4635655d9aa3111c1e026e21ef27b8c9030aba638a3c9ea` |

Method: focused tier-2 audit, independent statement reconstruction followed by line-by-line proof inspection, adversarial checks of the likely failure modes, then compilation, axiom, kernel, and hygiene checks. No subagents were used. Existing dependency modules were inspected where consumed; this is not a fresh source audit of every imported theorem or of the external papers.

## Statement and binder audit

Blueprint `p1-iso-linear.tex:169–183` states “Let U … be open and h … holomorphic … real …”, then “I ∈ U ∩ ℝⁿ”, and concludes the flat-torus properties, zero error, bordered identity, average, determinant equivalence, total-inverse cast and inverse norm. The implementation's type at `Trivial.lean:211–229` is **byte-identical** to design Appendix A at lines 992–1010, through the final conclusion and excluding the proof assignment.

| Binder, in elaboration order | Bin | Source / meaning |
|---|---|---|
| `{n : ℕ}` | TYPING | Ambient finite dimension; blueprint Part 1 conventions. No positive-dimension premise needed for these identities. |
| `{U : Set (Fin n → ℂ)}` | TYPING | Blueprint line 170, action domain. |
| `(hU : IsOpen U)` | SOURCE | Line 170, “U … open”. |
| `{h : (Fin n → ℂ) → ℂ}` | TYPING | Line 170, Hamiltonian on action space, represented by its total extension. |
| `(hh : DifferentiableOn ℂ h U)` | SOURCE | Line 170, holomorphy on the open domain. |
| `(hreal : ∀ J : Fin n → ℝ, ι J ∈ U → (h (ι J)).im = 0)` | SOURCE | Line 170, real at every real point of U; includes exactly this universal domain guard. |
| `{I : Fin n → ℝ}` | TYPING | Line 171, real action. |
| `(hI : ι I ∈ U)` | SOURCE | Line 171, action lies in U. |

Counts: SOURCE 4, STANDING 0, TYPING 4, RULED 0, EXCESS 0. No instance binder or hidden `Setting`/`Data` premise. No constants or existential witnesses with additional dependence.

All listed conclusions occur in the theorem. The determinant equality is stronger than the blueprint's nonzero equivalence: injectivity of `Complex.ofReal` gives that equivalence immediately. The normal-frame formula is an existing K theorem, used in the proof, rather than a new output projection; Appendix A makes the same choice. No conclusion is replaced by a conditional bridge.

## Declaration ledger

Names below are in `KAM.Iso.Linear`; all except `trivial_torus` are private. Lines refer to S1 `Trivial.lean`.

| Node / proof role | Declaration | Verdict | Reason |
|---|---|---|---|
| tr-compare / determinant | `det_map_ofReal_fintype` (49) | PASS | Ring-hom determinant identity on arbitrary finite indices. |
| tr-compare / total inverse | `inv_map_ofReal_fintype` (57) | PASS | Adjugate/determinant formula commutes with the real cast; no nonsingularity premise. |
| tr-compare / row-sum norm | `norm_map_ofReal_fintype` (69) | PASS | Explicit `Matrix.linfty_opNorm_def` on both sides and preservation of scalar norms. |
| tr-field / chain rule | `hasFDerivAt_pr2` (79) | PASS | Holomorphy at the action point follows from openness and membership. |
| tr-field / derivative | `fderiv_pr2` (85) | PASS | Actual derivative of `h ∘ pr₂`; no total-derivative fallback. |
| tr-torsion / regularity | `differentiableOn_pr2` (91) | PASS | Composition on `univ ×ˢ U`. |
| tr-torsion / evaluation | `fderiv_fderiv_apply` (97) | PASS | Differentiation of a continuous-linear-map evaluation, with actual differentiability premise proved at use. |
| tr-torsion / action block | `fderiv_pr2_action` (104) | PASS | Neighborhood equality and chain rule give the correctly ordered Hessian entry i,j. |
| tr-torsion / angle block | `fderiv_pr2_angle` (129) | PASS | The inner angle derivative is identically zero on a neighborhood. |
| tr-torsion | `torsion_trivial` (148) | PASS | Direct computation for any ω and θ; only hU, hh, hI needed. |
| tr-field | `invarianceError_trivial` (168) | PASS | `freq_map_local` identifies the complex gradient with the cast real frequency. |
| tr-border, tr-compare | `extendedTorsion_trivial` (182) | PASS | All four bordered blocks agree with the literal frozen definition. |
| `bpI:p1:trivial` | `trivial_torus` (211) | PASS | Exact design type; all geometric, average, determinant, inverse and norm outputs proved. |

## Torsion and adversarial refutation pass

**Issue B4 is resolved for this node.** Design §5, lines 324–327 says K's `freq_map` “take[s] KAM.Head.Data, whose nondeg field (Kolmogorov) is not available”. The new proof does not apply that theorem or K's Data-dependent torsion theorem. It uses `freq_map_local hU hh hreal hI` only for real/complex gradient and Hessian comparison.

At every `z=(θ,ι I)`, the open product domain contains z. Complex holomorphy therefore supplies differentiability of `fderiv ℂ (h ∘ pr₂)` there. Lines 104–143 prove the two second-derivative blocks using equality on a neighborhood, rather than extending a pointwise derivative equality incorrectly. Lines 148–165 use the genuine derivative of the Hamiltonian vector field, the constant normal frame `(0,e_j)`, and its zero derivative. With the frozen convention `Ω₀(a,b)=(-b,a)`, the calculation is

```text
DX_H(θ,ιI)(0,e_j) = ((∂j∂i h(ιI))_i,0),
Ω₀ DX_H(θ,ιI)(0,e_j) = (0,(∂j∂i h(ιI))_i),
N_i · Ω₀ DX_H N_j = ∂j∂i h(ιI).
```

This verifies both the sign and the Hessian index order. `torsion_trivial` even omits hreal and allows arbitrary ω: the only ω term is the derivative of the constant normal frame. The realness hypothesis enters later when identifying the frozen real bordered Hessian.

I separately challenged these possible defects:

- **Hidden Kolmogorov / twist assumption:** rejected by the complete binder list and inspected dependencies. Neither an unbordered nor a bordered invertibility premise is used.
- **Off-domain zero derivatives:** rejected because every derivative computation is at an interior point of `univ ×ˢ U`, with holomorphy-derived higher regularity. No claim about derivatives away from U is used.
- **Transpose or symplectic sign error:** rejected by the explicit calculation above and all four block checks at lines 189–206.
- **Integral totalization concealing nonintegrability:** rejected because the integrand is proved constant pointwise before integration; the cube has volume one, including dimension zero.
- **Singular matrices or empty finite indices:** rejected by the determinant/adjugate proof over any finite index. At determinant zero the total matrix inverse is zero over both fields; the cast identity remains valid. No nonempty-index premise enters the norm proof.
- **Wrong matrix norm instance:** rejected by the explicit Operator scope and reduction to maximum row sums, rather than merely matching two notation strings.

No material finding survived these checks. No proof or source repair is proposed.

## Definition classification and dependency boundary

There are **zero new `def`, `abbrev`, or `structure` declarations** in the package diff. Definition audit for new objects: N/A. Imported semantic objects were inspected at their definitions:

- `unperturbedTorus` is literally `(θ,ι I)`; `gradC` and `hessian` are the indicated first and second complex coordinate derivatives.
- Frozen `frequencyMap` is the real gradient of the real restriction; `freq_map_local` proves its comparison with the complex derivatives on U.
- Frozen `gramMatrix`, `normalFrame`, `torsion` and `invarianceError` retain their literal bilinear and Hamiltonian conventions.
- Frozen `extendedTorsion` has torsion/ω/DH(K)N/zero blocks; `borderedHessian` uses `D frequencyMap` and frequency borders; `extendedTorsionAverage` is the entrywise period-one integral.

BODY_MATCH and PUBLIC_CARRIER: OK for these consumed literal objects on the domains used. WELL_DEFINEDNESS and CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A. The new proof relies on no invented fallback or arbitrary chosen witness. Unrelated definitions carried by broad imports are not used to furnish a premise.

A recursive source-import traversal visited 78 KAM modules and found **no provider or frozen-theorem imports**. Frozen definition imports are permitted. `docs/graph/I/DEPGRAPH.md:1451–1467` explicitly records `FROZEN_FILE: -`, `FROZEN_DECL: -`, and no frozen anchor ID for this node. Thus provider-to-anchor ABI and literal seal-body probes are N/A, rather than missing obligations. The exact Appendix A application below supplies the appropriate implementation-type check.

## Verification receipts

All explicit Lean/build/checker invocations used `LEAN_NUM_THREADS=1` and `nice -n 5`; the build used the required compile gate. No heartbeat, recursion-depth, or synthesis-budget override was used. No dependency cleanup or cache operation was performed.

Targeted build:

```text
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i14 KAM.Iso.Linear.Trivial
[inp-gate] slot 2 acquired 02:21:54 for KAM.Iso.Linear.Trivial
Build completed successfully (3212 jobs).
exit 0
```

The gate itself invokes `nice -n 5 lake build`. This was an incremental targeted build against the supplied snapshot; the job count is Lake's target closure, not a claimed clean rebuild.

The transient `.lake/abi-scratch/I14Audit.lean` imported `KAM.Iso.Linear.Trivial`, opened the same namespaces and Operator scope, copied the theorem type directly from Appendix A under the fresh name `I14Audit.appendix_exact`, and used exactly:

```lean
by
  exact KAM.Iso.Linear.trivial_torus hU hh hreal hI
```

It then printed axioms of the actual public theorem and the copied-type application:

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I14Audit.lean
'KAM.Iso.Linear.trivial_torus' depends on axioms: [propext, Classical.choice, Quot.sound]
'I14Audit.appendix_exact' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

Kernel replay, one invocation for the package's sole module:

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Trivial
replaying KAM.Iso.Linear.Trivial
exit 0
```

Lint:

```text
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (345 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1 (only the explicitly permitted generated-root staleness)
```

Additional mechanical checks:

```text
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
(empty; exit 0)
git diff --check inp...HEAD
(empty; exit 0)
```

The package has the required copyright, `module`, public interface imports, module docstring and public section; 251 total lines are below the 1500-line cap. A direct forbidden-token/override scan of the new file found no matches. There is one new public theorem and twelve private theorems; no other public theorem's axiom receipt is omitted.

## Notes, errata, and closeout

1. The generated-root mismatch is expected by the audit brief and belongs to orchestrator regeneration; this audit did not edit `KAM.lean`.
2. B4 is a documented K API gap, not an identified source error, and is avoided correctly here. The handoff's older comparison ref is too broad for the current package boundary, as recorded above.
3. No new suspected pinned-source or blueprint defect, mathematical deviation, conclusion-shaped assumption, or unpaid proof step was found. External-paper correctness beyond the local blueprint comparison was not independently re-audited.
4. The frozen I-G1, I-HEAD and I-R3BP bodies remain outside this package's proof claim. Acceptance of this node does not prove those roots.

Closeout: all 13 new declarations classified; the sole public declaration matches its exact design statement; no open material finding; build, copied-type application, axiom inspection, kernel replay, frozen guard and ABI checks pass; lint has only its permitted exception. The transient probe was removed. Only this report was added by the auditor; the pre-existing untracked handoff was preserved.
