# P2-14 independent audit 1

Overall verdict: **PASS WITH NOTES**.

The provider has the exact frozen G1 type and proves it through the intended iteration and limit predecessors. No blocking or major mathematical finding was found. The notes concern comparison history and predecessor-audit evidence; they do not weaken the proved theorem. This audit does not seal an anchor.

## Snapshot and scope

Audited HEAD `473d33ad7f680c88acd3ee612a06705eaed88b74` on `k/p2-14`; current main `a7c2b201a5682652da9cf7b05df984d6d021282c`; predecessor ref `k/p2-13` at `f83dd2a0a8394e5f6410c994471493ccba1df1a4`. The handoff identifies the earlier package commit `748caf2`; HEAD also merges main. Package commits are `bf342af` (limit), `a9a5143` (G1), `748caf2` (provider/root regeneration).

Read AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, P2-14, P23-COMMON, PROVER-COMMON, the handoff, binding design (especially §§0–2, §6, Appendix A, L17/L22), graph contracts and the raw blueprint. Compared `git diff k/p2-13...HEAD` as requested, and `git diff main...HEAD` to resolve its multiple-merge-base ambiguity.

| File | SHA256 |
|---|---|
| `KAM/Apost/Limit.lean` | `025a5dfa4c2559db813c1a05e04aa9d62374ab7ef8f8f5bff1d7c56f489cd65b` |
| `KAM/Apost/G1.lean` | `f0c9419cde400855ad316dce1998995751fe3b30f890e99ad8b5b11d90f957be` |
| `KAM/Provider/AposterioriKam.lean` | `f3c20bc3ad68a458fd121384c44c18429cf5e43a9740865d8ef0814a48ff292d` |

Also examined the inherited `Constants.lean` G1 arithmetic, `Standing`, the iteration interface, and `Strip/Limits`. `Constants.lean` is byte-identical to both main and the predecessor; `Iteration.lean` is byte-identical to the predecessor. This is an independent audit of P2-14, not a replacement for the full P2-13 audit.

## Node ledger

Unless otherwise qualified, declarations are in namespace `KAM.Apost`. Locations refer to the snapshot above. Source locators are in `blueprint/parts/p2-aposteriori.tex`.

| Node | Lean declaration / locator | Verdict | Reason |
|---|---|---|---|
| `bp:p2:limit` | `kamLimit`, Limit:218; `limit`, Limit:267 | PASS | Source :1032–1052: explicit iteration setting and all five conclusion groups, including both uniform convergences, global realness, exact displacement constant, margins and zero error. Signature matches design. |
| `step:p2:lim-k` | `lim_k`, Limit:89; `limit`, :320–325 | PASS | Source :1055–1059: summable differences give uniform convergence. Generic helper's `hL` specifies a `limUnder` value, not convergence; root supplies it by unfolding `kamLimit`. Strip inclusion and summability are proved from predecessors. |
| `step:p2:lim-dk` | `lim_dk`, Limit:106; `dSeq_div_summable`, :179; `limit` | PASS | Source :1061–1063: uniform convergence in the complete space of actual complex continuous linear maps, bounded by the summable `n d_s/δ_s`. |
| `step:p2:lim-holo` | `lim_holo`, Limit:115 | PASS | Source :1065–1069: applies `KAM.uniform_limits` on the open strip; identifies the limit of derivatives with the actual derivative. Root proves each input. |
| `step:p2:lim-primary` | `lim_primary`, Limit:126 | PASS | Source :1071–1073: arbitrary integer-shift primarity and realness follow from pointwise limits. Positive final width puts every real point inside the strip. |
| `step:p2:lim-close` | `lim_close`, Limit:133; `dSeq_summable_tsum_le`, :152; `limit`, :327–330 | PASS | Source :1075–1078: telescoping gives the same sum bound, then `2 C_DK e/(γ² δ₀^a) ≤ μ/4`. Root discharges the generic helper's telescoping identity. |
| `step:p2:lim-margins` | `lim_margins`, Limit:232; `limit`, :332–340 | PASS | Source :1080–1083: triangle inequality gives the open `μ/2` ball; the separate derivative part is proved in `limit` by passing iteration bounds through derivative convergence. The helper alone covers only the ball. |
| `step:p2:lim-invariance` | `lim_invariance`, Limit:249; `limit`, :342–350 | PASS | Source :1085–1089: continuity of `X_h` at the proved interior limiting point, convergence of evaluated derivatives, and `ε_s → 0` give the exact frozen error equal to zero. |
| `bp:p2:g1` | `C_1`, G1:48; `C_2`, :52; `g1_explicit`, :76 | PASS | Source :1095–1108: exactly the prescribed constants and dependence, positivity, all frozen hypotheses and seven conclusion clauses. |
| `bp:p0:g1` (provider proof) | `KAM.Provider.aposteriori_kam`, AposterioriKam:29 | PASS | Exact-type probe against `KAM.aposteriori_kam` elaborates. Uses `g1_explicit`, not a frozen theorem. |
| `step:p2:g1-constants` | `C_1_pos`, G1:56; `C_2_pos`, :61 | PASS | Source :1111–1114: positivity and constant dependence. The proofs use fewer premises where sufficient, a stronger assertion. |
| `step:p2:g1-standing` | `g1_explicit`, G1:116–125 | PASS | Source :1116–1120: constructs every `Standing` field from frozen H1/H5; drops only the unused derivative bound internally. |
| `step:p2:g1-e` | `g1_error_small_aux`, Constants:895; `g1_error_small`, :932; `g1_explicit` | PASS | Source :1122–1125: obtains both strict bounds `e < 1` and iteration smallness. `0 ≤ e` follows in `limit` from the error bound at zero; it is not an extra assumption. Arithmetic helper even handles negative `e`. |
| `step:p2:g1-apply` | `g1_explicit`, G1:129–135; `norm_le_of_rowSum_le`, :68 | PASS | Source :1127–1130: row sums converted to the same operator norm; initial Gram/twist invertibility retained; invokes `limit` with its complete source hypotheses. |
| `step:p2:g1-check` | `g1_explicit`, G1:137–142; `g1_closeness_eq`, Constants:942 | PASS | Source :1132–1143: projects all seven clauses and proves exactly the original closeness normalization by positive-radius power algebra. |

## Premises, carriers and definitions

`limit` assumes the source parameter constraints, H1/H5 through `Standing`, and exactly the iteration inputs: holomorphy, primarity, realness, the `μ` domain balls, derivative bound `σK-μ`, unit Gram determinant and inverse norm `σB-μ`, unit torsion-average determinant and inverse norm `σT-μ`, error bound, `e ≤ 1` and the prescribed iteration smallness. There is no assumed convergence, correction bound, solution torus, or bundled hard conclusion. `Standing` expands into the six parameter constraints, openness, integer-translation invariance, holomorphy, periodicity, realness, three vector-field derivative bounds, positive γ and the Diophantine condition. Those are source premises. `Admissible` is inherited iteration output, not a new assumed certificate in this package.

`g1_explicit` retains the frozen binder order: fixed `n, τ, ρ, ρinf, M, σK, σB, σT, μ, γbar` and their constraints precede all `𝔅, h, K, ω, γ, e`. The provider existentially chooses the constants before these latter inputs. `C_1` has exactly the ten design arguments; `C_2` has the eight specified arguments and no μ or γbar dependence. Neither depends on the domain, Hamiltonian, initial torus, actual frequency, γ, or error size.

All ambient spaces are the required function/product spaces with max norms; the matrix scope is `Matrix.Norms.Operator`, the maximum absolute row sum. `norm_le_of_rowSum_le` proves nonnegativity of the bound using a real row, available because `n ≥ 2`, before invoking `norm_le_iff_forall_rowSum`. No norm or carrier substitution occurs. Real powers and natural powers match the blueprint; radii are geometric widths here.

The frozen `‖Dh‖ ≤ M` hypothesis is still present verbatim at G1:89 and provider:43. G1:123 passes only its three vector-field-bound conjuncts to `Standing`; proving the intermediate theorem under weaker assumptions is legitimate. Nothing was deleted from the externally quantified theorem.

Every new definition is classified below; there are no new abbrevs or structures in the three package modules.

| Definition | Classification / total-carrier behavior |
|---|---|
| `kamLimit` | Intended explicit extension: `limUnder atTop` of the actual `kamSeq` inside the final strip; original `K` outside. Under the source premises convergence is proved by a summable telescoping series before `limUnder_eq` is used, so no arbitrary fallback is used to obtain any theorem conclusion. For unconstrained nonconvergent inputs `limUnder` has totalized behavior; no convergence is claimed there. Outside the strip the body is exactly the required `K`. |
| `C_1` | Literal real arithmetic `ρ^(4τ) * max (γbar^4) (c_star * delta0^(-2a))`; total at arbitrary real inputs, with positivity asserted only under the specified positive inputs. |
| `C_2` | Literal `2 * C_DK * ρ^(2τ) * delta0^(-a)`; same totality/positivity distinction. |

The `lim_*` helpers are generic analytic lemmas; their convergence, telescoping and error premises are proved in `limit`. In particular `lim_k.hL` only fixes the function's definition and `lim_close.hLG` is supplied by `lim_k`; neither is exported as an extra premise of a source result. `lim_margins` and the generic telescoping lemmas prove stronger statements with fewer source restrictions. This decomposition is not a conditional substitute for `limit`.

The main signatures (`kamLimit`, `limit`, `C_1`, `C_2`, `g1_explicit`) were mechanically compared with Appendix A after stripping comments and normalizing whitespace: all five equal. Manual comparison with the raw blueprint additionally checks mathematical meanings and constant scope.

## Proof and import checks

The proof is the blueprint route. `limit` obtains iteration estimates, restricts to `T_ρinf`, proves summability of the correction and derivative bounds using `error_decay_sum` with exponents `a` and `a+1`, and uses the explicit telescoping uniform-limit lemma. It obtains holomorphy and derivative identification from the Part 1 uniform-limit theorem, then primarity/realness and the exact closeness/margin bounds. The error sequence tends to zero by the summability conclusion at exponent zero; this is a valid consequence of the blueprint's stronger error-decay result. No contradictory blueprint fact was found.

A recursive source-import walk from `KAM.Provider.AposterioriKam` visits 68 local modules: **zero frozen theorem modules and zero other providers**. Its direct import is only `public import KAM.Apost.G1`. The chain G1 → Limit → Iteration → Step/Schedule is explicit. The generated root imports the ordinary modules, not the quarantined provider. The frozen G1's pre-existing provider import is permitted by the quarantine rule; its body remains `by sorry` at this snapshot. No circular proof route is used.

## Independent checks and exact outputs

Commands were serialized for all Lean/build work, at the default resource settings. No clean, cache download, root rebuild, option override or state-changing git command was used.

```text
$ nice -n 5 lake build KAM.Apost.Limit KAM.Apost.G1 KAM.Provider.AposterioriKam
Build completed successfully (3197 jobs).
(exit 0)

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (278 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
(exit 0)

$ wc -l KAM/Apost/Limit.lean KAM/Apost/G1.lean KAM/Apost/Constants.lean
  356 KAM/Apost/Limit.lean
  146 KAM/Apost/G1.lean
  952 KAM/Apost/Constants.lean
 1454 total
$ wc -l KAM/Provider/AposterioriKam.lean
70 KAM/Provider/AposterioriKam.lean

$ git diff --check
(no output; exit 0)
$ git diff main...HEAD -- KAM/Frozen manifest
(no output; exit 0)
```

The size cap applies per file, not to the total above. Module headers, public sections and exposed definition bodies are present. Lint checks prohibited proof escapes, resource overrides, size, module form, generated imports and frozen/ABI invariants across the repository. A recursive import-line check found no provider or frozen-theorem imports in Apost, Torus, Strip or the target provider. Comments that name the frozen theorem are not imports.

An untracked `.lake/abi-scratch/P214Audit.lean` contained:

```lean
import KAM.Frozen.Theorems.AposterioriKam
import KAM.Provider.AposterioriKam
example : type_of% @KAM.aposteriori_kam := @KAM.Provider.aposteriori_kam
example : type_of% @KAM.aposteriori_kam := by
  intro n hn τ hτ ρ ρinf hρinf hρinfρ M σK σB σT μ hM hσK hσB hσT hμ γbar hγbar
  exact KAM.Provider.aposteriori_kam hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar
```

Both examples elaborated with no diagnostics. The same file ran `#print axioms` on every theorem in the three package modules and all three G1 arithmetic helpers in Constants. Command:

```text
$ nice -n 5 lake env lean .lake/abi-scratch/P214Audit.lean
(exit 0)
```

Complete diagnostic output:

```text
'KAM.Apost.tendstoUniformlyOn_telescope' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.norm_telescope_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_k' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_dk' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_holo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_primary' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_close' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dSeq_summable_tsum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dSeq_div_summable' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.gamma_le_Theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.kamLimit_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_margins' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.lim_invariance' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.limit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.C_1_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.C_2_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.norm_le_of_rowSum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_explicit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_error_small_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_error_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_closeness_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.aposteriori_kam' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or unexpected axiom occurs, including transitively in the provider. The scratch probe was deleted after checking.

## Findings, uncertainties, errata and deviations

1. **Minor — requested predecessor diff includes unrelated main history.** `git diff k/p2-13...HEAD` reports `warning: k/p2-13...HEAD: multiple merge bases, using 10e1a1f5354a1328459b4d93eaa72c39080bbb3d`. `git merge-base --all k/p2-13 HEAD` lists that base and `ee0c7f213d5880bd84b8cf827fa77a54501c463d`. Consequently its frozen/manifest diff is not literally empty: it shows the G2 proof changed from `by sorry` to its provider and G2 state changed from `DRAFT_SORRY` to `SEALED`. Evidence: `git diff k/p2-13 HEAD -- KAM/Frozen manifest`, and main commit `c9dec45` (D26-style G2 sealing). Those exact changes are inherited from main, not P2-14; `git diff main...HEAD -- KAM/Frozen manifest` is empty. Proposed fix: record both pinned baselines when landing/auditing this merged branch; do not describe the predecessor triple-dot frozen diff as empty. No frozen repair is needed.

2. **Minor — predecessor audit receipt is not available in this snapshot.** The package brief says P2-13 is in audit and lands first. There is no `docs/campaign/audits/P2-13*` file here, and Iteration is still an addition relative to main. This audit verifies its interface usage, byte identity to `k/p2-13`, and the provider's transitive axiom hygiene, but does not independently repeat the entire source audit of P2-13. Proposed fix: the orchestrator should complete/record that audit and satisfy predecessor landing order before promoting G1 through the campaign's seal gate. This is a process dependency, not an unproved Lean premise.

No blocking/major finding; no suspected new pinned-source erratum or introduced mathematical deviation. Existing source-gap annotations at blueprint :1048–1051 and the already declared G1 uniform-constant deviation remain unchanged. This audit compares with the repository blueprint, binding design and frozen statement; it does not claim a new independent pinned-PDF audit. No standalone `leanchecker` replay was run. All requested Lean elaboration, build, axiom and lint checks passed.

Only this report was written outside `.lake/abi-scratch/`; the pre-existing untracked handoff was left untouched. No source, frozen file, manifest or git state was edited.
