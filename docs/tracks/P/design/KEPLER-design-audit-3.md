# Independent Kepler design audit 3

**Verdict: PASS.** R2-1 is resolved: the radius is chosen from the full geometric admissibility predicate, and the source construction proves existence of a witness satisfying all its conjuncts simultaneously. No conclusion-shaped premise is added. The original `exact_ham` and geometric output are now valid projections of the chosen radius's specification. The specified R2-2 prose corrections are present. No further signature repair is required by this round.

Marker: `dsgn-kep3`. Audited branch `inp-design-kep`, commit **`4369c5c946abe8e0ef1eae1ff497dd31af774129`**, in `/root/code/KAM-inp-design-kep`. This is a design/source-contract PASS, not certification of the draft theorem proofs or frozen-anchor closure.

## Snapshot and scope

Read the current audit brief and repository rules. Compared this revision with audit 2's pinned `d0ca71ddb8ba96ac40705cd40dde0783870a8589`, rechecked the changed selection surface, its source construction, dependent output types and consumer requirements. The tracked diff changes only the design document; frozen definitions, source blueprints and consumers are unchanged. All Appendix A blocks are byte-identical to the named untracked files.

| Input | SHA256 |
|---|---|
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5` |
| `.drafts/design/KeplerSignatures.lean` | `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370` |
| `.drafts/design/KeplerSignaturesP.lean` | `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8` |
| `.drafts/design/check_kepler.sh` | `89f4e31090c39d3cfb22d6fe510769d397d20e9b7d31cf8895a6a1121c1b5d05` |
| `manifest/frozen-anchors.json` | `95ab954c0479944c1a314487276da31c6bf1af8eebbfbd49e88c06cd01cf4cdf` |

Here `A:L` denotes line L of `KeplerSignatures.lean`, and `P:L` denotes line L of `KeplerSignaturesP.lean`, at these hashes. Mechanical comparison after removing comments/layout found exactly **two additions**, `ExactRadiusData` and `exact_radius_spec`, and **one modified definition**, `exactDelta`. No declaration was removed. The other **411 declarations** have unchanged statements and bodies. There are now **414 declarations: 296 theorems, 114 definitions, four structures**. The inventory below carries forward the bounded source correspondence of audit 2 for unchanged declarations and explicitly reviews the affected radius/consumer family.

## R2-1: selection and existence

The relevant code is A:917–936:

```lean
def ExactRadiusData (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Prop :=
  0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ ∧
    ∀ w ∈ UDelta K δ,
      (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K)

def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ : ℝ, ExactRadiusData K δ then h.choose else 0

theorem exact_radius_spec {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ExactRadiusData K (exactDelta K) := sorry
```

**Definition verdict: PASS.** The geometric condition holds for *every complex point* in the chosen neighbourhood; it is not restricted to real points, safe actions alone, or a single witness. It uses the intended `delaunayC`, position projection, Euclidean complex length in `shiftO`, and the original K-dependent shell/shift constants. The old counterselection from audit 2 is excluded by this final conjunct. Classical choice may still select any admissible radius; every permitted witness now has every promised property. Uniqueness of this auxiliary radius is neither intended nor needed.

**Binder verdict: PASS.** Expanding `SafeAction K` gives exactly compactness, nonemptiness and inclusion in `0<G<L`. The other premise is the source condition `kRhoMax K<1`. Neither `ExactRadiusData`, its existence, geometric closeness, holomorphy, nor Hamiltonian exactness is accepted as an input. `ExactRadiusData` is transparently an output predicate used in a choice and a theorem conclusion; it is not a disguised standing assumption. Proving the specification still requires proving existence. There is no proof circularity in the definitions: neither `ExactHamData K δ` nor its geometric companion depends on `exactDelta`.

**Existence verdict: PASS as a provable design target.** Reconstructed the simultaneous witness from `blueprint-I/parts/p7-delaunay.tex:393–421`, especially `stepI:p7:eh-shell`, `stepI:p7:eh-delta`, `stepI:p7:eh-hol` and `stepI:p7:eh-exact`. The reviewed packet `docs/graph/I/packets/I-p7b.nodes.md`, node `stepI:p7:eh-delta` (L548–557), explicitly records the geometric inclusion as part of the construction. The following argument applies to the *selected* positive `δ₁=complexDelta K`, not merely to an unrelated existential complex-domain radius:

1. `complex_domain_spec hK` supplies `ComplexDomainData K δ₁`, hence `δ₁>0`, holomorphy of `delaunayC K` on `UDelta K δ₁`, the cone/branch controls and real agreement. `SafeAction.ecc_bounds` and `hρ` give `0<rmin≤rhoMax<1`. Thus `shiftConst_shiftEps` proves admissibility of `epsilon0=exactEps K`; in particular epsilon0 and mu2 are positive and the shift bound is finite.
2. Restrict the two real angle parts to the closed fundamental cell `[0,2*pi]²`. Allow imaginary angle parts at most `δ₁/2` and complex actions at distance at most `δ₁/2` from the complexified compact K. This is a compact set in the actual finite-dimensional Pi/product carriers and lies strictly inside `UDelta K δ₁`. Compactness of K supplies the distance witnesses at the closed boundary; no unique nearest point is required. Holomorphy gives continuity, hence uniform continuity of the complex position map on this compact set.
3. Choose a uniform-continuity distance eta for position tolerance `epsilon0/(2*sqrt(2))` in the **Pi sup norm**. Choose `0<δ≤min(δ₁/2,eta/2)`. For an arbitrary point in `UDelta K δ`, subtract integer multiples of `2*pi` from the real angle parts. The position is unchanged by the established orbit-map periodicity. The frozen `actionNbhd` definition supplies some real `J∈K` within δ of its complex actions. Replacing the angles by their real parts and actions by J gives a real comparison point within δ in the input sup/product norm, with both points in the compact set above.
4. The comparison point is mapped to the physical real Delaunay position by `ComplexDomainData`'s real-agreement clause. Its physical radius lies in `[rmin,rhoMax]` by the orbit-radius bounds and the compact extrema defining these constants. Uniform continuity and `clen(v)≤sqrt(2)*‖v‖` give the strict complex Euclidean position distance `<epsilon0/2`. This is precisely the witness required by the literal `shiftO` definition. The sqrt(2) adjustment is necessary because the ambient Lean norm is a sup norm; the finite two-coordinate complex inequality is elementary and requires no extra assumption.
5. On this **same δ**, compose the complex position map with `shift_holomorphic`; apply `shift_bound` for the uniform F bound and `shift_real` for reality, collision exclusion and the frozen physical Hamiltonian identity. Orbit periodicity supplies periodicity of `exactF` even for the arbitrary complex mu quantified in that conjunct: equality of the position arguments implies equality of the total `shiftF` for every mu. Positive δ gives inclusion of every real safe-action point. These prove all six conjuncts of `ExactHamData K δ` together with the already obtained geometric inclusion. Thus `∃ δ, ExactRadiusData K δ` follows with δ depending on K only, independently of mu.

With this existence proved, unfolding `exactDelta` takes the positive `if` branch and `choose_spec` supplies the complete `ExactRadiusData`. This establishes `exact_radius_spec`; it does not identify a chosen witness with a different radius constructed earlier. The fallback value zero is unreachable under the theorem's source premises.

The result predicates are right-associated conjunctions. Therefore the unchanged outputs are literally projections of the specification:

```lean
-- h := exact_radius_spec hK hρ
-- exact_ham:
⟨h.1, h.2.1, h.2.2.1⟩
-- exact_positions_mem_shiftO:
h.2.2.2
```

These expressions describe the intended proofs; the actual signature file still has `sorry` bodies. No new source-facing premise or change of constants, real/complex carrier, physical Hamiltonian, or solution predicate is needed.

## Consumers, frozen objects, definitions and packages

**Consumers: PASS for the repaired surface.** `period_one`, `transfer`, `transfer_identities` and `nondeg_exact` retain their original types and obtain the same positive radius, subordination bound and exact Hamiltonian data from `exact_ham`. The geometric output now also holds for that exact selected radius. I8 can supply `SafeAction K` and the existing apocentre condition; it need not prove an admissibility predicate or select a radius. All constants still precede mu. P and N interfaces, including phaseCast, frozen fastShift and shared plane-length helpers, are unchanged from the passing portions of audit 2.

**Frozen-object fidelity: PASS.** No frozen file or manifest changed. The repaired geometry uses the actual frozen `actionNbhd` existential sup-norm neighbourhood; the position shell uses the physical `planeLength`, with explicit conversion to the complex Euclidean `clen` tolerance. Hamiltonian exactness and transfer still refer to the frozen restricted Hamiltonian and solution predicates through the previously reviewed bridges. No new parallel physical definition is introduced.

**Definitions: PASS.** `ExactRadiusData` is the full internal admissibility predicate; `exactDelta` selects it, and `exact_radius_spec` proves it from source assumptions. Its wider total carrier and zero fallback do not yield any new off-domain physical conclusion. This closes the distinction between a sufficiently small constructed witness and an arbitrary radius satisfying the earlier weaker predicate.

**Packages: PASS for this change.** The two new declarations belong to the existing `Iso/ExactHamiltonian` package I-7 and use its existing ComplexDomain, ShiftPotential, RestrictedHam and Orbit dependencies. No new DAG edge, provider import or package is required. Rechecked all 32 listed package waves: each agrees with its prerequisites (I-0 remains the explicit existing wave-0 integration prerequisite). The 1006- and 690-line signature fragments remain below the cap; the generated concatenation is an audit artifact, not a proposed production module. Existing estimated module sizes remain below 1500.

**R2-2: CLOSED for the specified prose fixes.** D10/D20 now describe full admissibility and the projection relationship; the obsolete “phaseCast to be added” statement and the mismatched cast analyticity docstring are corrected. The numerical text correctly distinguishes the true bound `cosh(1)<1.5431` from the weaker exponential estimate used by its probe. Older abbreviated module/node lists need not enumerate every helper to establish ownership of this repair; no new mathematical or scheduling defect follows from those abbreviations.

No blocking or required corrective findings remain in the scope of round 3. Implementation of the compactness/composition argument is still prover work; this report certifies that its target is faithful and supported by the stated source construction. The prior audit limit for the unavailable P13 blueprint and unlanded cross-branch implementations remains; this local repair does not claim those implementations have been independently checked.

## Per-signature inventory

The complete current inventory is retained for traceability. Unchanged declarations carry the source-contract verdict of audit 2; no new proof certification is inferred from unchanged bytes. Radius-dependent outputs are explicitly rechecked above. All 414 current declarations are classified PASS at design level; there are no FAIL rows requiring corrected signatures.

| File:line | Lean name | Blueprint label / role | Verdict | Round-3 reason |
|---|---|---|---|---|
| A:90 | `KAM.Kepler.rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:94 | `KAM.Kepler.ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:96 | `KAM.Kepler.planeSq_eq_planeDot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:97 | `KAM.Kepler.planeLength_sq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:98 | `KAM.Kepler.planeLength_nonneg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:99 | `KAM.Kepler.planeLength_eq_zero_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:100 | `KAM.Kepler.planeLength_pos_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:101 | `KAM.Kepler.planeLength_neg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:102 | `KAM.Kepler.planeLength_sub_comm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:103 | `KAM.Kepler.planeLength_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:104 | `KAM.Kepler.abs_planeDot_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:105 | `KAM.Kepler.planeLength_add_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:106 | `KAM.Kepler.abs_planeLength_sub_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:108 | `KAM.Kepler.norm_le_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:109 | `KAM.Kepler.planeLength_le_sqrt_two_mul_norm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:111 | `KAM.Kepler.planeSq_mul_planeSq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:114 | `KAM.Kepler.eq_of_planeDot_planeCross_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:117 | `KAM.Kepler.planeLength_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:118 | `KAM.Kepler.planeDot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:119 | `KAM.Kepler.planeCross_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:120 | `KAM.Kepler.rot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:121 | `KAM.Kepler.rot_two_pi_int` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:122 | `KAM.Kepler.rot_quarterTurn` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:123 | `KAM.Kepler.rot_ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:125 | `KAM.Kepler.exists_rot_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:128 | `KAM.Kepler.analyticAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:129 | `KAM.Kepler.analyticAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:131 | `KAM.Kepler.analyticAt_inv_cube_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:134 | `KAM.Kepler.hasFDerivAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:138 | `KAM.Kepler.hasFDerivAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:145 | `KAM.Kepler.radius_eq_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:146 | `KAM.Kepler.radiusSq_eq_planeSq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:155 | `KAM.Kepler.keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:158 | `KAM.Kepler.keplerJac` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:160 | `KAM.Kepler.keplerMeanLongitude_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:162 | `KAM.Kepler.longitudeJacobian_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:165 | `KAM.Kepler.hasDerivAt_keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:166 | `KAM.Kepler.keplerPhi_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:167 | `KAM.Kepler.keplerPhi_zero` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:168 | `KAM.Kepler.keplerJac_ge` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:169 | `KAM.Kepler.keplerJac_pos` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:170 | `KAM.Kepler.keplerPhi_strictMono` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:171 | `KAM.Kepler.keplerPhi_bijective` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:175 | `KAM.Kepler.keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:179 | `KAM.Kepler.keplerPhi_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:181 | `KAM.Kepler.keplerLong_unique` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:183 | `KAM.Kepler.keplerLong_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:185 | `KAM.Kepler.keplerLong_zero_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:188 | `KAM.Kepler.analyticOnNhd_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:190 | `KAM.Kepler.hasDerivAt_keplerLong_lambda` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:193 | `KAM.Kepler.fderiv_keplerLong_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:200 | `KAM.Kepler.eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:202 | `KAM.Kepler.planeLength_eccVec` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:204 | `KAM.Kepler.eccAnom_eq` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:205 | `KAM.Kepler.analyticOnNhd_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:206 | `KAM.Kepler.eccAnom_zero_left` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:207 | `KAM.Kepler.eccAnom_two_pi` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:208 | `KAM.Kepler.eccAnom_zero_ecc` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:209 | `KAM.Kepler.hasDerivAt_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:211 | `KAM.Kepler.strictMono_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:213 | `KAM.Kepler.keplerLong_eq_add_eccAnom` | `bpP:p7:regular-kepler(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:219 | `KAM.Kepler.keplerOp` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:223 | `KAM.Kepler.KeplerData` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:237 | `KAM.Kepler.keplerSol` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:245 | `KAM.Kepler.keplerSol_spec` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:250 | `KAM.Kepler.keplerSol_analyticOnNhd` | `bpI:p7:kepler-eq / bpP:p7:regular-kepler (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:253 | `KAM.Kepler.keplerSol_differentiableOn` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:258 | `KAM.Kepler.keplerSol_fderiv` | `bpI:p7:kepler-eq / bpP:p7:regular-kepler (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:265 | `KAM.Kepler.keplerSol_real` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:269 | `KAM.Kepler.keplerSol_shift` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:273 | `KAM.Kepler.regularTube` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:275 | `KAM.Kepler.keplerLongC` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:277 | `KAM.Kepler.regularKepler_complex` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:283 | `KAM.Kepler.keplerLongC_ofReal` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:286 | `KAM.Kepler.keplerLongC_shift` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:289 | `KAM.Kepler.hasDerivAt_keplerLongC_lambda` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:295 | `KAM.Kepler.fderiv_keplerLongC_vec` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:302 | `KAM.Kepler.regularKepler_jac_bound` | `bpP:p7:regular-kepler(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:307 | `KAM.Kepler.cosh_one_lt` | `bpP:p7:regular-kepler(b) (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:312 | `KAM.Kepler.keplerE2` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:313 | `KAM.Kepler.keplerTheta` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:314 | `KAM.Kepler.keplerY0` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:315 | `KAM.Kepler.keplerDeltaK` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:316 | `KAM.Kepler.keplerDeltaE` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:319 | `KAM.Kepler.keplerTube` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:323 | `KAM.Kepler.eccAnomC` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:325 | `KAM.Kepler.keplerConstants_pos` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:329 | `KAM.Kepler.keplerEq_tube` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:338 | `KAM.Kepler.keplerTube_real_points` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:340 | `KAM.Kepler.eccAnomC_periodic` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:343 | `KAM.Kepler.eccAnomC_zero_ecc` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:345 | `KAM.Kepler.hasDerivAt_eccAnomC_ell` | `bpI:p7:kepler-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:349 | `KAM.Kepler.hasDerivAt_eccAnomC_ecc` | `bpI:p7:kepler-eq(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:362 | `KAM.Kepler.IsSymplecticOn` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:367 | `KAM.Kepler.IsSymplecticOn.comp` | `bpP:p1:chart (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:373 | `KAM.Kepler.phaseToC` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:377 | `KAM.Kepler.eccOf` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:380 | `KAM.Kepler.kE` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:383 | `KAM.Kepler.orbitFrame` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:388 | `KAM.Kepler.orbitMapR` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:392 | `KAM.Kepler.deDom` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:395 | `KAM.Kepler.delaunay` | `bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:398 | `KAM.Kepler.keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:402 | `KAM.Kepler.elemL` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:403 | `KAM.Kepler.elemA` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:404 | `KAM.Kepler.elemEcc` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:406 | `KAM.Kepler.isOpen_keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:407 | `KAM.Kepler.isOpen_deDom` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:412 | `KAM.Kepler.orbitMapR_radius` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:414 | `KAM.Kepler.orbitMapR_radius_bounds` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:417 | `KAM.Kepler.orbitMapR_speed_sq` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:420 | `KAM.Kepler.orbitMapR_cross` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:422 | `KAM.Kepler.orbitMapR_dot` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:424 | `KAM.Kepler.orbitMapR_energy` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:427 | `KAM.Kepler.orbitMapR_radial` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:432 | `KAM.Kepler.orbitMapR_periodic` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:434 | `KAM.Kepler.analyticOnNhd_orbitMapR` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:440 | `KAM.Kepler.delaunay_mem_region` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:441 | `KAM.Kepler.delaunay_elements` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:444 | `KAM.Kepler.orbitMapR_eq_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:446 | `KAM.Kepler.analyticOnNhd_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:447 | `KAM.Kepler.eccOf_mem_Ioo` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:451 | `KAM.Kepler.delaunay_hamiltonian` | `bpI:p7:h0` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:455 | `KAM.Kepler.delaunayGen` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:457 | `KAM.Kepler.delaunay_liouville` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:461 | `KAM.Kepler.delaunay_hamiltonianVectorField` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:470 | `KAM.Kepler.orbitMapColumn` | `bpI:p7:symplectic (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:484 | `KAM.Kepler.fderiv_orbitMapR_basis` | `bpI:p7:symplectic (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:488 | `KAM.Kepler.fderiv_delaunay_basis` | `bpI:p7:symplectic (helper)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:501 | `KAM.Kepler.delaunay_symplectic` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:502 | `KAM.Kepler.delaunay_fderiv_equiv` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:506 | `KAM.Kepler.delaunay_hasFDerivAt` | `bpI:p7:symplectic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:511 | `KAM.Kepler.delaunay_periodic` | `bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:513 | `KAM.Kepler.delaunay_eq_iff` | `bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:516 | `KAM.Kepler.keplerRegion_subset_image` | `bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:517 | `KAM.Kepler.delaunay_localDiffeo` | `bpI:p7:chart` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:522 | `KAM.Kepler.orbitMapC` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:531 | `KAM.Kepler.orbitDomC` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:535 | `KAM.Kepler.orbitMapC_differentiableOn` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:537 | `KAM.Kepler.orbitMapC_periodic` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:541 | `KAM.Kepler.orbitMapC_real` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:544 | `KAM.Kepler.orbitMapC_ofReal` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:548 | `KAM.Kepler.orbitDomC_mem_ofReal` | `bpI:p7:orbit-maps-e` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:553 | `KAM.Kepler.orbitMapR_mean_inv_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:555 | `KAM.Kepler.orbitMapR_mean_speed_sq` | `bpI:p7:means; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:557 | `KAM.Kepler.orbitMapR_mean_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:563 | `KAM.Kepler.scaleMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:565 | `KAM.Kepler.energyMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:566 | `KAM.Kepler.axisMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:567 | `KAM.Kepler.actionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:569 | `KAM.Kepler.regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:572 | `KAM.Kepler.delaunayMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:574 | `KAM.Kepler.isOpen_regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:575 | `KAM.Kepler.scaleMK_energy` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:577 | `KAM.Kepler.scaleMK_cross` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:579 | `KAM.Kepler.scaleMK_symplectic` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:580 | `KAM.Kepler.scaleMK_bijective` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:582 | `KAM.Kepler.cross_le_action` | `bpP:p7:range` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:584 | `KAM.Kepler.cross_eq_action_iff` | `bpP:p7:range` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:588 | `KAM.Kepler.delaunayMK_symplectic` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:589 | `KAM.Kepler.analyticOnNhd_delaunayMK` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:590 | `KAM.Kepler.delaunayMK_image` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:592 | `KAM.Kepler.delaunayMK_eq_iff` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:596 | `KAM.Kepler.delaunayMK_localDiffeo` | `bpP:p7:kepler(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:599 | `KAM.Kepler.delaunayMK_periodic` | `bpP:p7:kepler(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:602 | `KAM.Kepler.delaunayMK_identities` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:609 | `KAM.Kepler.delaunayMK_position` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:613 | `KAM.Kepler.hasDerivAt_keplerEnergy_action` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:616 | `KAM.Kepler.delaunayMK_means` | `bpP:p7:kepler` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:623 | `KAM.Kepler.energyMK_eq_mul_energy` | `bpI:p7:scaling` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:627 | `KAM.Kepler.scaleMK_flow` | `bpI:p7:scaling` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:632 | `KAM.Kepler.scaleMK_hamiltonianVectorField` | `bpI:p7:scaling` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:650 | `KAM.Iso.keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:653 | `KAM.Iso.finThreeEquivSumUnit` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:656 | `KAM.Iso.differentiableOn_keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:657 | `KAM.Iso.keplerRotH_real` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:661 | `KAM.Iso.frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:663 | `KAM.Iso.fderiv_frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:666 | `KAM.Iso.borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:669 | `KAM.Iso.det_borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:673 | `KAM.Iso.periodOneMap` | `bpI:p6:conversion-map` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:674 | `KAM.Iso.periodOneMapC` | `bpI:p6:conversion-map` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:678 | `KAM.Iso.periodOneMap_symplectic` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:679 | `KAM.Iso.periodOneMap_hamiltonianVectorField` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:682 | `KAM.Iso.periodOneMap_hasDerivAt_iff` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:688 | `KAM.Iso.keplerRotH_comp_div` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:691 | `KAM.Iso.frequencyMap_comp_div` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:697 | `KAM.Iso.keplerBorder_conversion` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:701 | `KAM.Iso.borderedHessian_conversion` | `bpI:p6:conversion` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:708 | `KAM.Iso.nondeg_period_one` | `bpI:p6:nondeg` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:724 | `KAM.Iso.restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:728 | `KAM.Iso.restrictedHamiltonian_eq` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:730 | `KAM.Iso.isOpen_collisionFree` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:732 | `KAM.Iso.analyticOnNhd_restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:734 | `KAM.Iso.restrictedVectorField_eq_hamiltonian` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:736 | `KAM.Iso.isRestrictedSolutionOn_iff` | `bpI:p7:ham-eq` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:740 | `KAM.Iso.restricted_newton_iff` | `bpI:p7:newton` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:749 | `KAM.Iso.restrictedHamTotal_zero` | `bpI:p7:h0` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:752 | `KAM.Iso.NearCircularWitness` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:756 | `KAM.Iso.nearCircular_witness_unique` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:761 | `KAM.Iso.nearCircular_eq` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:764 | `KAM.Iso.nearCircular_eq_image` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:768 | `KAM.Iso.isOpen_nearCircular` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:769 | `KAM.Iso.nearCircular_nonempty_iff` | `bpI:p7:near-circular` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:778 | `KAM.Iso.vtheta` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:780 | `KAM.Iso.clen` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:782 | `KAM.Iso.e0` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:784 | `KAM.Iso.shiftW` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:786 | `KAM.Iso.shiftPsi` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:789 | `KAM.Iso.shiftF` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:791 | `KAM.Iso.shiftXi` | `bpI:p7:shift-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:795 | `KAM.Iso.ShiftConst` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:803 | `KAM.Iso.shiftEps` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:804 | `KAM.Iso.shiftCstar` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:805 | `KAM.Iso.shiftCsh` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:807 | `KAM.Iso.shiftO` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:810 | `KAM.Iso.shiftConst_shiftEps` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:813 | `KAM.Iso.shiftF_eq_integral` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:816 | `KAM.Iso.shift_domain` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:821 | `KAM.Iso.shift_holomorphic` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:824 | `KAM.Iso.shift_mul_eq` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:827 | `KAM.Iso.shift_bound` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:830 | `KAM.Iso.shift_value_zero` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:833 | `KAM.Iso.shift_real` | `bpI:p7:shift` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:846 | `KAM.Iso.SafeAction` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:851 | `KAM.Iso.kEccMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:852 | `KAM.Iso.kEccMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:853 | `KAM.Iso.kLMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:854 | `KAM.Iso.kGMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:855 | `KAM.Iso.kRmin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:856 | `KAM.Iso.kRhoMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:858 | `KAM.Iso.SafeAction.ecc_bounds` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:862 | `KAM.Iso.eccC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:864 | `KAM.Iso.UDelta` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:867 | `KAM.Iso.delaunayC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:871 | `KAM.Iso.ComplexDomainData` | `bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:886 | `KAM.Iso.complexDelta` | `bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:890 | `KAM.Iso.complex_domain_spec` | `bpI:p7:complex-domain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:893 | `KAM.Iso.exactF` | `bpI:p7:exact-ham` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:895 | `KAM.Iso.exactEps` | `bpI:p7:exact-ham` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:896 | `KAM.Iso.exactMu2` | `bpI:p7:exact-ham` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:897 | `KAM.Iso.exactCF` | `bpI:p7:exact-ham` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:900 | `KAM.Iso.ExactHamData` | `bpI:p7:exact-ham` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:917 | `KAM.Iso.ExactRadiusData` | `bpI:p7:exact-ham / stepI:p7:eh-delta` | PASS | Full source-construction admissibility, including every complex position in shiftO; output predicate only. |
| A:923 | `KAM.Iso.exactDelta` | `bpI:p7:exact-ham` | PASS | Choice now retains every promised property; geometric counterselections are excluded. |
| A:928 | `KAM.Iso.exact_radius_spec` | `bpI:p7:exact-ham / stepI:p7:eh-delta` | PASS | Existence follows simultaneously from the compact-period source construction; only original hK and hρ are inputs. |
| A:932 | `KAM.Iso.exact_ham` | `bpI:p7:exact-ham` | PASS | Unchanged type; positivity, subordination and ExactHamData project from the repaired specification. |
| A:935 | `KAM.Iso.exact_positions_mem_shiftO` | `stepI:p7:eh-delta` | PASS | Unchanged type; the geometry is now a direct conjunct of the selected radius specification. |
| A:943 | `KAM.Iso.tildeF` | `bpI:p7:period-one` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:947 | `KAM.Iso.delaunay_periodOne_symplectic` | `bpI:p7:period-one(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| A:951 | `KAM.Iso.period_one` | `bpI:p7:period-one` | PASS | Unchanged interface; repaired specification supplies the same radius and exact Hamiltonian data. |
| A:973 | `KAM.Iso.transfer` | `bpI:p7:transfer` | PASS | Unchanged frozen solution/radius output remains supported with the repaired choice. |
| A:985 | `KAM.Iso.transfer_identities` | `bpI:p7:transfer` | PASS | Unchanged exact radius/elements/frozen-energy output remains supported. |
| A:999 | `KAM.Iso.nondeg_exact` | `bpI:p7:nondeg` | PASS | Unchanged determinant/action guard follows on the same chosen neighbourhood. |
| P:26 | `KAM.Planetary.collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:29 | `KAM.Planetary.ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:31 | `KAM.Planetary.bodyVector_ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:32 | `KAM.Planetary.ofBodies_bodyVector` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:36 | `KAM.Planetary.isOpen_collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:37 | `KAM.Planetary.analyticOnNhd_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:39 | `KAM.Planetary.analyticOnNhd_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:41 | `KAM.Planetary.differentiableAt_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:43 | `KAM.Planetary.differentiableAt_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:47 | `KAM.Planetary.keplerPart` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:49 | `KAM.Planetary.pairPotential` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:51 | `KAM.Planetary.fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:53 | `KAM.Planetary.fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:55 | `KAM.Planetary.keplerPart_eq_sum` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:58 | `KAM.Planetary.movingHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:60 | `KAM.Planetary.fixedHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:62 | `KAM.Planetary.moving_sub_fixed` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:64 | `KAM.Planetary.analyticOnNhd_fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:65 | `KAM.Planetary.analyticOnNhd_fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:68 | `KAM.Planetary.gKernel` | `bpP:p6:action-reaction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:69 | `KAM.Planetary.fKernel` | `bpP:p6:action-reaction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:73 | `KAM.Planetary.sum_mass_smul_fKernel` | `bpP:p6:action-reaction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:76 | `KAM.Planetary.hamiltonianVectorField_moving` | `bpP:p6:hamilton-eqs` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:83 | `KAM.Planetary.hamiltonianVectorField_fixed` | `bpP:p6:hamilton-eqs` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:91 | `KAM.Planetary.hasDerivAt_bodyVector` | `bpP:p6:hamilton-eqs` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:101 | `KAM.Planetary.nbodyHamiltonian` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:107 | `KAM.Planetary.helioMap` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:110 | `KAM.Planetary.helioInv` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:115 | `KAM.Planetary.helioMap_helioInv` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:116 | `KAM.Planetary.helioInv_helioMap` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:117 | `KAM.Planetary.helioMap_symplectic` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:118 | `KAM.Planetary.helioMap_pairing` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:123 | `KAM.Planetary.nbodyHamiltonian_helio` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:130 | `KAM.Planetary.nbodyHamiltonian_helio_zero_momentum` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:138 | `KAM.Planetary.newton_to_moving` | `bpP:p6:reduction` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:152 | `KAM.Planetary.barycentricPositions_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:154 | `KAM.Planetary.barycentricPositions_succ_sub_succ` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:157 | `KAM.Planetary.barycentricPositions_zero` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:159 | `KAM.Planetary.barycentricVelocities_zero` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:161 | `KAM.Planetary.barycentricVelocities_succ` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:163 | `KAM.Planetary.barycentricVelocities_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:166 | `KAM.Planetary.sum_actualMasses_smul_barycentricPositions` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:168 | `KAM.Planetary.sum_actualMasses_smul_barycentricVelocities` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:170 | `KAM.Planetary.planeLength_barycentricPositions_zero_le` | `bpP:p6:bary-algebra` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:175 | `KAM.Planetary.reconstruction` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:182 | `KAM.Planetary.reconstruction_all_time` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:189 | `KAM.Planetary.isNewtonSolutionOn_of_isMovingSolutionOn` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:195 | `KAM.Planetary.reconstruction_fixed` | `bpP:p6:reconstruction-fixed` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:206 | `KAM.Planetary.reconstruction_fixed_all_time` | `bpP:p6:reconstruction-fixed` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:212 | `KAM.Planetary.orbit_transfer_moving` | `bpP:p6:orbit-transfer` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:218 | `KAM.Planetary.orbit_transfer_fixed` | `bpP:p6:orbit-transfer` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:232 | `KAM.Planetary.AxisData` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:238 | `KAM.Planetary.axisMax` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:239 | `KAM.Planetary.axisGap` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:241 | `KAM.Planetary.axisData_canonical` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:245 | `KAM.Planetary.tubeRadius` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:246 | `KAM.Planetary.tubeD` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:247 | `KAM.Planetary.tubeBigD` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:249 | `KAM.Planetary.tubeRadius_pos` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:250 | `KAM.Planetary.tubeD_lt_tubeBigD` | `bpP:p6:tube-constants` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:254 | `KAM.Planetary.circularTube_mono` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:257 | `KAM.Planetary.circularTube_euclidean` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:262 | `KAM.Planetary.circularTube_distances` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:268 | `KAM.Planetary.circularTube_pair_bounds` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:274 | `KAM.Planetary.circularTube_pairBounds_barycentric` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:278 | `KAM.Planetary.circularTube_pairBounds_fixed` | `bpP:p6:tube-geometry` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:284 | `KAM.Planetary.newton_in_tube` | `bpP:p6:newton-in-tube` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:293 | `KAM.Planetary.fixed_in_tube` | `bpP:p6:newton-in-tube` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:308 | `KAM.Planetary.circularTube_norm_lt` | `bpP:p6:measure-positive(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:311 | `KAM.Planetary.volume_lt_top_of_subset_circularTube` | `bpP:p6:measure-positive(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:316 | `KAM.Planetary.measure_chart_image` | `bpP:p6:measure-positive(b) / bpP:p1:liouville-lattice` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:328 | `KAM.Planetary.movingKolmogorovSet_of_tube` | `bpP:p6:movkol-assembly` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:335 | `KAM.Planetary.fixedKolmogorovSet_of_tube` | `bpP:p6:fixkol-assembly` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:357 | `KAM.Planetary.poincareGamma` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:358 | `KAM.Planetary.poincareK` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:360 | `KAM.Planetary.poincareV` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:363 | `KAM.Planetary.poincareF` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:366 | `KAM.Planetary.poincare` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:375 | `KAM.Planetary.poincareDom` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:377 | `KAM.Planetary.isOpen_poincareDom` | `bpP:p7:poincare-def` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:380 | `KAM.Planetary.poincare_facts` | `bpP:p7:o-facts` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:385 | `KAM.Planetary.poincare_facts_polar` | `bpP:p7:o-facts` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:391 | `KAM.Planetary.analyticOnNhd_poincareF` | `bpP:p7:poincare(a,b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:392 | `KAM.Planetary.analyticOnNhd_poincare` | `bpP:p7:poincare(a,b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:393 | `KAM.Planetary.poincare_periodic` | `bpP:p7:poincare(a,b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:396 | `KAM.Planetary.poincare_eq_delaunayMK` | `bpP:p7:poincare(a,b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:400 | `KAM.Planetary.poincare_symplectic` | `bpP:p7:poincare(c,d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:402 | `KAM.Planetary.poincare_elements` | `bpP:p7:poincare(c,d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:411 | `KAM.Planetary.poincare_image` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:412 | `KAM.Planetary.poincare_eq_iff` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:415 | `KAM.Planetary.poincare_localDiffeo` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:420 | `KAM.Planetary.poincareInv` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:430 | `KAM.Planetary.poincareInv_poincare` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:432 | `KAM.Planetary.poincare_poincareInv` | `bpP:p7:poincare(e)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:435 | `KAM.Planetary.poincare_circular` | `bpP:p7:poincare(f)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:440 | `KAM.Planetary.poincare_means` | `bpP:p7:kepler(c) / bpP:p7:average` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:449 | `KAM.Planetary.poincareGammaC` | `bpP:p7:holomorphic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:450 | `KAM.Planetary.poincareVC` | `bpP:p7:holomorphic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:453 | `KAM.Planetary.poincareC` | `bpP:p7:holomorphic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:462 | `KAM.Planetary.poincareNbhd` | `bpP:p7:holomorphic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:465 | `KAM.Planetary.poincare_holomorphic` | `bpP:p7:holomorphic` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:482 | `KAM.Planetary.phaseCast` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:486 | `KAM.Planetary.phaseCast_apply` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:488 | `KAM.Planetary.phaseCast_symm` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:489 | `KAM.Planetary.phaseCast_symplectic` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:490 | `KAM.Planetary.phaseCast_hamiltonianVectorField` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:492 | `KAM.Planetary.phaseCast_volume` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:494 | `KAM.Planetary.phaseCast_measurableEquiv` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:497 | `KAM.Planetary.phaseCast_analytic` | `bpP:p7:product-chart (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:506 | `KAM.Planetary.planetBlock` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:510 | `KAM.Planetary.poincareProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:515 | `KAM.Planetary.poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:517 | `KAM.Planetary.hProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:519 | `KAM.Planetary.regionProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:524 | `KAM.Planetary.isOpen_poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:525 | `KAM.Planetary.regionProd_one_iff` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:529 | `KAM.Planetary.poincareProd_symplectic` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:531 | `KAM.Planetary.analyticOnNhd_poincareProd` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:533 | `KAM.Planetary.poincareProd_lattice` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:536 | `KAM.Planetary.poincareProd_eq_iff` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:539 | `KAM.Planetary.poincareProd_image` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:541 | `KAM.Planetary.poincareProd_localDiffeo` | `bpP:p7:product-chart(a)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:546 | `KAM.Planetary.keplerPart_poincareProd` | `bpP:p7:product-chart(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:548 | `KAM.Planetary.hasDerivAt_nu` | `bpP:p7:product-chart(b)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:551 | `KAM.Planetary.movingHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:555 | `KAM.Planetary.fixedHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:559 | `KAM.Planetary.isOpen_poincareProd_preimage` | `bpP:p7:product-chart(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:561 | `KAM.Planetary.analyticOnNhd_fMov_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:564 | `KAM.Planetary.analyticOnNhd_fFix_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:569 | `KAM.Planetary.circularPoint_eq_poincareProd` | `bpP:p7:tube` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:574 | `KAM.Planetary.tube_in_chart` | `bpP:p7:tube` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:583 | `KAM.Planetary.polarDom` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:584 | `KAM.Planetary.polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:588 | `KAM.Planetary.fullShift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:590 | `KAM.Planetary.angleScale` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:592 | `KAM.Planetary.polarMap_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:593 | `KAM.Planetary.analyticOnNhd_polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:594 | `KAM.Planetary.polarMap_mapsTo` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:595 | `KAM.Planetary.polarDom_shift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:597 | `KAM.Planetary.poincareProd_polar_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:599 | `KAM.Planetary.poincareProd_polar_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:604 | `KAM.Planetary.poincareProd_polar_periodOne_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:607 | `KAM.Planetary.poincareProd_polar_periodOne_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:615 | `KAM.Planetary.polar_hamiltonian_split` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:622 | `KAM.Planetary.poincareProdCast` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:624 | `KAM.Planetary.poincareProdCastDom` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:625 | `KAM.Planetary.poincareProdCast_symplectic` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:627 | `KAM.Planetary.analyticOnNhd_poincareProdCast` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:629 | `KAM.Planetary.isOpen_poincareProdCastDom` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:630 | `KAM.Planetary.poincareProdCast_eq_iff` | `bpP:p7:product-chart(a) (adapter)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:640 | `KAM.Planetary.secularGamma_eq` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:641 | `KAM.Planetary.secularRoot_eq` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:642 | `KAM.Planetary.secularEccVector_eq` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:644 | `KAM.Planetary.secularAxis_eq` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:648 | `KAM.Planetary.ellipsePhase_eq_poincareProd` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:653 | `KAM.Planetary.ellipsePhase_eq_poincareProd_self` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:657 | `KAM.Planetary.keplerFunctions_poincareProd` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:666 | `KAM.Planetary.exists_poincareProd_of_progradeElliptic` | `bpP:p7:d25` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:670 | `KAM.Planetary.average_via_eccentric_longitude` | `bpP:p7:average` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |
| P:678 | `KAM.Planetary.poincareProd_means` | `bpP:p7:average / bpP:p7:kepler(c)` | PASS | Unchanged statement/body; source correspondence PASS carried forward from audit 2. |

## Verification and handoff

* Reran `check_kepler.sh` with **only its generated-file path redirected to `.lake/abi-scratch/`**, as required by the audit brief's scratch-only rule. The two concatenation commands and `nice -n 5 lake env lean` invocation are otherwise unchanged. **Exit 0; exactly 294 diagnostics, all `declaration uses sorry`; no other diagnostic.** Frozen FastShift is present in this check.
* All three Appendix A blocks match their named files exactly. No new Mathlib declaration is introduced by the repair; the already checked compactness/uniform-continuity and calculus routes remain applicable.
* `nice -n 5 sh scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (221 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
* No production module was edited, so no targeted implementation build or main-result `#print axioms` certificate is asserted. Of 296 theorem declarations, 294 remain draft `sorry`; the two radius identities have `rfl` bodies. Elaboration is not proof closure.
* Audit-owned Lean invocations were serialized. No resource override, library rebuild, frozen edit or git mutation was used. Input hashes were rechecked, audit scratch was removed, and the report was checked for trailing whitespace.
* Persistent output: only `docs/tracks/P/design/KEPLER-design-audit-3.md` in the requested output checkout. No new suspected source erratum or mathematical deviation was found. R2-1 and the specified R2-2 corrections are closed at design level.

READY dsgn-kep3
