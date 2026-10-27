# W1 independent seal audit 1

Audit marker: `seal-W1`. Date: 2026-10-27. Auditor did not author the package.

## Verdict and scope

**I-KEPLER: PASS (seal-ready). N-QC and N-ZERO: PASS WITH NOTES (exact anchors seal-ready). Full coverage of every named blueprint helper is not certified.** In particular, `bpN:p2:qc-kernel` and `bpN:p2:zero-deriv` fail full-statement correspondence; their narrower replacements suffice for the two exact anchor proofs. Do not mark those broader helper nodes PROVED from this receipt. This distinction is material to future consumers.

All three frozen exports remain `DRAFT_SORRY` / **FROZEN_UNPROVED** in this checkout. This report checks the providers and prospective seal bodies; it does not change the manifest or seal an anchor. For each anchor: DECLARATION_FIDELITY PASS; DRAFT_ALLOWLIST PASS. Actual frozen-export axiom closure is not claimed.

Permission envelope: read-only audit of `/root/code/KAM-inp-w1gates`, temporary probes under its `.lake/abi-scratch/`, targeted builds and checks, and this single report in the main `inp` worktree. No source repairs, git mutations, source downloads, or agent delegation. The user-supplied package brief governs the pre-seal checks; the `lean-statement-audit` skill supplies binder and definition checks. Scope is these three anchors and all 14 new public theorems, not the remaining I/N campaign.

## Frozen inputs

- Package branch `inp-w1gates`, HEAD `45cdf48c0ec9e3dcdb623ae61555914f6207c45f`.
- Comparison base `inp`: `0ab0518a31529950b6797d186397d3b6d9b65e27`.
- The shared `inp` ref advanced during the audit (observed later as `d90f4c6a67d1e19bcf9e79f3158da91c12bf5d4b`); the audited package HEAD did not change. All snapshot claims use the pinned initial comparison, and the protected-file diff was rechecked against that literal commit.
- Read the complete package brief `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, relevant track statement/source sections, frozen declarations and their semantic definitions, and both relevant blueprint parts.
- Manifest IDs: `iso.kepler_bordered_det.v1`, `nekhoroshev.quasiConvex_isoenergetic_derivative.v1`, `nekhoroshev.zero_perturbation.v1`. All are owner-approved D20, theorem version 1, `DRAFT_SORRY`. Registered implementation modules/exports match the prompt.
- Manifest ABI hashes, independently rechecked by lint: respectively `3c46c0a138ba6567ea3d7a46bfdd0da666047c423b6222bda82f9cb864193cc8`, `89dc295a0bcb7229fb9769fbbea5db19485226123ece025096253a82835f0534`, `882b36b751430682e0b8147660bb5190a3e2b297ab75e58cfc0a91bed63637e5`.
- All listed definition-closure SHA-256 values were independently recomputed against the manifest; all matched. The frozen guard checked prefix/suffix identity, ownership, allowed holes and import quarantine.

Package file snapshots (paths relative to worktree):

| File | Lines | SHA-256 |
|---|---:|---|
| `KAM/Iso/Kepler.lean` | 37 | `89aa6742507510711a98560a59f19e9086b6f6692e12624b94643b51c484df3c` |
| `KAM/Nekhoroshev/QuasiConvex.lean` | 153 | `5a32eaec3254600867e2ae7d285b8f103bb3f846b25528c2aa864afb0c0ed0ea` |
| `KAM/Nekhoroshev/ZeroPerturbation.lean` | 104 | `ad45e0056d8d0b45abc8cadad07a0b65f76a3291ff15c0bed6a7e81cbfe6ca45` |
| `KAM/Provider/Iso/KeplerBorderedDet.lean` | 31 | `931a855d30c1ee332ba72b8dbc0458ecd799cfe83f9592e5c7bc526b7c35f067` |
| `KAM/Provider/Nekhoroshev/QuasiConvexIsoenergeticDerivative.lean` | 36 | `18d37e037c7126e5071b08343545f4b801971fe42e9662f02427802b022d31e1` |
| `KAM/Provider/Nekhoroshev/ZeroPerturbation.lean` | 39 | `40c7fcae469774ee7b6ab140fc7929533630cb3bbb421609c9b110914d1a016b` |

Blueprint snapshots: `blueprint-I/parts/p6-kepler.tex` SHA-256 `b623ce5f8d2fc890834e5073dbc3c06701ac27ce7e5014efacadfb5107249bb6`; `blueprint-N/parts/p2-qc-zero.tex` SHA-256 `ed9954f4a8313436ba58be47d1f061022b49cdf3ad04ba72b0c9467412dce73d`.

Primary PDFs were read locally with `pdftotext`, with these recomputed hashes matching the source packets:

- Chi05 `sources/incoming-I/chierchia-delaunay.pdf`: `31ed844d0916b4b76c02f1da07051f36bfade0338db0b060ec4fa6eab688fe1a`; printed p.17 matrix and determinant.
- BM11 `sources/pdf/arxiv_1004.1014v2_BM_quasiconvex.pdf`: `90f0f6b3b3b183b8898f4e961f0127b3a143453f76645d960d3095fda5b9b818`; printed pp.1,4,9–10, especially the derivative and its kernel proof.

## Declaration and node inventory

Names below are fully qualified by the namespace indicated. All locators refer to the pinned HEAD above.

| Blueprint node / role | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bpI:p6:det-formula` | `KAM.Iso.keplerBorder_det`, `KAM/Iso/Kepler.lean:21` | PASS | All real κ,Ω; positive-subtype L; exact rational determinant, without sign assumptions on κ,Ω. |
| `bpI:p6:kepler`, positivity | `KAM.Iso.keplerBorder_det_pos`, same file:31 | PASS | Correct positive constants and denominator; precise positivity conclusion. |
| `bpI:p6:kepler`, anchor provider | `KAM.Provider.Iso.kepler_bordered_det`, provider:21 | PASS | Both conjuncts, exact frozen binder order and subtype. |
| `bpN:p2:qc-deriv`, derivative formula | `KAM.Nekhoroshev.hasFDerivAt_isoenergetic`, `KAM/Nekhoroshev/QuasiConvex.lean:34` | PASS WITH NOTES | Genuine derivative from local C², arbitrary real g and λ. Uses the iterated-derivative evaluation directly, without exporting Hessian symmetry or its matrix-coordinate corollary. |
| `stepN:p2:qd-first`, coordinate linear algebra | `KAM.Nekhoroshev.clm_apply_eq_sum`, same file:63 | PASS | Exact basis expansion for any continuous real linear functional. |
| `bpN:p2:qc-kernel`, specialized kernel argument | `KAM.Nekhoroshev.isoenergetic_injective`, same file:73 | PASS as specialized helper; FAIL as full node | λ>0, m>0 and a C² Hessian with a quantitative positive lower bound specialize the blueprint's arbitrary matrix, λ≠0 and qualitative nonzero quadratic form. No general-matrix theorem is exported. |
| `bpN:p2:qc-kernel` / `qc-bij`, specialized dimension step | `KAM.Nekhoroshev.isoenergetic_bijective`, same file:125 | PASS as specialized helper; FAIL as full general kernel node | Correct equal-finrank argument under exactly the preceding specialized inputs; not a provider for arbitrary A. |
| `bpN:p2:qc-bij` | `KAM.Nekhoroshev.isoenergetic_bijective_of_qc`, same file:143 | PASS | Every specialized input is supplied from the frozen QC predicate and I∈U, λ>0. No excess anchor premise. Docstring labels this `qc-deriv`, but its actual conclusion is `qc-bij`. |
| `bpN:p2:qc-bij`, anchor provider | `KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative`, provider:23 | PASS WITH NOTES | Exact frozen theorem proved; broader kernel-node coverage caveat above. |
| `bpN:p1:realdomain`, auxiliary inclusion | `KAM.Nekhoroshev.actionBall_subset_realActionDomain`, `KAM/Nekhoroshev/ZeroPerturbation.lean:33` | PASS | Witness J=I gives zero distance <s. Holds without R>0. |
| `stepN:p2:zd-zero`, restricted vanishing | `KAM.Nekhoroshev.perturbation_zero_real`, same file:38 | PASS as restricted helper | Size-zero norm bound and genuine complex-domain membership yield f=0 at every real θ and I∈B(0,R). Does not export vanishing on all of D_s(R). |
| `bpN:p2:zero-deriv`, restricted identity | `KAM.Nekhoroshev.realHamiltonian_eq_realPart`, same file:47 | PASS as restricted helper; FAIL as full node | Identity only on actions B(0,R); no public all-W_s differentiability/field theorem. |
| `bpN:p2:zero` | `KAM.Nekhoroshev.zero_perturbation_core`, same file:54 | PASS | All three frozen conjuncts, all real times, actual f and H, genuine differentiability and two-sided orbit derivative. |
| `bpN:p2:zero`, anchor provider | `KAM.Provider.Nekhoroshev.zero_perturbation`, provider:23 | PASS WITH NOTES | Exact frozen theorem; broader `zero-deriv` coverage caveat above. |

No new `def`, `abbrev`, `structure`, typeclass or instance exists in the package diff. The auxiliary theorem names are distinct from frozen exports. None of their analytical inputs is conclusion-shaped: the QC inputs are regularity, a nonzero gradient and the source quadratic bound; the ZERO inputs are source analytic membership, size zero and initial-domain membership. Their wrappers explicitly produce every input.

### Expanded anchor binder audit

Bins: SOURCE = source premise; STANDING = independently audited standing input; TYPING = carrier/data or a trivial typing invariant; RULED = explicit owner-approved regularity guard; EXCESS = impermissible input. Every implicit data binder is included below. No instance binder introduces a project assumption. Subtype membership and bundled predicates are expanded. Quantification of v and the orthogonality antecedent in QC remain inside the source quadratic-form clause, not new outer assumptions.

I-KEPLER sources: track-I statement §I-KEPLER and `bpI:p6:det-formula`, `bpI:p6:kepler` (p6 lines 13–48).

| Binder / expanded input, in dependency order | Bin | Attachment |
|---|---|---|
| `{κ : ℝ}` | TYPING | Real Kepler constant |
| `{Ω : ℝ}` | TYPING | Real rotation constant |
| `(hκ : 0 < κ)` | SOURCE | Positive Kepler constant |
| `(hΩ : 0 < Ω)` | SOURCE | Positive rotation constant |
| `(L : {L : ℝ // 0 < L})`, value | TYPING | Positive-subtype action coordinate |
| `L.property : 0 < L.val` | SOURCE | Source L>0, protects all divisions |

Counts: SOURCE 3, STANDING 0, TYPING 3, RULED 0, EXCESS 0. Explicit seal arguments: `hκ hΩ L`.

N-QC sources: track-N statement §N-QC, conventions item 4; `bpN:p2:qc-bij`, p2 lines 48–60; BM11 p.4 QC(m) and pp.9–10. D20 approves the frozen C² guard.

| Binder / expanded input | Bin | Attachment |
|---|---|---|
| `{n : ℕ}` | TYPING | All gate dimensions; no added n≥1 or n≥3 |
| `{U : Set (Fin n → ℝ)}` | TYPING | Real source domain |
| `{h : (Fin n → ℂ) → ℂ}` | TYPING | Complex extension representing integrable part |
| `{m : ℝ}` | TYPING | Quasi-convexity parameter |
| `hqc.1 : 0 < m` | SOURCE | QC(m) |
| `hqc.2.1 : IsOpen U` | SOURCE | Local source domain |
| `hqc.2.2.1 : ContDiffOn ℝ 2 (realPart h) U` | RULED | D20 derivative guard, track-N conventions item 4 |
| `∀ I∈U, frequencyMap h I ≠ 0` | SOURCE | Nonvanishing gradient in QC(m) |
| `∀ I∈U, ∀ v, (∑ i, frequencyMap h I i * v i)=0 → m*‖v‖² ≤ D²(realPart h)(I)[v,v]` | SOURCE | Exact max norm and Euclidean orthogonality in QC(m) |
| `{I : Fin n → ℝ}` | TYPING | Evaluation point |
| `(hI : I ∈ U)` | SOURCE | Interior source point |
| `{lam : ℝ}` | TYPING | Scaling coordinate |
| `(hlam : 0 < lam)` | SOURCE | BM11 positive scaling parameter |

Counts: SOURCE 6, STANDING 0, TYPING 6, RULED 1, EXCESS 0. Explicit seal arguments: `hqc hI hlam`. The proof obtains C² at I from openness and I∈U, so neither `fderiv` is justified by a junk value. At n=0, nonzero gradient is impossible at a point of U; the existing statement is correctly vacuous.

N-ZERO sources: track-N statement §N-ZERO, conventions items 2,3,6; `bpN:p2:zero`, `bpN:p0:zero`; D18 Q2/Q5 and D20. C³ is the approved explicit regularity guard, not an assumed equation of motion.

| Binder / expanded input | Bin | Attachment |
|---|---|---|
| `{n : ℕ}` | TYPING | All dimensions |
| `{R : ℝ}` | TYPING | Radius parameter |
| `{s : ℝ}` | TYPING | Geometric width |
| `(hR : 0 < R)` | SOURCE | Positive source radius |
| `(hs : 0 < s)` | SOURCE | Positive source width |
| `{h : (Fin n → ℂ) → ℂ}` | TYPING | Complex integrable function |
| `hh`: holomorphic on `actionNbhd (actionBall n R) s` | SOURCE | Analytic class |
| `hh`: continuous on closure of that domain | SOURCE | Analytic class, BM11 p.4 |
| `hh`: ∃A≥0, ∀I in domain, ‖h I‖≤A | SOURCE | Boundedness; existential witness, no prescribed constant |
| `hh`: real at every real action in `realActionDomain` | SOURCE | Real analytic integrable part |
| `hh`: C³ realPart on `realActionDomain` | RULED | D20, track-N conventions item 3 |
| `{f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}` | TYPING | Actual perturbation function |
| `hf`: 0≤0 | TYPING | Size parameter consistency; no mathematical restriction |
| `hf`: holomorphic on `complexDomain n R s` | SOURCE | Analytic class |
| `hf`: continuous on its closure | SOURCE | Analytic class |
| `hf`: invariant under every integer angle shift in domain | SOURCE | Period-one source class |
| `hf`: real at all real θ and actions in realActionDomain | SOURCE | Real perturbation class |
| `hf`: ∀z∈complexDomain, ‖f z‖≤0 | SOURCE | D18 size-zero supplement |
| `(θ₀ : Fin n → ℝ)` | TYPING | Arbitrary initial angle |
| `(I₀ : Fin n → ℝ)` | TYPING | Initial action |
| `(hI : I₀ ∈ actionBall n (R/2))` | SOURCE | Interior initial action |

Counts: SOURCE 12, STANDING 0, TYPING 8, RULED 1, EXCESS 0. Explicit seal arguments: `hR hs hh hf θ₀ I₀ hI`. There is no supplied orbit, vector field equation, confinement estimate, derivative identity, uniqueness assertion or nonzero frequency premise.

## Definition classification and proof inspection

New definition classification: empty inventory. Reused semantic definitions were inspected literally, not inferred from their codomains:

| Definitions | Classification and checks |
|---|---|
| `keplerBorder` | Literal 3×3 displayed matrix, subtype L>0 over the entire public carrier. No zero-denominator fallback. |
| `realPart`, `realHamiltonian` | Literal real restrictions of the given complex functions, with H=Re(h+f) and phase order (θ,I). No substituted Hamiltonian. |
| `frequencyMap`, `hamiltonianVectorField` | Literal coordinate evaluations of real derivatives; max-norm coordinate carriers. Proofs establish differentiability at every use. No inference from totalized derivative values. |
| `actionBall`, `actionNbhd`, `complexStrip`, `complexDomain`, `realActionDomain` | Literal max-norm ball, existential distance neighborhood, imaginary-coordinate strip, product domain and real slice. Positive s supplies domain witnesses. |
| `IsStrictlyQuasiConvex` | Literal source quadratic predicate with openness, C² guard, nonzero gradient and max norm. Not an assumption of invertibility. |
| `IsAnalyticIntegrable`, `IsAnalyticPerturbation` | Literal approved source classes, including boundary continuity and the approved non-strict size bound. No dynamics hidden in fields. |
| `integrableOrbit` | Literal affine curve `(θ₀+t•frequencyMap h I₀,I₀)` for every t. |
| `IsSolutionOn` | Literal action membership, actual H differentiability and two-sided `HasDerivAt` equation. The proof supplies all three. |

For these reused literal definitions: BODY_MATCH OK; PUBLIC_CARRIER OK (derivative interpretations used only with proved regularity); WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS within this package's use. No characterization-defined object or new choice is introduced.

Independent proof reconstruction:

1. The determinant has only the `-k11*k23*k32` Sarrus contribution, equal to 3κΩ²/L⁴. `Matrix.det_fin_three`, simplification, `field_simp`, `ring` prove precisely this; positivity uses κ,Ω,L>0. No Hessian inverse is smuggled in.
2. The QC derivative is built from genuine derivatives of g and its derivative, evaluation at basis vectors and the scalar product rule. Kernel components give Dg(I)v=0 and λ·D(Dg)(I)[v][e_i]+μ·Dg(I)[e_i]=0. Multiply by v_i and sum: λ·D²g(I)[v,v]=0. Positivity and m>0 force v=0, and nonzero gradient forces μ=0. This does not require swapping Hessian arguments or invoking symmetry. Equal real finranks n+1 give surjectivity. The frozen QC wrapper supplies all assumptions directly.
3. ZERO proves f=0 at all real points with action in B(0,R), by norm≤0 and explicit membership in D_s(R). This is an open real neighborhood of every orbit point, since I₀∈B(0,R/2)⊂B(0,R). Equality of germs transfers both differentiability and `fderiv` from `realPart h ∘ snd`. The field is `(frequencyMap h I₀,0)`. The affine orbit's ordinary derivative equals this field at every real time; the action is constantly I₀. No complex identity theorem, global f=0 assertion, or ODE existence/uniqueness theorem is needed.

## Coverage findings, refutation checks, and errata

**W1-N1 — general kernel lemma not exported.** `blueprint-N/parts/p2-qc-zero.tex:12–14` says “A a real n×n matrix (not necessarily symmetric, no norm bound), λ≠0” and assumes only nonzero vᵀAv on nonzero orthogonal vectors. `QuasiConvex.lean:73–81,125–133` instead takes g,C²,m>0,λ>0 and a quantitative positive bound. Those are genuine specializations if offered as the full abstract node. Refutation attempt: checked every new declaration and the provider import closure for an arbitrary-matrix result, and checked whether the exact anchor needs it. No such export exists; the anchor needs only the specialized Hessian case, fully discharged from QC. Thus FAIL for full `qc-kernel` node fidelity, no refutation of N-QC. Record as narrower implementation / bypass of general reusable lemma; do not pass it to consumers expecting arbitrary A or negative λ.

**W1-N2 — larger-domain field lemma not exported.** The same blueprint at lines 69–71 says “W_s=ℝⁿ×B(0,R+s)” and concludes both differentiability and the field formula everywhere on W_s. `ZeroPerturbation.lean:38–52` exports only vanishing/identity on B(0,R); the derivative/field calculation at lines 77–94 is local inside the orbit theorem. Refutation attempt: checked whether an all-W_s theorem was hidden in another public declaration or was necessary at an orbit point. Neither is the case; the open B(0,R) germ is enough for all-time motion from I₀∈B(0,R/2). Thus FAIL for full `zero-deriv` node fidelity, no refutation of N-ZERO. A consumer needing the outer real collar lacks the stated exported contract.

**W1-N3 — derivative representation / label notes.** The public derivative formula uses the CLM evaluation `D(Dg)(I)[v][e_i]` directly and does not export the blueprint's Hessian symmetry assertion at p2:35,43. This is the correct orientation and contraction for the proof; no illicit symmetry assumption occurs. Treat `stepN:p2:qd-sym` as bypassed, not proved by this package. The docstring at `QuasiConvex.lean:142` attaches `qc-deriv` to the bijectivity wrapper; use the actual theorem type when assigning graph status.

These are implementation coverage deviations, not defects in the mathematical blueprint statements. No new suspected error in the pinned Chi05 determinant or selected BM11 pointwise derivative/kernel proof was found. BM11's separate uniform inverse-radius sentence on p.9 is outside the frozen gate and is not used; this audit does not resolve or expand earlier errata. No errata ledger or graph was edited.

Concrete separation checks: with n=2, ω=(1,0), A=diag(0,−1), λ=−1, the general kernel lemma's hypotheses hold, but the positive-m/positive-λ specialized helpers cannot be instantiated. For the ZERO collar, R=s=1 and real action I=3/2 lie in B(0,R+s) but not B(0,R), even for h=f=0. Thus the stated coverage differences cannot be erased by merely renaming the narrower helpers.

## Mechanical verification

Commands were run from `/root/code/KAM-inp-w1gates`, serialized: no overlapping build/Lean/replay invocation by this auditor. All Lean invocations used `nice -n 5`; the build used the required compile gate. No budget override or library clean/rebuild was used.

### Targeted build

```sh
/mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w1gates KAM.Provider.Iso.KeplerBorderedDet KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative KAM.Provider.Nekhoroshev.ZeroPerturbation KAM.Frozen.Iso.Theorems.KeplerBorderedDet KAM.Frozen.Nekhoroshev.Theorems.QuasiConvexIsoenergeticDerivative KAM.Frozen.Nekhoroshev.Theorems.ZeroPerturbation
```

Exit 0. Output:

```text
[inp-gate] slot 1 acquired 21:08:45 for KAM.Provider.Iso.KeplerBorderedDet KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative KAM.Provider.Nekhoroshev.ZeroPerturbation KAM.Frozen.Iso.Theorems.KeplerBorderedDet KAM.Frozen.Nekhoroshev.Theorems.QuasiConvexIsoenergeticDerivative KAM.Frozen.Nekhoroshev.Theorems.ZeroPerturbation
⚠ [2756/2758] Replayed KAM.Frozen.Iso.Theorems.KeplerBorderedDet
warning: KAM/Frozen/Iso/Theorems/KeplerBorderedDet.lean:43:8: declaration uses `sorry`
⚠ [2757/2758] Replayed KAM.Frozen.Nekhoroshev.Theorems.QuasiConvexIsoenergeticDerivative
warning: KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexIsoenergeticDerivative.lean:37:8: declaration uses `sorry`
⚠ [2758/2758] Replayed KAM.Frozen.Nekhoroshev.Theorems.ZeroPerturbation
warning: KAM/Frozen/Nekhoroshev/Theorems/ZeroPerturbation.lean:40:8: declaration uses `sorry`
Build completed successfully (2758 jobs).
```

The job count is the targeted dependency graph; this was a warm replay, not a clean rebuild of the library.

### Exact-type and seal-body probes

Command: `nice -n 5 lake env lean .lake/abi-scratch/W1SealAudit.lean`. Exit 0. The temporary probe imported each frozen module and its registered provider, and checked:

```lean
example : type_of% @KAM.Iso.kepler_bordered_det := @KAM.Provider.Iso.kepler_bordered_det
example : type_of% @KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative := @KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative
example : type_of% @KAM.Nekhoroshev.zero_perturbation := @KAM.Provider.Nekhoroshev.zero_perturbation
```

It also copied each complete frozen declaration signature under the fresh name `sealAudit_<original name>`, using exactly these bodies, respectively:

```lean
by exact KAM.Provider.Iso.kepler_bordered_det hκ hΩ L
by exact KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative hqc hI hlam
by exact KAM.Provider.Nekhoroshev.zero_perturbation hR hs hh hf θ₀ I₀ hI
```

No implicit binder was supplied explicitly; all explicit binders appear once, in frozen order. These proofs consume provider proofs, not the sorry-bearing frozen proof terms.

### Axioms

The same successful probe ran `#print axioms` on every new public theorem and every provider export. Exact output (line wrapping preserved for the QC provider):

```text
'KAM.Iso.keplerBorder_det' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.keplerBorder_det_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.hasFDerivAt_isoenergetic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.clm_apply_eq_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isoenergetic_injective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isoenergetic_bijective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isoenergetic_bijective_of_qc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.actionBall_subset_realActionDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.perturbation_zero_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.realHamiltonian_eq_realPart' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.zero_perturbation_core' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.Iso.kepler_bordered_det' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Provider.Nekhoroshev.zero_perturbation' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
nice -n 5 lake env leanchecker --verbose KAM.Provider.Iso.KeplerBorderedDet KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative KAM.Provider.Nekhoroshev.ZeroPerturbation KAM.Iso.Kepler KAM.Nekhoroshev.QuasiConvex KAM.Nekhoroshev.ZeroPerturbation
```

First invocation: exit 143, tool output `Terminated`, redirected stdout/stderr empty. Second identical invocation: also exit 143, `Terminated`, empty redirected output. Neither interrupted invocation supplied a kernel verdict; the cause of termination was not established.

Final invocation, reducing worker parallelism without changing any theorem or elaboration budget:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.Provider.Iso.KeplerBorderedDet KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative KAM.Provider.Nekhoroshev.ZeroPerturbation KAM.Iso.Kepler KAM.Nekhoroshev.QuasiConvex KAM.Nekhoroshev.ZeroPerturbation
```

**Exit 0**, single invocation covering all three providers and all three lemma modules. Exact output:

```text
replaying KAM.Nekhoroshev.ZeroPerturbation
replaying KAM.Nekhoroshev.QuasiConvex
replaying KAM.Iso.Kepler
replaying KAM.Provider.Nekhoroshev.ZeroPerturbation
replaying KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative
replaying KAM.Provider.Iso.KeplerBorderedDet
```

### Lint and protected files

Command: `nice -n 5 sh scripts/lint_sources.sh`. Exit 1 solely for the explicitly permitted generated-root discrepancy. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (222 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Therefore lint PASS under the package brief's stated exception. No root regeneration was performed. No forbidden escapes/overrides, overlong files or module-system violations were reported. All six touched files have copyright, `module`, public interface imports, module docstring and public section; longest is 153 lines.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output, exit 0. `git diff --check inp...HEAD`: empty output, exit 0. `git status --short` in the package worktree: empty before audit and after checks (scratch ignored). A recursive project-import inspection of the three providers found no frozen theorem and no cross-provider dependency; the frozen guard independently passed quarantine enforcement.

## Closeout

All required anchor checks are complete: source/premise inspection, exact-type and explicit seal-body elaboration, allowed axiom closure of all 14 new public theorems, six-module kernel replay, targeted build, lint under its stated generated-root exception, and protected-file identity. The auditor's scratch probe and three replay logs were deleted after transferring evidence here; the package worktree remains clean. This report is the only durable file created.

No source file, frozen anchor, manifest, generated file or blueprint was edited. No unresolved mathematical defect in the three exact provider proofs was found. The remaining limitations are the explicitly failed broader helper-node correspondence, the bypassed symmetry export and minor node-label note, and the anchors' current draft status. The orchestrator must retain these distinctions when sealing anchors and assigning graph statuses.
