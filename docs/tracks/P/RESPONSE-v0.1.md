# Track P response to the v0.1 statement audit

27 October 2026. **All findings P1–P9 accepted.** The mathematical and Lean statements
are revised to **draft v0.2**, ready for another independent statement audit and owner
review. This is not approval, freezing, proof completion, or a claim that elaboration
establishes truth. In particular the original quantitative P-G was false; its previous
successful checks did not detect the three mathematical counterexamples.

Audit answered: [AUDIT-statements-v0.1.md](AUDIT-statements-v0.1.md), SHA-256
`89cfa670494652412f6998ac5dcc6ac747c284c6dd8d02292e4e0503bafe76d3`.
The report and its scratch checks were read without modification. CP10's rendered
pp. 556 and 561 and the relevant p. 562 text were rechecked; Féjoz (36)–(37) and
the p. 55–56 displays were checked against the retained source extractions. All five
source PDF pins still match. No disagreement with a finding is asserted.

## Files changed

- `.drafts/P/Statements.lean`: corrected P-G domain/data, strict ordered axes in both
  physical headlines, v0.2 status and both author names. Still ignored and untracked.
- `docs/tracks/P/statement.md`: exact v0.2 contract, corrected-premise provenance,
  source-proof obligations, all pending owner choices and revised deviations.
- `docs/tracks/P/sources.md`: withdrew the false box interpretation, identified the
  missing source controls, added the extended source-defect pointers, and corrected
  the revised Féjoz PDF length to 65 pages (the retained header says 1–62).
- `docs/tracks/P/notes.md`: added a supersession notice; its original v0.1 receipts
  remain historical rather than being presented as v0.2 validation.
- `docs/tracks/P/RESPONSE-v0.1.md`: this finding map and current handoff.

No source PDF, audit scratch file, frozen file, provider, manifest, generated file,
source ledger, or other-track file was edited. No state-changing git command was run.

## Finding-by-finding disposition

Line locators below refer to the pinned v0.2 files in §5.

| Finding | Disposition and exact change | Locators / remaining boundary |
|---|---|---|
| **P1 — blocking: box versus discs** | **Adopted.** `cylinder` now requires `∀ j, pⱼ²+qⱼ²<r²`, exactly the product of discs used on CP10 p. 561. `cylinderCell`, the carrier of `hP`, and both cylinder conclusion predicates use this definition. `HasSecularBirkhoffForm` now guards integrability on the same discs, and its little-o neighborhood is a smaller product of discs of positive radius δ≤r₀. No rectangular analyticity/integrability requirement remains. | Lean lines 55–58, 78–93, 164–169. Statement P-G, lines 57–73 and 116–128. The old separate sup-norm estimate survives only in the remainder's norm, not the measure domain. |
| **P2 — blocking: boundary inverse control** | **Adopted verbatim in substance.** Added `W`, `hW : IsOpen W`, `hVW : closure V ⊆ W`, and changed `hfreq` to `HasFastDiffeomorphism H0 W`. Removed redundant `hH0`. The predicate itself is unchanged; it now applies on the correct open neighborhood. | Lean lines 153, 168; statement lines 77–85. W and its inclusion are before the existential constants. This is labelled a corrected-contract premise, not printed A1 on V. |
| **P3 — blocking: uncontrolled action boundary** | **Adopted the auditor's displayed guard exactly.** Added `hboundary : ∃ A d, 0<A ∧ 0<d ∧ ∀ 0<t<d, volume {I : ∃ J∈frontier V, dist I J<t} ≤ ENNReal.ofReal (A*t)`. It controls both sides of the boundary. | Lean lines 154–157; statement lines 86–96. No hidden restriction to a compact subset of V or weakening of the whole-V rate. Constants remain after all domain data. |
| **P4 — major: excess restrictions / owner scope** | **Adopted.** Replaced `4*a 0<a 1` by `a 0<a 1` and `∀i<j, 4*a i<a j` by `∀i<j, a i<a j`. Joint closed-neighborhood analyticity of P is retained only as a prominently labelled proposed specialization. The neighborhood/collar corrections are likewise proposed for review. | Lean lines 329, 343; statement lines 231–237, 268–269. Owner questions **Q-P1** and **Q-P6**, statement lines 392 and 397, explicitly recommend the corrected P-G specialization and all distinct ordered axes. No unapproved factor-four premise remains. |
| **P5 — major: secular matrix errors** | **Adopted all three corrections.** In addition to the two `mₖmₖ → mⱼmₖ` replacements, the second diagonal denominator is `2aⱼ²`, not `aⱼ²`. The complete corrected entries, derived from (36)–(37), are written out. A distinct future `horizontalSecularMatrix_entries` provider is required. | Statement lines 302–313; source p. 55, compared with p. 51. No erroneous or corrected matrix display has been inserted as a headline premise. This round specifies the repair; it does not claim to prove the provider. |
| **P6 — major: meromorphy and topology** | **Adopted both objections.** The route now uses a local coefficient-holomorphy lemma on `|α|<1`, an explicit convex logarithmic axis chart, and an eigenvalue cover after removing the discriminant. It never imports global meromorphy or simply connectedness of the source's A^C. | Statement lines 314–334, with explicit L and aⱼ=exp ℓⱼ. Separate future `laplaceCoefficient_holomorphic_unitDisc` and `secularEigenvalueContinuation` obligations; the continuation proof still needs independent signoff. |
| **P7 — analytic weak gate / fixed-center identification** | **Adopted and made explicit.** Named separate future `analyticWeaklyNondegenerateKAM` and `fixedCenterSecularIdentification` providers. Recorded CP09's factor `Ωⱼ=2σⱼ`, the exact kinetic-square difference, its action-only average, and the use of fixed zero-coupling coordinates so f is independent of μ. | Statement lines 335–359. No additional theorem premise. P-FIXED stays a proposed new deduction for the exact fixed-center Newtonian Hamiltonian, not a literature quotation. |
| **P8 — period convention** | **Accepted; no mathematical code change.** Physical fast angles remain 2π-periodic, the average remains normalized by (2π)^(-n₁), and torus parameters remain period one with divided frequencies. | Lean `fastShift` line 114 and `secularAverage` line 65; statement common conventions and **Q-P2** at line 393. Convention approval is pending and must precede freezing. |
| **P9 — authors / page metadata** | **Adopted.** Copyright and author lines now name Scott Armstrong and Zohar Komargodski. Source metadata now says the supplied revised Féjoz PDF has 65 numbered pages and explains the retained 1–62 header. | Lean lines 2,4; sources.md line 14. `pdfinfo` confirms `Pages: 65`. No theorem meaning changed for this finding. |

The owner questions are deliberately labelled **Q-P1–Q-P7**, so they cannot be confused
with audit findings P1–P9. They are review questions in the packet, not assumptions that
an owner ruling has already occurred. The requested revision is complete without
requiring an answer now; approval and freezing remain subsequent steps.

## Why the three counterexamples no longer meet/refute the proposed contract

- **P1:** a complete integrable oscillator orbit remains in its disc whenever its
  radius is below ρ. The excluded corners in the auditor's box example are outside
  the revised measure domain. There is no fixed corner fraction to contradict the
  claimed density on that domain.
- **P2:** for H₀(I)=I¹⁶/16 and V=(0,1), an open W containing closure V includes zero.
  The derivative of its fast frequency I¹⁵ vanishes there. A C¹ inverse on the open
  image cannot obey the inverse identity at zero: differentiating would give an
  identity derivative equal to zero. Thus it fails the new `hfreq` on W.
- **P3:** the connected comb has no linear two-sided boundary collar bound. Its
  accumulation of thin fingers is excluded by `hboundary`, even though the identity
  frequency map continues to satisfy the neighborhood condition. This is an
  independent geometric correction, not an attempted consequence of the inverse bound.

These are checks against the **specific mathematical obstructions**, not a new proof
of P-G. The corrected theorem still requires independent audit and a full provider.
A nonvacuous intended class remains: bounded open boxes V with W=Rⁿ¹, quadratic H₀
with identity Hessian, and the radial polynomial perturbation
ΣJⱼ+½ΣJⱼ². Boxes satisfy a linear boundary collar bound, and this perturbation has
Ω=1, β=identity and zero remainder. No new Lean proof of these facts was attempted.

### Domain reconciliation and unchanged physical definitions

`HasSecularBirkhoffForm` now uses discs both for the r₀ integrability guard and for
its δ-neighborhood. Since 0<δ≤r₀, every average in the remainder clause is guarded.
The sup norm to the fourth power still measures the order of vanishing; changing the
neighborhood basis does not change little-o at zero. `hP` is on the closure of the
same disc cylinder. The positive-radius guards and logarithm/rpow guards are retained.

A textual declaration-body comparison against the audit's verbatim v0.1 copies
checked all 33 definitions (ignoring only whitespace outside each declaration).
**31 are identical.** Only `cylinder` and `HasSecularBirkhoffForm` changed bodies.
In particular every exact physical Hamiltonian, torus predicate, barycentric
reconstruction, Newton equation and pair-distance predicate remains byte-identical
as a declaration body. The physical theorem conclusions and quantifier order are
unchanged; only their excess factor-four assumptions and associated docstrings changed.

## Source defects and deviations reported to the orchestrator

The source ledger was not edited. These records supplement, rather than overwrite,
the independent audit and the original packet's reported errata.

| Record | Exact source evidence | Mathematical issue and adopted response |
|---|---|---|
| **E-P-CP10-DOMAIN / D-PG-3** | CP10 p. 561: `P_ε := V × Tⁿ¹ × {pᵢ²+qᵢ²<ε²}`, versus “ball” in (5), p. 547, and separate sup norms p. 551. | The v0.1 box interpretation was false. Use the literal product-of-discs construction; do not claim the authors intended a box. |
| **E-P-CP10-INV / D-PG-4** | CP10 p. 556: “Without loss of generality” before a diffeomorphism on `V_{ρ₀}`; (38) uses resonance loss, and (58), p. 562, an inverse Jacobian. | A1 on V does not justify a uniform extension. Add W⊃closure V and the diffeomorphism on W; label the strengthening openly. |
| **E-P-CP10-BOUNDARY / D-PG-5** | Below (56), p. 561: `meas(Re(V_r) ∖ V) ≤ C γ̄₂ meas V`. | Open bounded connected V does not imply this estimate. Add the explicit two-sided geometric collar condition. |
| **E-P-Fej04r-1 / D-PROOF-1** | Fej04r p. 55 prints `mₖmₖ` twice and denominator `aⱼ²` in the second diagonal sum; (36)–(37), p. 51, fix the coefficients. | Replace both factors by mⱼmₖ and that denominator by 2aⱼ². Derive the corrected matrix in its own provider; no repaired-source hypothesis is passed to a physical headline. |
| **E-P-Fej04r-2 / D-PROOF-2** | Lemma 76, p. 56: “fonctions méromorphes sur la sphère de Riemann”, with the asserted poles. | b₁/₂⁽⁰⁾ has logarithmic divergence as α→1, not a meromorphic pole; it is regular at zero. Use local holomorphy in the unit disc. |
| **E-P-Fej04r-3 / D-PROOF-2** | Same page calls the displayed A^C “simplement connexe”. | The simultaneous-rotation loop has nonzero winding under projection to C*. Use the explicit logarithmic chart and an appropriate eigenvalue cover; branch choices are part of the proof. |

The proposed chart is
`L={ℓ : Re ℓ₁>⋯>Re ℓₙ, |Im ℓⱼ|<π/4}`, with aⱼ=exp ℓⱼ. L is convex;
all positive ordered axes have their real logarithms there. The ratios have modulus
less than one and positive real part. This makes the scalar coefficient branches
explicit, but does not by itself prove the needed eigenvalue continuation after
removing the discriminant; that remains an identified proof obligation.

Other retained limits: no original Arnold PDF was obtained; the CP11 footnote's
Arnold exponent correction stays **reported, original unverified**. Fej07e's author
corrections, including sqrt(2) canonical normalization, remain in force. No newly
suspected defect in a frozen track-K definition was encountered.

## Checks, exact output and pinned v0.2 artifacts

The user expressly requires ignored Phase 0 drafts with theorem-body placeholders.
This revision introduces no library theorem or provider to target with `lake build`;
the required direct draft elaboration is the targeted Lean check. Lean and lint's ABI
elaboration were serialized, with default resource budgets and no clean/rebuild.

```text
$ nice -n 5 lake env lean .drafts/P/Statements.lean
.drafts/P/Statements.lean:150:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:327:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:340:8: warning: declaration uses `sorry`
'KAM.Planetary.properlyDegenerateKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planarTwoPlanetKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.fixedSunPlanetaryKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0

$ scripts/lint_sources.sh
check_lean_modules: PASS (43 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0
```

Only the three expected theorem-body `sorry` warnings occur. The printed axiom lists
include `sorryAx`: these theorems are **unproved statements**. Repository lint excludes
`.drafts/` and does not certify their truth; the direct check above elaborates this
specific v0.2 draft. The audit scratch module was not rebuilt or modified.

Additional checks:

```text
definition-body comparison: 33 checked; 31 identical; changed cylinder, HasSecularBirkhoffForm
draft static audit: PASS (357 lines; 3 theorem-body sorries; ignored/untracked)
source hashes: PASS (5 PDFs match recorded pins)
```

The draft has no line over 100 columns, no proof-escape declaration and no resource
override. `git ls-files -- .drafts/P/Statements.lean` returned no output, and the
repository ignore rule still applies. An initial comparison script mistook trailing
blank space outside the last declaration for a third changed definition; trimming
only outside each declaration resolved this harness issue. No Lean edit was needed.

Scoped `git diff --check` for the track-P files and an unscoped `git diff --check`
both exited 0 with no output at validation time. The new untracked response and ignored
draft are also checked directly for trailing whitespace/final newline. There is
concurrent unrelated work in the shared checkout, notably `blueprint/parts/p4-measure.tex`;
these checks do not claim ownership of it or authorize edits there.

| v0.2 artifact | SHA-256 |
|---|---|
| `.drafts/P/Statements.lean` | `189047cf6507792945a62bd9ff36e606ff5aca1328f051ef1bdd80052615e833` |
| `docs/tracks/P/statement.md` | `8caf48afe2be98b08d56df3b6760d30e38df5fb19b108d39db1387211fc8effc` |
| `docs/tracks/P/sources.md` | `b3253f46fc8431d094f295e056bced3e2decb544eb45085717603372c6f4f73e` |
| `docs/tracks/P/notes.md` (historical handoff with supersession banner) | `34da59e2f862a5f8926747750995f7b7ebc84ad2795294da56d980a6bc30732d` |

## Remaining review boundary

All blocking and major findings have concrete statement changes or explicit proof-route
repairs above. No source-proof obligation has been disguised as a premise. Owner
scope/convention questions Q-P1–Q-P7 remain pending, and a fresh independent audit
must precede approval of P-G. The physical headlines remain qualitative analytic
local targets; the fixed-Sun deduction, secular calculation, analytic weak gate,
continuation arguments and physical transport still need proofs. No freeze or root
closure is claimed by the completion marker.

## Required Lean rules

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
   proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.
