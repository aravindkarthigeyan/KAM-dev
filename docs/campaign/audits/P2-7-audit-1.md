# P2-7 independent audit 1

Overall verdict: **PASS WITH NOTES**, restricted to the AUDIT FOCUS in `P2-7-handoff.md`.

Audited HEAD: `e3792580c359017afec73ddd90ce217b47580639` (merge of main into `k/p2-7`);
comparison main: `cb00071f6b192628701c988868e2a0dc3a851529`. The implementation includes prover
commit `9c8ebec`. The branch diff contains two new modules and the two corresponding generated
root imports. No Lean source was edited during this audit.

The complete exactness result and the three first-strip geometry estimates pass. The fourth
geometry helper, `geo_esym_le`, passes for its explicitly claimed pointwise part. The inputs and
arithmetic for the cohomological estimate pass as auxiliary results. **This audit does not certify
`bp:p2:geometry`, the complete `step:p2:geo-omegak`, or the complete `step:p2:geo-esym`.** Their
missing estimates are an authorized scope boundary, not proved results. I did not rely on the
prover's reported scratch assembly.

## Node-by-node comparison

Sources compared directly: `docs/graph/K/DEPGRAPH.md:5942–6278`,
`blueprint/parts/p2-aposteriori.tex:515–596`, the enclosing standing data and constants at
lines 59–123, and the design's §§0–2, module/package tables, departures L1–L12 and Appendix A
exactness/geometry signatures (lines 1078–1102). Names below are fully qualified.

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p2:exactness` | `KAM.Apost.exactness`, `KAM/Apost/Exactness.lean:292` | PASS | Signature byte-identical to Appendix A. Standing data, positive width, holomorphy, primary condition and image containment precede both zero-average conclusions. No extra premise. |
| `step:p2:ex-curl` | `KAM.Apost.Exactness.curl_actionForm`, `Exactness.lean:122` | PASS | The difference of the two directional derivatives equals the intended entry of `Lᵀ Ω₀ L`. Equality orientation is reversed from the prose, with identical content. Primaryness is unnecessary for this local identity; `periodic_actionForm:79` separately proves the required periodicity. |
| `step:p2:ex-avg-omega` | `KAM.Apost.Exactness.avg_lagrangeMat`, `Exactness.lean:177` | PASS | Positive width, holomorphy and primaryness suffice. The proof establishes continuity/integrability and integrates the curl entrywise. |
| `step:p2:ex-gradient` | `KAM.Apost.Exactness.etaN_apply`, `Exactness.lean:228` | PASS | For every strip point and coordinate, `ηᴺ = D(h ∘ K) − Ω_K ω`, with the blueprint signs, ordinary transpose and complexified real frequency. The Hamiltonian chain rule is proved in `transpose_mul_omegaZero_ham:209`. |
| `step:p2:ex-avg-eta` | `KAM.Apost.Exactness.avg_etaN`, `Exactness.lean:251` | PASS | Derives the gradient identity and zero average of `Ω_K`; neither is assumed. Integrability is established before subtracting/integrating the finite sum. |
| `step:p2:geo-de` | `KAM.Apost.Geometry.geo_de`, `KAM/Apost/Geometry.lean:87` | PASS | On `T_(r−δ)`, exactly `n ε/δ` and `2n ε/δ`. Holomorphy of the error is derived; the transpose bound uses the `2n`-component Cauchy bridge, avoiding an extra factor of `n`. |
| `step:p2:geo-domegak` | `KAM.Apost.Geometry.geo_domegak`, `Geometry.lean:120` | PASS | Exactly `2n(n+1) m ε/δ` on `T_(r−δ)`. Adds only the source derivative bound A3 to the preceding helper's inputs and derives the two matrix-product bounds from frame identities. |
| `step:p2:geo-ered` | `KAM.Apost.Geometry.geo_ered`, `Geometry.lean:162` | PASS | Exactly `C_red ε/δ` on `T_(r−δ)`. A3, the A4 inverse bound and A6 are source premises. Uses the literal block definition, the maximum of block-row bounds, and `m ≥ 1`; no small-divisor estimate is assumed. |
| `step:p2:geo-omegak` | `KAM.Apost.Geometry.geo_omegak_inputs:269`, `geo_omegak_arith:285` | PASS for supplied auxiliaries; full node deferred | Proves holomorphy, periodicity, zero average and the directional-derivative estimate on `T_(r−δ)`, plus the exact real-power identity. Does not prove the bound on `T_(r−2δ)`. |
| `step:p2:geo-esym` | `KAM.Apost.Geometry.geo_esym_le:240`, `geo_esym_arith:294` | PASS for pointwise part and arithmetic; full node deferred | Proves `‖E_sym‖ ≤ m² ‖Ω_K‖` at every point with invertible Gram matrix and the source inverse bound; exactly the first displayed calculation of this step. Does not claim the final cohomological estimate. |
| `bp:p2:geometry` | No declaration | NOT CERTIFIED; authorized deferral | Omitted as required by `briefs/P2-7.md`; the missing Part 2 cohomological corollary is explicitly documented at `Geometry.lean:25–50` and `KAM/Apost/Tools.lean:39–42`. |

## Premises, carriers, constants and proofs

`Standing` was expanded against the enclosing blueprint assumption. Its fields are the fixed
parameter restrictions, open translation-invariant domain, holomorphic periodic real Hamiltonian,
three vector-field derivative bounds, positive γ and Diophantine condition. There is no
conclusion-shaped field. This is the blueprint's global standing data, not an added hypothesis.
The geometry helpers take only the relevant A1–A6 data instead of full admissibility. In particular,
image containment follows from A2 and β > 0, and each inverse-norm premise is an A4 projection.
They assume neither exactness nor a cohomological solution/bound as a hard proof step.

All vectors and phase points retain the specified function/pair carriers; `sumVec` is the existing
max-norm isometry. Both modules open `Matrix.Norms.Operator`. Transposes are bilinear transposes,
not adjoints. The derivative matrices, Lagrangian matrix, normal matrix, symplectic defect,
reducibility defect and `etaN` were checked against `KAM/Torus/Objects.lean:58–126`.
`avg` is the real-unit-cube integral through `KAM/Torus/Basic.lean:134`; there is no change of
period or average normalization.

Constants are the existing definitions in `KAM/Apost/Constants.lean:60–78`:
`κ = τ+n`, `c_R = max 1 (cohConst n τ)`, `m = max {1,M,σK,σB,σT}`,
`C_Omega = 2n(n+1)c_R m`, `C_sym = m² C_Omega`, `C_red = 2n(n+1)m²`.
No constant gains a dependence on the map, domain, width, error, loss or frequency. The arithmetic
helper uses real powers for `δ^κ` and `δ^(κ+1)`, with positive δ, and the original γ denominator.

Exactness is slightly stronger than the blueprint's wording: `etaN` needs no Gram inverse, so
its zero average holds without `det G ≠ 0`. This is explicitly authorized by design departure L9
and the audit brief's stronger-statement exception. The curl identity similarly needs no
primaryness until periodicity is used. The first-strip geometry estimates drop unused restrictions
such as δ ≤ 1, 2δ < r, ε ≤ 1, reality, twist and primaryness. These are valid strengthenings under
distinct helper names, not weakened conclusions. See the minor convention note below about width.

Proof review found the intended predecessor route: mixed derivative symmetry, periodic derivative
averages and the Hamiltonian chain rule for exactness; Cauchy estimates, frame bounds/identities
and block operator norms for geometry. `geo_ered` can unfold `redDefect` directly because that
object is defined by the displayed blocks. It need not assume or reprove the separate reducibility
identity to bound those blocks. No proof contradicts the blueprint, and no frozen theorem/provider
shortcut is used.

## Definition classification

The only new `def`/`abbrev`/`structure` in the branch's Lean modules is
`KAM.Apost.Exactness.actionForm` (`Exactness.lean:54–55`). It is the literal finite sum
`Σ_l K^I_l · ∂_j K^θ_l`, expressed through `sumVec` and `tangentMat`. It has no branch, chosen witness,
inverse or fallback. As with the existing tangent matrix, Lean's total `fderiv` supplies a value
outside differentiability; the curl/derivative theorems explicitly require holomorphy and strip
membership. No theorem exploits a non-differentiability fallback. `Geometry.lean` adds no definition.

## Checks and exact outputs

All commands ran from `/root/code/KAM-w-p2-7`. Build, lint (including its internal ABI elaboration)
and the axiom probe were serialized. No clean, cache reset, full-library build, resource override
or state-changing git command was used.

1. `git diff --stat main...HEAD`:

```text
 KAM.lean                 |   2 +
 KAM/Apost/Exactness.lean | 300 ++++++++++++++++++++++++++++++++++++++++++++++
 KAM/Apost/Geometry.lean  | 306 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 608 insertions(+)
```

2. `git diff main...HEAD -- KAM/Frozen manifest`: no output, exit 0.
   `git diff --check main...HEAD`: no output, exit 0.
   `git diff main...HEAD -- KAM.lean` adds only the public imports of Exactness and Geometry;
   the root generator check passed as part of lint. `README.md` is untouched.

3. `wc -l KAM/Apost/Exactness.lean KAM/Apost/Geometry.lean`:

```text
  300 KAM/Apost/Exactness.lean
  306 KAM/Apost/Geometry.lean
  606 total
```

Both files have the copyright/authors header, `module`, public imports, module docstring and
`@[expose] public noncomputable section`. The new definition is covered by `@[expose]`.
A code-mask scan using `scripts/check_lean_modules.py` found:

```text
KAM/Apost/Exactness.lean: forbidden tokens/overrides = []; new definitions = ['actionForm']
KAM/Apost/Geometry.lean: forbidden tokens/overrides = []; new definitions = []
```

The scan checked `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace` and all `set_option`
tokens after masking comments and strings. Import review found no frozen theorem or provider import;
permitted frozen definitions enter through existing infrastructure.

4. `nice -n 5 lake build KAM.Apost.Geometry`: exit 0 (includes Exactness as a dependency).

```text
Build completed successfully (2912 jobs).
```

5. `sh scripts/lint_sources.sh`: exit 0.

```text
check_lean_modules: PASS (237 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

6. Mechanical signature comparison: extracted text from `theorem exactness ` to the first `:=`
in `Exactness.lean` and in the design with Python `Path.read_text`, then compared using `==`:

```text
Exactness signature byte-identical to Appendix A: True
Axiom probe declarations: 26
```

7. A temporary probe `.lake/abi-scratch/P27Audit.lean` imported `KAM.Apost.Geometry` and issued
`#print axioms` for every theorem in the two new modules (26 results, including every helper).
Command: `nice -n 5 lake env lean .lake/abi-scratch/P27Audit.lean`; exit 0, exact output:

```text
'KAM.Apost.Exactness.lagrangeMat_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.differentiableOn_actionForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.periodic_actionForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.fderiv_tangentMat_symm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.fderiv_actionForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.curl_actionForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.continuous_ofReal_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.continuous_real_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.integral_fderiv_apply_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.continuous_fderiv_apply_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.differentiableOn_lagrangeMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.avg_lagrangeMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.transpose_mul_omegaZero_ham' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.etaN_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.differentiableOn_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Exactness.avg_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.exactness' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.complexStrip_sub_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.errDerivMat_eq_of' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_de' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_domegak' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_ered' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_esym_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_omegak_inputs' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_omegak_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Geometry.geo_esym_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The probe was deleted after successful elaboration. No `sorryAx` or additional axiom appears.

Provider exact-type probe: **not applicable**. P2-7 has no provider export or frozen theorem to
seal. The Appendix A exactness signature was compared directly instead.

## Findings, deviations and limits

No blocking or major finding in the requested scope.

**Minor M1 — positive-width convention is relaxed in helpers without an explicit explanation.**
The design §1.4 and departure L5 require explicit positive strip widths, and `P23-COMMON.md`
extends that convention to helper lemmas. For example, `Geometry.lean:87–91`, `120–126` and
`162–168` quantify over r without `0 < r`; some local Exactness helpers do likewise. These are
valid stronger statements, so they pass the audit brief's fidelity exception. The proofs use
only strip membership and remain sound for the total strip definition; the main `exactness`
signature retains `hr`. Proposed fix: document this deliberate strengthening and have the
orchestrator reconcile it with the blanket helper convention, or restore the redundant positive-width
premises in the affected helpers. No mathematical repair is required.

**Coverage note (authorized, no defect):** do not mark `bp:p2:geometry`, `step:p2:geo-omegak` or
the full `step:p2:geo-esym` proved based on this report. Their full conclusions remain unpaid.
A later assembly needs a separate audit against Appendix A, including the loss condition
`δ < r−δ` and the final bounds on `T_(r−2δ)`.

Suspected pinned-source errata: none identified. This is an implementation/blueprint/design audit;
no independent printed-PDF verification of HL19 or GJLV05 was performed. No blueprint mathematical
defect was found. Observed deviations are the authorized stronger formulations above and M1.
Auditor-introduced deviations: none; the only repository artifact written is this report.
