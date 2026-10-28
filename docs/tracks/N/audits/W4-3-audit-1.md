# W4-3 independent package audit 1

**Verdict: PASS WITH NOTES for W4-3 (`bpN:p4:coefficients`, parts (a)–(d)).** The four approved coefficient signatures are implemented, their definitions have the intended meaning, and all five new public theorems have standard axiom closure. No mathematical blocker was found. No frozen theorem is supplied by this infrastructure package, so “seal-ready” is inapplicable: this verdict does not close any track I/N/P anchor.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-w43`. Report-only audit; no implementation, frozen, manifest, generated-root or history edits. The explicit user output path overrides the brief's main-worktree default. Temporary probes/logs were confined to `.lake/abi-scratch/` and removed after recording their evidence. All audit Lean/Lake operations were serial, `LEAN_NUM_THREADS=1`, with `nice -n 5`; the targeted build used the mandated gate. Other users' processes on this shared machine were outside this audit's control.

## Frozen inputs and scope

Snapshot v1: HEAD `37480970b88e560f6e762519ef7613fe87251e5e`; `inp` resolved to `9cdffab5cb4e502284198f43df045f202bfd1a31`; `inp-w42` resolved to `9028fe7bf84acd72da1554c16e4afdea7f12715e`.

Read AGENTS.md, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the W4-3 handoff, the Part145 design and both binding design audits, Track N's statement packet, the Part 4 blueprint, the actual frozen ComplexStrip/ActionNbhd definitions, and the imported coefficient/domain/parametric APIs. This is a focused tier-2 correspondence and proof audit. All new public declarations and all five new definitions/abbreviations were reviewed; proofs were read throughout the package, with a separate challenge pass for empty domains, independent zero dimensions, sign/width factors, hidden assumptions and total-function defaults. No subagents or network were used. Historical design audits were checked against the current implementation rather than treated as proof receipts.

SHA256:

| Input | Hash |
|---|---|
| `KAM/Weighted/Coefficients.lean` | `741c4e611db4146ea8bba6e05451138905272f70104fabe031c8745078dc3632` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| `docs/tracks/N/audits/W4-3-handoff.md` (initially untracked) | `fbefff5a52254e451d11c144033591ce4044aaa9752163c8818c18b11ebde888` |

### Comparison boundary — retained integration note

Both requested comparisons were inspected: `git diff inp...HEAD` and `git diff inp-w42...HEAD -- KAM/Weighted/Coefficients.lean`. The first warns `multiple merge bases, using e6f5a69861f68d20fe1632afc569ef61b2c3a967`; the three merge bases are `e6f5a69861f68d20fe1632afc569ef61b2c3a967`, `9415aec0ff2ff12402d6556302a5ce5406aeb353`, and `bedc75173aab8a6b5d8404f1a39ce364353f7bdf`. The full comparison contains 70 changed files, including unrelated Track I implementations, graph reports and four added root imports. The w42 comparison also includes inherited integration changes; it is not globally a one-file delta.

Refutation of attribution to W4-3: `git diff 195f9e6..HEAD --stat`, using the immediate pre-W4-3 integration commit, is exactly `KAM/Weighted/Coefficients.lean | 438 insertions`. The two W4-3 commits are `c953b9b` and `3748097`. Their protected-path diff is empty. Thus the broad brief gate `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is **not literally empty**: it shows only inherited `KAM.lean` imports for EnergyCoordinate, Graph, R3bp.Uniqueness and NewtonContinuation. Frozen files, manifest and README have no changes in that comparison. This is an integration note requiring orchestrator awareness, not a W4-3 mathematical failure or permission to edit generated files. The unrelated inherited packages/graph edits are outside this report's certification.

## Declaration ledger

Names below are in `KAM.Weighted`; line locators refer to snapshot v1.

| Blueprint node | Declaration / line | Verdict | Reason |
|---|---|---|---|
| coefficients (b) | `dtheta`, 136 | PASS | Literal angular coordinate Fréchet derivative. |
| coefficients (b) | `dI`, 139 | PASS | Literal action coordinate Fréchet derivative. |
| coefficients (c) | `fourierSeries`, 143 | PASS | Scalar series with period-one characters, exactly the approved total formula. |
| coefficients (a) | `coeff_differentiableOn`, 128 | PASS | Holomorphy on the entire action tube, no weighted bound or assumed derivative-continuity premise. |
| coefficients (b), auxiliary | `inClass_fderiv_apply`, 158 | PASS | Every fixed-direction derivative is holomorphic and periodic on the same domain. Stronger helper: no positive-strip premise is needed. It does not replace a source result with a conditional shell. |
| coefficients (b) | `coefficients_deriv`, 280 | PASS | Independent forall j / forall i families, class preservation, positive `2π i k_j` multiplier, and action differentiation of the actual coefficients. |
| coefficients (c) | `coefficients_series`, 341 | PASS | Approved bound-predicate version: finite-set uniform convergence on every narrower strip, class membership, exact coefficient recovery and WBound by S. |
| coefficients (d) | `coefficients_repr`, 422 | PASS | HasSum to the original function on the full open domain, and each weighted term bounded by M. Works for finite vector/matrix targets. |

No provider or frozen theorem export is added; provider/frozen ABI equality and seal-body probes are N/A. Exact copies of the four Appendix-A/B.3 theorem types (design lines 655–685) were instead elaborated as examples applying the public implementation, with every explicit argument in order. All four succeeded. The implementation's public definitions additionally passed independent `rfl` equation probes.

### Binder audit and semantic expansion

Common type parameters, in outer-to-inner order for the W-valued results: `{n m : ℕ}`, `{W : Type*}`, the six instances below, `{D : Set (Fin m → ℂ)}`, `{r s : ℝ}`, and `{u : (Fin n → ℂ) × (Fin m → ℂ) → W}`. `coefficients_repr` additionally has M in its real-parameter block. No implicit logical premise was found beyond those listed.

| Expanded binder | Bin | Authority / meaning |
|---|---|---|
| n | TYPING | Part 4 domains: arbitrary finite angle dimension, including zero. |
| m | TYPING | Part 4 domains: independent finite action dimension, including zero. |
| W | TYPING | Part 4 vector/matrix extension; design section 0.2. |
| NormedAddCommGroup W | TYPING | Normed finite-coordinate target. |
| NormedSpace ℂ W | TYPING | Complex holomorphy and scalar multiplication. |
| NormedSpace ℝ W | TYPING | Real torus integration. |
| IsScalarTower ℝ ℂ W | TYPING | Compatible real/complex scalar actions. |
| CompleteSpace W | TYPING | Integration/series on the chosen finite-coordinate targets. |
| FiniteDimensional ℂ W | TYPING | Binding F6 finite-target restriction; supplies the actual regularity API. |
| D | TYPING | Arbitrary subset of ℂ^m; no connectedness/openness/nonemptiness premise. |
| r | TYPING | Action width; no unnecessary positivity assumption. |
| s | TYPING | Geometric angle width. |
| u | TYPING | Total extension of the source domain function. |
| hs : 0 < s | STANDING | Blueprint domains line 35; explicit design section 4 / departure D3. |
| hu.differentiableOn | SOURCE | Source class membership, Part 4 lines 45–46. |
| hu.periodic | SOURCE | For all j and domain points z, u(θ+e_j,I)=u(z), same source. |
| k in (a) | TYPING | Any Fourier index; comes after hs,hu in the explicit arguments. |
| v in helper | TYPING | Arbitrary fixed phase-space direction; comes after hu. |
| M in (d) | TYPING | Supplied finite norm upper bound. |
| hb: summability for every I in tube | SOURCE | Expanded WBound/WSummable, finite norm assumption in (d). |
| hb: weighted sum ≤ M for every I | SOURCE | Expanded WBound/wsum, same assumption. |
| a in (c) | TYPING | Scalar coefficients indexed by ℤ^n, valued in functions of I. |
| S in (c) | TYPING | Uniform supplied bound, fixed before hs,ha,hS. |
| ha : forall k, holomorphy of a_k | SOURCE | Part 4 line 65. |
| hS: forall I in tube, summability | SOURCE | Part 4 finite weighted sum. |
| hS: forall I in tube, weighted sum ≤ S | SOURCE | Part 4 finite uniform bound; no interchange of supremum and sum. |

Counts, expanding InClass and WBound as above: (a) TYPING 14, STANDING 1, SOURCE 2; (b) TYPING 13, STANDING 1, SOURCE 2; (c), whose target is scalar and has no W/instance binders, TYPING 7 (n,m,D,r,s,S,a), STANDING 1, SOURCE 3; (d) TYPING 14, STANDING 1, SOURCE 4; helper TYPING 14, SOURCE 2. RULED=0 and EXCESS=0 throughout. The finite-target restriction is the binding F6 scope, not an assumed analytic estimate. No nested bundle hides a proof step: InClass has exactly holomorphy and periodicity, and WBound exactly the two pointwise weighted-sum conditions.

Conclusion quantifiers in (b) are independent, so m=0 does not prevent angular differentiation and n=0 does not prevent action differentiation. In (c), uniform convergence is over the directed set of **all finite subsets** of ℤ^n, and is global in the action tube for each s'<s. No constant is selected after I, k or a narrower-strip point. In (d), the same M bounds every I and k.

## Proof and definition review

(a), lines 70–131: the action derivative of the actual character-weighted integrand is computed by the chain rule. The regularity theorem is applied with finite-dimensional source and target; joint continuity of Du is derived, not assumed. The compact real unit cube and open tube discharge the parametric integral theorem's premises.

(b), lines 158–289: local equality of u(w+a) and u(w) on the open domain gives equality of their derivatives. Angular coefficients are proved through separating continuous linear functionals, the real C¹ restriction, and the actual coordinate integration-by-parts theorem. `clm_torusCoeffW` commutes with the Bochner integral only after continuity/integrability is supplied. The real inclusion sends the real unit coordinate to its complex counterpart; there is no omitted 2π or sign flip. Action coefficients follow from the proved parametric derivative identity and integration of continuous-linear-map evaluation.

(c), lines 301–384: the term bound is exactly `S * exp(-(2*pi*(s-s')) * modeSize k)`. The exponent is summable for s'<s, including n=0. This proves absolute convergence as well as the finite-set uniform convergence exported by the approved interface. Holomorphy at each point of the full strip is obtained on a strictly smaller strip containing that point, using modeCutoff convergence and the proved uniform-limit theorem. Coefficients are recovered at the real torus using positive s and the supplied weighted summability. `WBound` follows by substituting those exact coefficients.

The source's “norm = S” at blueprint lines 65–66 is not lost: S there denotes the *exact supremum*, whereas the approved Lean interface permits any upper bound. Coefficient equality gives pointwise `wsum (fourierSeries a) s I = ∑' k, ‖a k I‖ * modeWeight s k`, hence equality of their action suprema. No claim that an arbitrary supplied upper bound equals the norm is made. Likewise (d) states the source's finite-norm result at every supplied finite bound. These are the binding D1 bound-predicate encoding, not weakened estimates.

(d), lines 388–435: the fixed-I vector series has the same coefficients, is holomorphic and periodic, and is absolutely summable at each strip point. Applying every complex continuous linear functional reduces equality to scalar Fourier uniqueness. This proves HasSum to u itself, without presupposing reconstruction or a sup-norm bound on u. The final inequality is a single nonnegative term of the convergent weighted sum.

Definition classifications (all source-formula definitions, no choice-defined objects):

| Definition | Visibility | Body / carrier assessment |
|---|---|---|
| cube, line 56 | private abbrev | Exactly ∏[0,1], including the unit-measure singleton in dimension zero. |
| cG, line 59 | private def | Exactly χ_{-k}(x) • u(x,I); same integral normalization as coeff. |
| dtheta, line 136 | public def | fderiv ℂ u applied to (e_j,0). |
| dI, line 139 | public def | fderiv ℂ u applied to (0,e_i). |
| fourierSeries, line 143 | public def | Exactly the declared scalar tsum, no case split or substitute family. |

For each of these five: BODY_MATCH=OK; PUBLIC_CARRIER=OK (private helpers interpreted on their declared carrier); WELL_DEFINEDNESS=N/A_LITERAL; CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A; DEFINITION_VERDICT=PASS. Total fderiv/tsum are the approved literal formulas on total extensions; no theorem relies on their off-regularity/off-summability defaults. Derivative assertions are restricted to open holomorphy domains; series assertions carry the actual summability premises. `@[expose] public noncomputable section` exposes the public definition bodies; all three public equations were checked by rfl.

Adversarial challenge results: empty D or r≤0 makes the action assertions vacuous, so a negative bound there does not fabricate a nonempty norm estimate. On a nonempty tube, the nonnegative weighted sum forces S≥0. Zero angle dimension is handled by the imported all-n Lean statements (and the blueprint now explicitly includes its singleton explanation); no n≥1 premise is hidden. No assumption about either derivative's weighted norm is introduced. General fixed-direction class preservation remains true even when the strip is empty. These challenges produced no surviving mathematical finding. This was an independent second pass by this auditor, not a separately delegated review.

## Linter and hygiene

**File-level `set_option linter.unusedSectionVars false`, line 38: acceptable, with a style note.** It changes warning emission only. It does not change theorem types, trusted axioms, elaboration heartbeats, recursion depth or synthesis limits. The unused instances were inspected in actual `#check @...` output; scalar series carries no phantom W assumptions. The switch ends at the module boundary. A scoped `set_option ... in` or local omit blocks would narrow the warning suppression, but are optional editorial improvements, not a mathematical or hard-rule blocker. The handoff's instance comment must not be read as asserting every declaration actually has all six instances: Lean includes the ones present in its elaborated type.

The file has 438 total lines, is a Lean module with copyright/imports/docstring/public exposed section, and contains no forbidden proof escape or resource override. A static traversal of its project imports found 28 modules and zero provider/frozen-theorem imports. Frozen **definitions** are used as intended. All imported source statements needed for this proof were inspected at their actual types; no proof closure of their unrelated consumers is claimed.

### Commands and independently observed output

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w43 KAM.Weighted.Coefficients` — exit 0:

```text
[inp-gate] slot 1 acquired 01:39:40 for KAM.Weighted.Coefficients
Build completed successfully (3157 jobs).
```

This was the targeted incremental build using the existing overlay; no clean/cache/update or library-from-scratch build was requested.

2. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W43Audit.lean` — exit 0. Probe imports only `KAM.Weighted.Coefficients`; it contains four exact-type applications extracted from the binding design, three literal-definition rfl examples, and `#check @...` / `#print axioms` for all five public theorems. Exact axiom output:

```text
'KAM.Weighted.coeff_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_deriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_series' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_repr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.inClass_fderiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Coefficients KAM.Weighted.Norm KAM.Weighted.Parametric` — exit 0, one invocation:

```text
replaying KAM.Weighted.Parametric
replaying KAM.Weighted.Norm
replaying KAM.Weighted.Coefficients
```

4. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` — exit 1 solely for the brief-exempt stale generated-root diagnostic. Full output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (320 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No other lint failure was emitted; this is PASS under the brief's explicit root-staleness exception, not an assertion that the raw command exited 0.

5. `git diff --check` — exit 0, no output. Protected-path comparison results and the multiple-merge-base warning are recorded above rather than misreported as an empty full-branch diff.

## Findings, deviations and closeout

No suspected new mathematical source defect, changed hypothesis, hidden premise, normalization deviation or implementation repair. The previously identified F3/F6 design issues are resolved in this implementation; the current blueprint contains the n=0 singleton explanation, so the old snapshot-sync warning is not carried forward as a current defect. Design section 4's citation “D27” for positive strip widths does not describe current DECISIONS D27 (BYPASSED status); the explicit width instruction and blueprint's r,s>0 convention remain clear. This is a pre-existing citation drift, not a missing premise in the package.

Retained notes: inherited broad-diff/generated-root changes; expected stale-root lint diagnostic; optional narrower linter suppression. No repair was authorized or made. The orchestrator retains ownership of generated imports and any errata-ledger update.

Closeout: all eight new public declarations and both private literal helpers classified; all four source clauses matched; all five public theorem axiom checks passed; exact signature/definition probes and kernel replay passed; targeted build passed. No track-level theorem, frozen seal, manuscript-wide proof closure, unrelated imported package, or downstream I/N/P consumer is certified by this report.
