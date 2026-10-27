# Parts 1, 4, 5 independent design audit 1

**Overall verdict: FAIL.** The main norm normalization, weighted estimates, and Hamiltonian/flow interfaces are sound as design targets, but the optional sharp branch contains a false theorem on an explicitly allowed carrier. There are also two incomplete statement interfaces and a package dependency error. Do not dispatch all packages unchanged.

Date: 2026-10-27. Marker: `dsgn-n145`. Scope: all 183 named declarations (117 theorems, 59 definitions, 7 structures) in the supplied signatures, including optional sharp declarations. PASS below means a design/signature assessment, not a proved theorem or kernel-certified proof closure.

## Snapshot, authority, and checks

Worktree `/root/code/KAM-inp-design-n145`, branch `inp-design-n145`, commit `40a5a33eef79e4f3b09d215a28a63055c805d346`. Worktree status was clean before and after inspection. The untracked signatures contain 1270 lines and hash to `87adf1f6ceecb412d7a0cfc521fe9d09aa6a40664ff0b8662044dc3315599afd`; Appendix A is byte-identical after removal of the Markdown fence and final-newline normalization.

Read the full design-audit brief, AGENTS.md, PLAN, DECISIONS, design and signatures, blueprint-N Parts 1/4/5, and their N-p1/N-p4/N-p5 graph packet contracts. Checked consumer passages in N Parts 6/7/9/10/11a–c/12 and P Parts 2/11/11a2, Fourier conventions, Part 3 design section K, and the frozen definitions referenced by the interfaces. Existing K reuse was checked in `/root/code/KAM-inp/KAM/{Strip,Fourier,Analysis}`; live inp HEAD observed during the check was `12f36c4ca2a27449bbdab9fa36c16ebe60edae65`. That moving integration ref is not the design snapshot.

The requested signature elaboration was run once successfully:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .drafts/design/NPart145Signatures.lean
```

Exit 0: exactly **115** lines matching ``warning: declaration uses `sorry` `` and no other diagnostic. The initial attempt to redirect output preceded creation of `.lake/abi-scratch/` and failed in the shell before invoking Lean; it was not an extra Lean elaboration.

Separate scratch probes checked the cited APIs and the counterexample below. All Lean commands ran serially with `nice -n 5`, default resource budgets, and `LEAN_NUM_THREADS=2`. No build, clean, update, cache operation, frozen edit, production edit, or state-changing git command was used. Scratch files were removed after recording receipts. Lint is recorded at the end.

## Findings and corrected signatures

### F1 — HIGH: SBound is not the bound predicate for a nonnegative sharp norm on the empty domain

Signatures:394–396 permits negative majorants when `polyNbhd D r` is empty. For `D=∅`, the condition `∀ I∈polyNbhd D r, ...` is vacuous; choosing only the zero Fourier mode with majorant -1 gives `SBound D r s u (-1)`. The source norm in p4:194–203 is a nonnegative extended-real sum of coefficient suprema, whose value on an empty domain is zero. It cannot be bounded by -1. Unlike WBound's deliberately vacuous empty-domain convention, this issue becomes an actual false theorem below.

Correct the definition to represent nonnegative majorants and bounds, including empty domains:

```lean
def SBound (D : Set (Fin m → ℂ)) (r s : ℝ)
    (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (M : ℝ) : Prop :=
  0 ≤ M ∧ ∃ c : (Fin n → ℤ) → ℝ,
    (∀ k, 0 ≤ c k) ∧
    (∀ I ∈ polyNbhd D r, ∀ k, ‖coeff u I k‖ ≤ c k) ∧
    Summable (fun k => c k * modeWeight s k) ∧
    ∑' k, c k * modeWeight s k ≤ M
```

This changes no nonempty-domain intended norm bound. The empty-domain propagation must also be repaired: after changing SBound, sharp_of_sup_bound needs a nonnegative numerical upper bound (the current bound-on-an-empty-set premise cannot imply it). Its corrected signature is:

```lean
theorem sharp_of_sup_bound {D : Set (Fin m → ℂ)} {r s σ M : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hσ : 0 < σ) (hM0 : 0 ≤ M)
    (hu : InClass D r (s + σ) u)
    (hM : ∀ z ∈ Dom n D r (s + σ), ‖u z‖ ≤ M) :
    SBound D r s u (coth (Real.pi * σ) ^ n * M) := by
  sorry
```

Here hM0 records that the supplied norm upper bound is nonnegative, not a new analytic estimate. With the original SBound this theorem is a true implication, so its inventory row passes the original version; it must be revised atomically with F1. The comparison with the literal sum of coefficient suprema should be a separately named characterization target, especially before any sharp consumer is admitted.

### F2 — HIGH: sharp_cauchy_theta is false for n=0, D=∅, M=-1

Signatures:413–416 explicitly allows `n=0`. Set `m=0`, `D=∅`, `r₀=1`, `s₀=2`, `s=1`, and `u=0`. InClass is vacuous, and the current SBound holds with `c k=-1`: `Fin 0 → ℤ` has a single Fourier index of size zero, so the weighted sum is -1. The conclusion requires a family `c : Fin 0 → ℝ` with

```text
0 = ∑ j, c j ≤ -1 / exp(1),
```

which is false. This is not a heartbeat or proof-search problem.

An independent scratch probe copied the exact six relevant definitions and proved all three facts: the InClass premise, the SBound(-1) premise, and the impossibility of the displayed numeric conclusion. It exited 0 (one proof-style suggestion about letI, no error). No `sorry` was used in the counterexample proof.

With corrected SBound from F1, the intended signature can remain unchanged:

```lean
theorem sharp_cauchy_theta {D : Set (Fin m → ℂ)} {r₀ s₀ s M : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r₀ s₀ u) (hb : SBound D r₀ s₀ u M)
    (hs0 : 0 < s) (hs : s < s₀) :
    ∃ c : Fin n → ℝ, (∀ j, SBound D r₀ s (dtheta j u) (c j)) ∧
      ∑ j, c j ≤ M / (Real.exp 1 * (s₀ - s)) := by
  -- Prover obligation after F1; no proof supplied by this audit.
  sorry
```

The sorry above is quoted proposed design text, not a repository Lean change. An alternative minimal repair is an explicit `hM : 0 ≤ M`; that fixes this theorem but leaves F1's definition mismatch, so it is not the recommended repair.

### F3 — MEDIUM: coefficients_deriv couples unrelated coordinate binders

Signatures:268–273 asks for both `j : Fin n` and `i : Fin m` before returning either derivative formula. Blueprint p4:62–65 and packet `bpN:p4:coefficients` treat angular and action derivatives independently and expressly permit m,n≥0. When n>0,m=0, an angular derivative exists, but this theorem cannot be instantiated because Fin 0 has no inhabitant. Conversely its action result cannot be used when n=0,m>0. This is an unnecessary inhabitation requirement, not typing data inherent in the requested derivative.

Correct by quantifying the two families separately:

```lean
theorem coefficients_deriv {D : Set (Fin m → ℂ)} {r s : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hu : InClass D r s u) :
    (∀ j : Fin n, InClass D r s (dtheta j u) ∧
      ∀ I ∈ polyNbhd D r, ∀ k,
        coeff (dtheta j u) I k =
          (2 * (Real.pi : ℂ) * Complex.I * (k j : ℂ)) • coeff u I k) ∧
    (∀ i : Fin m, InClass D r s (dI i u) ∧
      ∀ I ∈ polyNbhd D r, ∀ k,
        coeff (dI i u) I k =
          fderiv ℂ (fun I' => coeff u I' k) I (Pi.single i 1)) := by
  sorry
```

Separate angular/action lemmas are equally suitable. This issue does not refute the current theorem as an implication; it fails the full independent derivative API required by the source.

### F4 — MEDIUM: transform omits the source's convergence-in-norm conclusion

Blueprint p5:181–189 / packet `bpN:p5:transform` explicitly asserts “the series converges in” the weighted norm. Signatures:753–770 gives pointwise equality to the total tsum `liftRemainder`, holomorphy and two bounds, but no norm convergence or HasSum. A total tsum is zero for a nonsummable series; the present statements do not themselves exclude that interpretation. Composition_series explicitly includes norm convergence; transform needs the analogous clause. Its existing estimates and identities are otherwise faithful.

Keep its current premises and all current conclusions, and append the following conjunct (using `WBound` at the same radii). This is the corrected conclusion extension, not an added assumption:

```lean
(∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ N' ≥ N,
  WBound D (r - ρ) (s - σ)
    (fun z => liftRemainder φ h f₀ z -
      ∑ i ∈ Finset.range N',
        ((((i + 2).factorial : ℂ)⁻¹) *
            adPow φ (i + 1) (poissonBracket h φ) z +
          (((i + 1).factorial : ℂ)⁻¹) * adPow φ (i + 1) f₀ z)) ε)
```

Also expose pointwise HasSum on `Dom n D (r-ρ) (s-σ)` if the public `liftRemainder` is to be consumed as an actual convergent series. Norm convergence above plus the existing holomorphic-series estimates gives that interpretation; off-domain values remain irrelevant.

### F5 — MEDIUM: package waves do not respect the declared imports

Design §7 puts P1-5 (Constants numerics) in wave 1 with no predecessor. However `HeadParams.F` uses `KAM.Weighted.coth`, placed in SupWeighted (W4-4, wave 3); q/B/mu/ell use qcQ/qcB/qcMu/qcEll, placed in QuasiConvex, whose final module imports Hessian/HoloReal from later waves. The source file cannot be imported “partly” merely because its arithmetic definitions do not use the later theorems. P1-3a and P1-3b also share QuasiConvex, so a stable staged file boundary must be explicit.

Corrected package/import plan:

```text
Weighted/Norm or Weighted/Constants: own coth; available in W4-1.
Interfaces/Setting or Interfaces/ConstantsDefs: own qcQ/qcB/qcMu/qcEll.
Interfaces/ConicCoercive: the independent linear-algebra lemma, wave 1.
Interfaces/QuasiConvex: qc_convert; imports Hessian and ConicCoercive, wave 3.
P1-5: depends on W4-1 and ConstantsDefs (or defer it until wave 4).
P1-3b: imports, rather than concurrently edits, the completed ConicCoercive module.
```

No theorem signature needs a premise change for this repair. The 1500-line cap is respected by the estimated individual modules; a combined package estimate is not a file-size estimate.

## Signature-by-signature inventory

Each row names one declaration from the 1270-line file; line numbers refer to that file (and the corresponding Appendix A text). Prefixes are explicit. Generated structure projections are covered with their parent structure. Labels without a theorem number identify a literal definition or a stated elementary consequence. PASS for other sharp theorems assesses the implication at the current definition; it does not waive F1 or authorize consumers of the defective norm representation.

| Lean declaration (signature line) | Blueprint label | Verdict | Reason |
|---|---|---|---|
| `KAM.Canonical.poissonBracket` (67) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.adPow` (72) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.scaledNorm` (79) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.scaleCLE` (82) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.norm_scaleCLE` (87) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.symplFormC` (92) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.poissonBracket_eq_fderiv_field` (95) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.poissonBracket_antisymm` (99) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.differentiableOn_poissonBracket` (103) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.differentiableOn_adPow` (107) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.poissonBracket_eq_zero_of_snd` (112) | `bpN:p5:setting` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.RealOn` (117) | `bpN:p5:setting` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.polyNbhd` (142) | `bpN:p4:domains` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.Dom` (145) | `bpN:p4:domains` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.polydisc` (149) | `bpN:p4:domains` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.isOpen_polyNbhd` (152) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.isOpen_Dom` (154) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.polyNbhd_mono` (156) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.Dom_mono` (159) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.polydisc_subset_Dom` (163) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.actionNbhd_eq_polyNbhd` (168) | `bpN:p4:domains` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.InClass` (174) | `bpN:p4:norm` | PASS | Holomorphy and period-one shifts on the actual product domain. |
| `KAM.Weighted.coeff` (179) | `bpN:p4:norm` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.modeWeight` (183) | `bpN:p4:norm` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.wsum` (186) | `bpN:p4:norm` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.WSummable` (189) | `bpN:p4:norm` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.WBound` (193) | `bpN:p4:norm` | PASS | Correct finite bound encoding, including summability; empty locus is deliberately vacuous. |
| `KAM.Weighted.HasFiniteWNorm` (196) | `bpN:p4:norm` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.wnorm` (200) | `bpN:p4:norm` | PASS | Finite-bound-only real seminorm; never an extended norm on infinite cases. |
| `KAM.Weighted.wbound_iff` (203) | `bpN:p4:norm` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.WBound.mono` (208) | `bpN:p4:norm` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.wbound_pi_apply` (213) | `bpN:p4:norm` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.wbound_pi_of_components` (218) | `bpN:p4:norm` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.holomorphic_parametric_integral` (225) | `bpN:p4:ext-param` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.general_cauchy` (234) | `bpN:p4:general-cauchy` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.uniform_limit_holomorphic` (241) | `bpN:p4:ext-weier` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.dtheta` (252) | `bpN:p4:coefficients` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.dI` (255) | `bpN:p4:coefficients` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.fourierSeries` (259) | `bpN:p4:coefficients` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.coeff_differentiableOn` (263) | `bpN:p4:coefficients` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.coefficients_deriv` (268) | `bpN:p4:coefficients` | FAIL | F3: unrelated i/j binders prevent either zero-dimensional API use. |
| `KAM.Weighted.coefficients_series` (277) | `bpN:p4:coefficients` | PASS | Coefficient identity recovers exact source norm; uniform convergence encoded over finite sets. |
| `KAM.Weighted.coefficients_repr` (288) | `bpN:p4:coefficients` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.coth` (296) | `bpN:p4:sup-weighted` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.sup_le_wbound` (299) | `bpN:p4:sup-weighted` | PASS | No positive-s binder needed: nonpositive-strip cases are empty for n>0. |
| `KAM.Weighted.wbound_of_sup_bound` (305) | `bpN:p4:sup-weighted` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.coeff_mul` (312) | `bpN:p4:algebra` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.wbound_mul` (321) | `bpN:p4:algebra` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.wbound_pow` (325) | `bpN:p4:algebra` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.cauchy_theta` (333) | `bpN:p4:cauchy` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.cauchy_action` (340) | `bpN:p4:cauchy` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.cauchy_loss` (345) | `bpN:p4:cauchy` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.wbound_bracket` (354) | `bpN:p4:bracket` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.projMode` (366) | `bpN:p4:projections` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.truncate` (371) | `bpN:p4:projections` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.modeAverage` (375) | `bpN:p4:projections` | PASS | Literal source object / elementary typing helper. |
| `KAM.Weighted.projections` (378) | `bpN:p4:projections` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.truncation_tail` (386) | `bpN:p4:projections` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.SBound` (394) | `bpN:p4:sharp` | FAIL | F1: negative empty-domain majorants change the intended norm. |
| `KAM.Weighted.wbound_of_sbound` (398) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.sharp_sup_le` (401) | `bpN:p4:sharp` | PASS | Same nonpositive-strip vacuity; does not use a bad empty-domain value. |
| `KAM.Weighted.sharp_of_sup_bound` (404) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.sharp_mul` (408) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.sharp_cauchy_theta` (413) | `bpN:p4:sharp` | FAIL | F2: explicit zero-dimensional empty-domain counterexample. |
| `KAM.Weighted.sharp_cauchy_action` (418) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.sharp_bracket` (422) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Weighted.sharp_projections` (430) | `bpN:p4:sharp` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.gaugeInterior` (454) | `bpN:p5:flow` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.flow` (459) | `bpN:p5:flow` | PASS | Choice agrees on [-1,1] by flow_a; fallback is excluded on the claimed domain. |
| `KAM.Canonical.SmallField` (464) | `bpN:p5:flow` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.isOpen_gaugeInterior` (472) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.gaugeInterior_mono` (475) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.ball_subset_gaugeInterior` (479) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.flow_a` (485) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.flow_b` (494) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.flow_c` (505) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.flow_d` (512) | `bpN:p5:flow` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.flow_e` (521) | `bpN:p5:flow` | PASS | Exact two-equal-block reality claim; N11b requires reindexing, see consumer notes. |
| `KAM.Canonical.differentiableOn_hamField` (535) | `bpN:p5:vf-bound` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.vf_bound` (540) | `bpN:p5:vf-bound` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.symplectic` (551) | `bpN:p5:symplectic` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_bracket` (563) | `bpN:p5:canonical` | PASS | Pointwise derivative/bracket interface; local holomorphy follows on open flow preimage. |
| `KAM.Canonical.canonical_field` (577) | `bpN:p5:canonical` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_orbit` (589) | `bpN:p5:canonical` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.lie_derivative` (605) | `bpN:p5:lie-derivative` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.taylor_lie` (619) | `bpN:p5:taylor` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.taylor_poschel` (635) | `bpN:p5:taylor` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.adjoint_bound` (651) | `bpN:p5:adjoint` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.ComposeData` (664) | `bpN:p5:composition` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.ComposeData.omega` (678) | `bpN:p5:composition` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.ComposeData.gauge` (682) | `bpN:p5:composition` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.composition_domain` (688) | `bpN:p5:composition` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.composition_series` (698) | `bpN:p5:composition` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.composition_t` (714) | `bpN:p5:composition` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.composition_real` (723) | `bpN:p5:composition` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.composition_integral` (731) | `bpN:p5:composition-integral` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.liftRemainder` (747) | `bpN:p5:transform` | FAIL | F4: raw tsum needs the omitted convergence characterization. |
| `KAM.Canonical.transform` (753) | `bpN:p5:transform` | FAIL | F4: source norm-convergence conclusion missing. |
| `KAM.Canonical.CanonData` (775) | `bpN:p5:canonical-map` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.CanonData.omega` (785) | `bpN:p5:canonical-map` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.CanonData.gauge` (788) | `bpN:p5:canonical-map` | PASS | Literal source object / elementary typing helper. |
| `KAM.Canonical.canonical_map_a` (793) | `bpN:p5:canonical-map` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_map_b` (810) | `bpN:p5:canonical-map` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_map_c` (821) | `bpN:p5:canonical-map` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_map_d` (828) | `bpN:p5:canonical-map` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Canonical.canonical_map_e` (835) | `bpN:p5:canonical-map` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.euclid` (855) | `bpN:p1:norm-compare` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.norm_le_euclid` (858) | `bpN:p1:norm-compare` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.modeSize_euclid_compare` (863) | `bpN:p1:norm-compare` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.lattice_ball_inclusions` (867) | `bpN:p1:norm-compare` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.bilinear_euclid_bound` (873) | `bpN:p1:norm-compare` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.Data` (882) | `bpN:p1:s-holo#data` | PASS | Four frozen standing premises; namespace migration needs Part 3 coordination. |
| `KAM.Nekhoroshev.Wdom` (890) | `bpN:p1:s-holo#data` | PASS | Correct real open domain; namespace migration needs Part 3 coordination. |
| `KAM.Nekhoroshev.realActionDomain_eq` (896) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.isOpen_realActionDomain` (899) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.ball_subset_realActionDomain` (902) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.isOpen_Wdom` (905) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.realInclusion₂_preimage_complexDomain` (908) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.isOpen_actionNbhd_ball` (912) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.isOpen_complexDomain` (914) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.realInclusion_preimage_actionNbhd` (916) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tube_subset` (920) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tube_real` (924) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.complexStrip_mono` (929) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.complexStrip_zero` (932) | `bpN:p1:realdomain` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.holo_real_a` (939) | `bpN:p1:holo-real` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.holo_real_b` (946) | `bpN:p1:holo-real` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.complexHessian` (961) | `bpN:p1:holo-real` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.holo_real_c` (965) | `bpN:p1:holo-real` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.holo_real_d` (980) | `bpN:p1:holo-real` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.holo_real_e` (992) | `bpN:p1:holo-real` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.holo_input` (999) | `bpN:p3:holo-input` | PASS | Same expanded mathematical type as Part 3; renamed namespace, see coordination note. |
| `KAM.Nekhoroshev.partials` (1011) | `bpN:p1:partials` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.hessian_convert` (1022) | `bpN:p1:hessian-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.conic_coercive` (1032) | `bpN:p1:conic-coercive` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.qcQ` (1040) | `bpN:p1:qc-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.qcB` (1041) | `bpN:p1:qc-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.qcMu` (1042) | `bpN:p1:qc-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.qcEll` (1043) | `bpN:p1:qc-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.qc_convert` (1046) | `bpN:p1:qc-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.periodLift` (1062) | `bpN:p1:period-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.tildeH` (1066) | `bpN:p1:period-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.tildeh` (1070) | `bpN:p1:period-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.tildef` (1073) | `bpN:p1:period-convert` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.realHamiltonian_tilde` (1077) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.isSolutionOn_tilde_iff` (1081) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.frequencyMap_tildeh` (1086) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.fderiv_fderiv_realPart_tildeh` (1089) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tilde_hypotheses` (1094) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.qc_convert_tilde` (1104) | `bpN:p1:qc-convert (scaling)` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tildef_domain` (1113) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tildef_periodic` (1121) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.tildef_fourier` (1128) | `bpN:p1:period-convert` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.norm_convert` (1138) | `bpN:p1:norm-convert` | PASS | Already proved in draft directly from K summableWeighted_torusCoeff. |
| `KAM.Nekhoroshev.norm_convert_converse` (1149) | `bpN:p1:norm-convert` | PASS | Already proved from K representation and norm bound; boundedness is source-standing. |
| `KAM.Nekhoroshev.HeadParams` (1163) | `bpN:p1:constants` | PASS | Only n and six real parameters; no dependence on h/f/initial data. |
| `KAM.Nekhoroshev.HeadParams.Pos` (1172) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadHyp` (1181) | `bpN:p1:constants` | PASS | Uses frozen H1–H5 directly; no conclusion-shaped input. |
| `KAM.Nekhoroshev.HeadParams.expo` (1188) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.q` (1189) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.B` (1190) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.mu` (1191) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.ell` (1192) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.r0` (1193) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.A` (1195) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.s0` (1196) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.sigma` (1197) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.F` (1198) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.epsStar` (1199) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.C` (1201) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.c` (1202) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.T` (1204) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.HeadParams.eps0` (1205) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.centralSet` (1208) | `bpN:p1:constants` | PASS | Literal source object / elementary typing helper. |
| `KAM.Nekhoroshev.const_pos` (1212) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_eps0` (1216) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_size` (1220) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_tubes` (1225) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_hyp` (1232) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_perturbation` (1243) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_exceptional` (1250) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_time` (1258) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |
| `KAM.Nekhoroshev.const_conclusion` (1265) | `bpN:p1:constants` | PASS | Premises, carriers, constants and conclusion match the labeled source at this interface. |

## Weighted norm, carriers, and source premises

**Main WBound/InClass encoding: PASS for the finite-bound calculus.** `coeff` is exactly `KAM.torusCoeffW (fun x => u (ιx,I)) k`; its scalar specialization is `torusCoeffW_complex = rfl`. K integrates the period-one character at -k, so there is no sign, measure, or torus-period change. The coefficient weight is `exp(2π s modeSize k)`, not `exp(s modeSize k)`. Thus s is geometric width and K's coefficient radius is 2πs, exactly as Fourier conventions specify. For a single mode k, the derivative-to-function weighted-norm ratio at geometric loss σ is `2π|k_j| exp(-2πσ|k|₁) ≤ 1/(eσ)`. The absence of a residual 2π in cauchy_theta is correct.

`InClass` asserts complex differentiability on `complexStrip n s ×ˢ polyNbhd D r` and positive unit shifts of individual angles there. The domain is invariant under real integer shifts, so negative/all integer shifts follow by iteration; no global periodicity outside Dom is required. Independent n,m and arbitrary D agree with Part 4; only the bracket fixes m=n. Finite Pi and matrix norms are the coefficient max norm, with the sum over k outside that max. Nothing interchanges `sup_I ∑_k` with `∑_k sup_I` in the main calculus. The angular sum in cauchy_theta stays pointwise in I, which is essential for disconnected D.

WBound includes actual summability before using the real tsum. HasFiniteWNorm is an existence of a finite bound, not an analytic theorem assumed as an input. wnorm is a real conditional supremum, meaningful as the intended norm only on the finite locus; it does **not** represent an extended-real norm on its entire carrier. In particular design §0.3's phrase “give ... [0,∞]” should say “represent its finite bound calculus.” wbound_iff includes `0 ≤ M`, which correctly handles empty action domains; its finite-locus side prevents a nonsummable series' default tsum from being admitted. The declarations passing a raw wnorm elsewhere are guarded by HasFiniteWNorm or use explicit bounds. There is no infinite-case closure claim.

Public total formulas (fderiv partials, Poisson bracket, adPow, Fourier series, projections, scaledNorm, period scaling, Hessian, constants) are the indicated formulas; derivative/series properties are asserted on their genuine regularity/summability domains. `scaledNorm` is a norm only for positive ρ,σ; all norm claims use those conditions. The raw formula at zero/negative scales is not used to infer a norm property. `fourierSeries` and projections are interpreted through coefficients_series/projections on the finite-norm locus. `liftRemainder` needs F4's explicit convergence contract. SBound fails its intended whole-domain interpretation as in F1.

Expanded substantive inputs: Data has positive R,s, frozen analytic-integrable h, frozen analytic-perturbation f. HeadHyp uses exactly frozen integrability, complex Hessian bound, lower frequency bound, strict quasi-convexity, and ordered derivative bounds. HasDerivativeBounds already contains M>0, IsOpen U, and real C³, so partials has no missing openness premise. IsStrictlyQuasiConvex contains nonzero frequency and transverse coercivity in the max norm; qc_convert derives the Euclidean q=m/n and the cone estimate, without assuming positive definiteness. ComposeData and CanonData contain source width/loss inequalities, generator holomorphy/periodicity, its finite bound, nonnegativity and the numerical smallness condition. SmallField contains only source openness, holomorphy and size/nonnegativity premises; it assumes neither existence nor regularity of a flow. No instance or bundled field assumes a proof step. No global instance on a function or matrix type is introduced.

The generic Weighted codomain is actually an arbitrary complete complex normed W in the Lean file, although prose says finite dimensional. Its coefficient/norm claims remain mathematically valid for this stronger Banach-valued scope. However K's `holomorphic_regularity_of_finiteDimensional` also requires a finite-dimensional **codomain**. The W4-3 plan cannot apply it verbatim to that entire signature scope. Either restrict W to the source's finite vector/matrix carriers or prove/use the corresponding Banach-valued analytic regularity ingredient. This is a proof-plan obligation, not evidence that the stated Banach theorem is false.

## The five proposed blueprint repairs

| Issue | Assessment | Consumer check |
|---|---|---|
| B1: B.1(b) uses larger strip | PASS | InClass must be on s+σ, not inferred from a bound there. P11:146 supplies analytic continuation on the larger ζ strip; const_perturbation uses the original analytic domain and target s/2 with loss s/4. |
| B2: positive angular width | PASS, with a qualification | Positive width places the real torus inside the holomorphic domain. Many signatures imply it through their loss inequalities. `sup_le_wbound` and `sharp_sup_le` omit it safely: if n>0 and s≤0 their conclusion's Dom is empty; if n=0 the single Fourier mode directly gives the bound. Thus the design's statement “every statement ... carries 0<s” is too literal, but no false main-branch theorem results. Parts 6/7/9–12 and P consumers use positive strips; N7 real-strip limits can use positive widths tending to zero and WBound.mono at the bound level. |
| B3: 0≤Φ | PASS | This is a faithful property of a norm value when replacing the value by an arbitrary real upper bound. It excludes negative empty-domain bounds before defining the flow smallness ε. Consumer generators have nonnegative estimates; no extra analytic result is assumed. It does not repair SBound's separate issue. |
| B4: complex norm as ‖W·‖ | PASS for consumers; record restricted fixed-carrier representation | The flow layer is generic over a finite-dimensional complex normed E. On the fixed coordinate carriers, gauges represent weighted max norms, not every conceivable norm. N11b:41 uses diag(σ⁻¹,ρ⁻¹,ρ⁻¹); P11a2:205–206 uses scaleCLE(s/2,σ). Both are in scope. This is a documented generality choice, not a source mathematical defect. |
| B5: two-sided endpoint slack | PASS | A compact closed gauge ball inside open Ω has a slightly larger closed ball inside Ω. The bounded field supplies existence past ±1. It is also enough to use the maximal solution plus compact continuation. The chosen curve's solution predicate explicitly contains HasDerivAt at both endpoints. Do not claim that the exact radius-1/2 Picard step alone supplies this. |

## Chosen flow and frozen-object audit

**Chosen flow: PASS as a design with the stated characterization targets.** The existence proposition inside flow depends on F,Ω,z, not t; one representative is chosen once for each initial point. Therefore `(fun t => flow F Ω t z)` is that same entire curve. On gaugeInterior(1/2), flow_a proves existence, so its fallback branch is unreachable. Uniqueness gives equality with any eligible solution for |t|≤1, including the endpoints, and flow_b proves regularity of the resulting initial-point map there. A different representative has the same restricted flow. No claim uses values for |t|>1, a start outside the admissible interior, or a failure-of-existence fallback. This is a planned semantic unit; its unproved characterization targets do not certify a canonical object today.

**Frozen objects: PASS.** hamiltonianVectorFieldℂ, hamiltonianVectorField, frequencyMap, realHamiltonian, actionNbhd, complexStrip and all Nekhoroshev predicates in types are the frozen exports themselves. `poissonBracket_eq_fderiv_field` explicitly connects the bracket formula to the frozen complex field. holo_real_b/c connect real/complex derivatives and fields on the actual real slice. isSolutionOn_tilde_iff uses the frozen IsSolutionOn, including its differentiability guard and two-sided time derivative. No parallel solution predicate is substituted. symplFormC is a new **complexification** of the real frozen form, with the same coordinate sign; it is not passed off as the frozen real export. When consuming a real frozen Lagrangian condition, add the elementary real-inclusion bridge (formula follows by expanding both sums); the present signatures make no frozen-torus closure claim.

**Data/Wdom/holo_input migration: PASS mathematically, coordination required.** The old Part 3 design uses namespace `KAM.Nekhoroshev.ODE`, whereas this draft declares the objects in `KAM.Nekhoroshev`. Expanded Data fields, Wdom body and holo_input conclusion match Part 3 exactly. A child namespace can resolve an unqualified parent Data/Wdom after import, but `KAM.Nekhoroshev.ODE.Data` is not thereby the same fully qualified public name. The orchestrator must update Part 3's signature authority and package imports together or supply explicit abbreviations/forwarding exports for the old qualified names. Do not redeclare a second structure. N3-10a is absorbed into P1-2 only after that package proves holo_input; its current sorry is not a supplied dependency. No circular dependency is necessary: Setting/Domains/HoloReal use only the ODE Basic angleShift; the generic ODE layer does not import N-only Interfaces, while N-only Specialization imports them.

## Consumer verdicts

| Consumer | Verdict and exact applicability boundary |
|---|---|
| N6, normal form | Main API PASS after F3/F4. Finite projections and angular/action derivatives produce the homological data on positive strips; bracket constants and transform require no bound on h itself. Source smallness already uses η≤1/2, matching ComposeData. canonical_map has the required larger existence and smaller derivative/inverse domains. |
| N7, stability | PASS for the complex interfaces. canonical_field and canonical_orbit transfer the complex ODE; real restriction uses the frozen field bridge. The inverse is used only where flow_c/canonical_map_e make both starts admissible. The pointwise angular sum is sufficient; no sum of global derivative norms is supplied. |
| N9/N10, assembly | PASS. q,B,mu,ell,r0,A,F,epsStar,C,c,T,eps0 retain exactly the displayed dependencies. const_hyp supplies conic, not global, Hessian coercivity; const_perturbation converts geometric s/2 to coefficient radius πs. const_exceptional excludes the low-frequency branch; const_time provides a pointwise upper bound and arithmetic for any positive Ω0 below 2πnM. The consumer can form its compact-ball supremum using continuity, membership of I0 and the frequency lower bound; the design has not silently added a frequency lower bound to a theorem that lacks it. |
| N11a–c, partial route | Weighted calculus accommodates action parameter count m=n+2k. The three-block gauge is a product of scalar continuous linear equivalences, so general flow_a/b/c/d apply directly. flow_e is **not verbatim** on a triple product: it is explicitly for two equally sized coordinate blocks. Reindex into two blocks of size n+k, preserving the real subspace, and transport the solution/flow by uniqueness, or add a generic invariant-real-subspace theorem. N11b owns its Ωc symplectic form and bracket extension; these are not falsely supplied by symplectic for the canonical J. The design already assigns this proof locally. |
| N12, averaging | PASS for the declared use. Coefficient holomorphy applies with D=ι(B(0,R)), m=n and r=s, with no domain enlargement. Part 12 does not use a Lie transform; its general real C¹ initial-data dependence lemma remains a separate obligation, not a corollary of flow_b without analytic extension/rescaling. |
| P2, averaging | PASS after F3/F4. Revised p2:25–36 and 138–155 explicitly use sup_I sum_k and geometric conversion Σ/(2π). Thus the main WBound branch is the right norm; no unproved equivalence with sharp is needed. The integral composition target includes the required joint continuity of v and Dv, exactly as its source. |
| P11, CP09 | PASS. The larger analytic strip supplies InClass for B1(b); oscillator variables can be action parameters through generic m. The weighted bound is used before the final sup estimate, with the expected coth factor. |
| P11a2, cutoff/simple map | PASS for the inherited flow estimates. Use ρ=s/2, σ=σ and ε=κ in SmallField, not a fabricated weighted-norm bound on the affine Hamiltonian. The shape Θ, Mη+m and holomorphic dependence on b are new P11a2 proof obligations; they are not outputs of flow_b. Parameter dependence can be proved by adjoining a stationary complex b block and locally rescaling its finite-dimensional max norm, then applying generic flow_b. The field bound is uniform in b, and the zero b-velocity preserves the parameter domain. |

Remaining inexpensive transport helpers should be made explicit before dispatch: monotonicity in the base set D (not just widths), generic real-subspace/reindexing transport for N11b, and the Part 3 qualified-name migration. These are consequences of the displayed definitions/uniqueness, not new source premises to add to consumer theorems.

## Existing K / Mathlib reuse verification

**Names exist; their scope matters.** The primary reuse probe used the draft imports and checked the K/Fourier names, Cauchy, scalar Fourier reconstruction, holomorphic regularity and real-field bridge names, and every Mathlib name explicitly listed in design §3. The first probe found exactly three unavailable names under that import list: KAM.uniform_limits, KAM.taylor, KAM.increments. They exist in Limits, Taylor, Increments respectively. Adding those public imports made that probe exit 0. This is an import-list correction, not a missing theorem.

| Existing declaration | Verified actual contract / limitation |
|---|---|
| KAM.torusCoeffW, Bridges:348 | W-valued torus average; scalar equality is torusCoeffW_complex at :352. |
| KAM.decay, Bridges:382; decay_boundary_radius:401 | W complete complex/real normed with scalar tower, strip holomorphy, periodicity, uniform A; exponential factor uses 2π and modeSize. |
| KAM.summableWeighted_torusCoeff, FourierSeries:271 | Scalar result with 0<δ<ρ, holomorphic periodic bounded scalar u; target radius 2π(ρ−δ), coth(πδ)^n A. The draft's norm_convert applies it exactly. |
| KAM.eq_fourierSum_torusCoeff, FourierBasic:230; norm_fourierSum_le, FourierSeries:161 | Scalar reconstruction and scalar weighted bound. They are not directly W-valued; the W-valued plan needs the stated duality argument. |
| KAM.torusCoeff_fourierSum, FourierSeries:221 | Nonnegative coefficient width and weighted summability; not an unconditional inverse to arbitrary total-function coefficients. |
| KAM.Fourier.convolution, Convolution:34; weightedNorm_convolution_le:124 | Scalar coefficient convolution; summability and nonnegative coefficient radius are hypotheses. Index order differs from coeff_mul's displayed convolution but reindexing/commutativity resolves it. |
| KAM.Fourier.weightedNorm_partialCoeff_le, Derivative:109 | Derivative coefficients have factor 2π; coefficient-radius loss δ gives 2π/(exp(1)δ). Substitution δ=2πσ gives the design's constant. |
| KAM.norm_fderiv_le_of_closedBall(_bound), Cauchy:80/:53 | Arbitrary complex normed source/target, open-domain holomorphy, positive radius and contained closed ball; the bound form only needs the bound on that ball. general_cauchy's open-ball result is a new limit-in-radius corollary. |
| KAM.uniform_limits, Limits:49 | Requires pointwise function convergence **and uniform derivative convergence**. It alone is not uniform_limit_holomorphic. The new target must derive derivative convergence by Cauchy as planned. |
| KAM.holomorphic_regularity_of_finiteDimensional, Bridges:101 | Both source and target finite dimensional. Coordinate source wrapper holomorphic_regularity is at :135. Neither is already a Banach-target regularity theorem. |
| KAM.real_restriction, RealRestriction:219 | Strip/torus-map-specific real restriction. It is not an arbitrary-open-domain substitute. The arbitrary-domain Hamiltonian bridge hamiltonian_real_fderiv (:248) / hamiltonian_real (:345) is the relevant one for holo_real_c. |
| KAM.hamiltonianJ and field identities, RealRestriction:312 onward | Complex canonical field agrees with frozen hamiltonianVectorFieldℂ; sign relative to omegaZero is −omegaZero. The design's form uses the frozen dI∧dθ sign consistently. |
| KAM.taylor, Taylor:177; KAM.increments, Increments:124 | First-order/strip increment tools, not the full Nth-order trajectory integral remainder. taylor_lie remains new work. |

The probe also successfully checked the listed integral differentiation theorem, tendstoUniformlyOn_tsum, Summable.tsum_prod, the one-variable Cauchy derivative theorem, scalar derivative scaling, second derivative symmetry, ContDiffAt.iteratedFDeriv_comp_perm, restriction of scalars, det, smulLeft/prodCongr, and both listed intervalIntegral theorems. `iteratedFDeriv_comp_perm` is restricted to the analytic/smooth order hypotheses printed by Mathlib; it cannot discharge arbitrary C³ symmetry by pretending C³ is analytic. The partials plan correctly identifies a separate finite-order Schwarz proof.

A follow-up probe of proof-plan auxiliary names encountered a missing built `KAM.Strip.Cohomological.olean` in both design and inp overlays, so it could not #check torusCoeff_fderiv there without a build. Source inspection confirms it exists at KAM/Strip/Cohomological.lean:66 and is scalar. No rebuild was run for this design audit. This is a scoped verification limit, not a claim that the declaration is missing.

## Coverage and errata notes

1. **Blueprint typo:** blueprint-N/parts/p5-canonical-maps.tex:59 says “symmetrically ... T_->-1”. To have existence on [-1,1] inside the maximal open interval, the conclusion must be **T_-<-1**. Time reversal proves the latter. The Lean flow_a target is correct; this is a source prose/sign defect to record in the orchestrator's errata ledger.
2. **Stale norm prose:** p4:196 says “Track P's averaging uses” sum_k sup_I, while revised P2:25–36 and 138–155 deliberately use sup_I sum_k. The mathematical comparison in p4 remains correct; its attribution to the current P consumer is stale. The design correctly avoids using the reverse inequality.
3. B1's larger-strip holomorphy repair is necessary; B2 is mostly an explicit standing-domain convention rather than a newly discovered source theorem defect; B3 is the bound-encoding degeneracy; B4 is an interface generality choice; B5 repairs a proof implementation route, not the theorem statement. Do not classify all five as source errata of the same kind.
4. The optional sharp package does not expose every source variant: there is no separate sharp tail/power theorem, and Part 5 sharp-composition has no signature at all. The design expressly defers the latter and current consumers do not require it. These graph nodes must remain unimplemented/deferred, not be marked covered by the present main-norm theorems. Likewise composition_t exposes the class/coarse bound, not a full separately stated time-t Lie-series expansion; one obtains further series claims by applying composition_series to tφ with a proved flow-rescaling identity.
5. Package/file totals are estimates. All proposed individual modules are below 1500 lines; the signature scratch itself is 1270 lines. No resource overrides or new global instances occur. Source-level design acceptance does not promise that the hardest new regularity, Taylor, or composition proofs will elaborate at default budgets; those remain bounded proof tasks.

## Final verification receipt and scope

`LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh` exited 0, with exact output:

```text
check_lean_modules: PASS (243 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This was a read-only design audit. No production module was changed, so there is no new module build or proof-axiom receipt to report. The deliberate sorry-bearing design file is not a provider or a frozen theorem and is not proof progress. The only authored repository artifact is this report in the main inp worktree. Corrections above are recommendations; none was applied to signatures, blueprints, frozen files, or graph status.

## Complete corrected transform target (F4)

The definition of liftRemainder keeps its literal series formula; this theorem supplies its missing norm-convergence characterization. All original premises and conclusions are retained.

```lean
theorem transform {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ Mw F₀ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {h f₀ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hh : InClass D r s h) (hf : InClass D r s f₀)
    (hw : WBound D r s (poissonBracket h φ) Mw) (hf₀ : WBound D r s f₀ F₀) :
    (∀ z ∈ Dom n D (r - ρ) (s - σ),
      h (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) + f₀ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) =
        h z + poissonBracket h φ z + f₀ z + liftRemainder φ h f₀ z) ∧
    (∀ z ∈ Dom n D (r - ρ) (s - σ), liftRemainder φ h f₀ z =
      ∫ t in (0 : ℝ)..1, poissonBracket
        (fun w => ((1 - t : ℝ) : ℂ) * poissonBracket h φ w + f₀ w) φ
        (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z)) ∧
    InClass D (r - ρ) (s - σ) (liftRemainder φ h f₀) ∧
    WBound D (r - ρ) (s - σ) (liftRemainder φ h f₀)
      (∑' i : ℕ, (Real.exp 1 * (2 * Φ / (ρ * σ)) / 4) ^ (i + 1) * (Mw / ((i : ℝ) + 2) + F₀)) ∧
    WBound D (r - ρ) (s - σ) (liftRemainder φ h f₀)
      ((2 * Φ / (ρ * σ)) / (1 - 2 * Φ / (ρ * σ)) * (Mw / 2 + F₀)) ∧
    (∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ N' ≥ N,
      WBound D (r - ρ) (s - σ)
        (fun z => liftRemainder φ h f₀ z -
          ∑ i ∈ Finset.range N',
            ((((i + 2).factorial : ℂ)⁻¹) * adPow φ (i + 1) (poissonBracket h φ) z +
              (((i + 1).factorial : ℂ)⁻¹) * adPow φ (i + 1) f₀ z)) ε) := by
  sorry
```

## Reproducing the counterexample and API checks

After copying the exact definitions polyNbhd, Dom, InClass, coeff, modeWeight and SBound to a scratch namespace with the draft's ambient variables/imports, these examples elaborate without sorry:

```lean
example : InClass (∅ : Set (Fin 0 → ℂ)) 1 2
    (fun _ : (Fin 0 → ℂ) × (Fin 0 → ℂ) => (0 : ℂ)) := by
  constructor <;> simp [Dom, polyNbhd]
example : SBound (∅ : Set (Fin 0 → ℂ)) 1 2
    (fun _ : (Fin 0 → ℂ) × (Fin 0 → ℂ) => (0 : ℂ)) (-1) := by
  refine ⟨fun _ => -1, ?_, ?_, ?_⟩
  · simp [polyNbhd]
  · letI : Fintype (Fin 0 → ℤ) := Fintype.ofSubsingleton 0
    exact (hasSum_fintype _).summable
  · simp [modeWeight, KAM.Fourier.modeSize]
example : ¬ ∃ c : Fin 0 → ℝ,
    (∑ j, c j) ≤ (-1 : ℝ) / (Real.exp 1 * (2 - 1)) := by
  simp only [Finset.univ_eq_empty, Finset.sum_empty]
  intro ⟨c, hc⟩
  have hp : 0 < Real.exp 1 * (2 - 1) :=
    mul_pos (Real.exp_pos _) (by norm_num)
  exact (div_neg_of_neg_of_pos (by norm_num : (-1 : ℝ) < 0) hp).not_ge hc
```

Commands: `LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/dsgn-n145-refute.lean` exited 0; `LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/dsgn-n145-checks.lean` with Limits/Taylor/Increments imports and the auxiliary names (excluding the unbuilt Cohomological import) exited 0 with no unknown identifier. The latter also verified ContinuousLinearMap.integral_comp_comm, norm_torusCoeffW_le_of_dual, the iterated-derivative translation/scaling/composition names, fderiv_comp_add_right, Filter.EventuallyEq.fderiv_eq, ContinuousLinearMap.le_opNorm₂, Convex.lipschitzOnWith_of_nnnorm_fderiv_le and NormedSpace.norm_le_dual_bound. Probe development errors were corrected in scratch only; no signature file was edited or re-elaborated as part of those probes.
