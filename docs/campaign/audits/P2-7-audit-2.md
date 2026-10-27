# P2-7 independent delta audit 2

Verdict: **PASS** for the appended `KAM.Apost.geometry`, including the previously deferred
`bp:p2:geometry`, full `step:p2:geo-omegak` and full `step:p2:geo-esym` conclusions.

Audited branch: `k/p2-7`; HEAD: `866a572da8601aac05ebd5ee9fe8a1146cd48e20`.
Scope: the delta in commit `866a572`, following `P2-7-audit-1.md` on main. The local copy of
audit 1 is byte-identical to main's copy. The delta changes only `KAM/Apost/Geometry.lean`:
its explanatory docstring, implicit section variables and the appended theorem. The previously
audited helper code, from `@[expose] public noncomputable section` through `end Geometry`,
is byte-identical to the parent commit. No Lean source was edited during this audit.

## Statement fidelity

`KAM/Apost/Geometry.lean:298–309` is byte-identical, from `theorem geometry` to the first `:=`,
to `docs/campaign/design/PART23-LEAN-DESIGN.md:1087–1098` (Appendix A). A separate scratch
`example` with that copied signature also elaborates by applying
`KAM.Apost.geometry hS hK hδ hδ1 h2δ`. There are no extra section hypotheses.

The signature states `blueprint/parts/p2-aposteriori.tex:549–563` exactly under the established
Lean conventions:

- `Standing` supplies the enclosing Part 2 source data, including positive γ and Diophantine ω.
  `Admissible` supplies A1–A6 and `r > 0`, `β > 0`, `0 ≤ ε ≤ 1`
  (`Standing.lean:41–83`; blueprint lines 306–317). No conclusion-shaped hypothesis is added.
- All four bounds on `T_(r−δ)` retain their exact constants: `nε/δ`, `2nε/δ`,
  `2n(n+1)mε/δ` and `C_red ε/δ`.
- Both bounds on `T_(r−2δ)` retain denominator `γ δ^(κ+1)` and constants `C_Omega`, `C_sym`.
  The definitions remain `κ = τ+n`, `C_Omega = 2n(n+1)c_R m`, `C_sym = m² C_Omega`,
  `C_red = 2n(n+1)m²` (`Constants.lean:60–78`), with the blueprint parameter dependence.
- The ambient function/pair carriers, matrix row-sum operator norm, bilinear transpose,
  period-one average and real powers are unchanged. The module opens `Matrix.Norms.Operator`.
  The literal premises `0 < δ`, `δ ≤ 1`, `2δ < r` are all retained; `δ ≤ 1` is unused by the proof.

## Assembly review

The proof at `Geometry.lean:310–337` follows blueprint lines 565–596 without an unpaid step.

1. Image containment is derived from A2 by putting `K θ` in its own open β-ball using `β > 0`.
   `geo_omegak_inputs` receives holomorphy, primaryness, the derivative bound and error bound
   from admissibility. It supplies holomorphy and periodicity of `Ω_K` on `T_(r−δ)`, its actual
   zero average from `exactness`, and `H = 2n(n+1)mε/δ` as the directional-derivative bound.
2. At lines 323–325, `.2` selects the matrix a-priori bound, item (b) of
   `KAM.Apost.cohomological` (`Tools.lean:322–349`), with `u = lagrangeMat K`, `p = q = n`,
   input width `r−δ` and loss δ. Both `0 < r−δ` and `δ < r−δ` follow from `hδ`, `h2δ`.
   The proof explicitly rewrites `r−δ−δ = r−2δ`, so the output strip is correct.
   `geo_omegak_arith hS.gamma_pos hδ` gives precisely the required `C_Omega` bound.
   Neither this bound nor the cohomological corollary is assumed as a premise.
3. The first-strip conjunction uses `geo_de`, the supplied directional-derivative bound and
   `geo_ered`. The latter receives the inverse bound directly from A4 on the original strip.
4. For the final symplecticity bound, `T_(r−2δ) ⊆ T_r` follows from δ positivity. A4 therefore
   supplies both invertibility and the inverse norm bound to `geo_esym_le` at the evaluation
   point. Multiplication of the `Ω_K` bound by the nonnegative `m²`, followed by
   `geo_esym_arith`, gives exactly `C_sym ε/(γ δ^(κ+1))`.

No new definition, provider import, frozen-theorem shortcut or resource override is introduced.
The entire file has 341 lines and preserves its module interface and header.

## Checks

Commands ran in `/root/code/KAM-w-p2-7`, serialized for build, probe and lint. No clean,
full-library build, cache reset, heartbeat override or git mutation was used.

Mechanical comparisons using Python `Path.read_text()` and string equality:

```text
Geometry signature byte-identical to Appendix A: True
Previously audited helper code unchanged: True
Geometry.lean lines: 341
```

`nice -n 5 lake build KAM.Apost.Geometry`: exit 0.

```text
Build completed successfully (3183 jobs).
```

`nice -n 5 lake env lean .lake/abi-scratch/P27DeltaAudit2.lean`: exit 0. The probe contained
the copied Appendix A type application described above and these two axiom queries:

```text
'KAM.Apost.geometry' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cohomological' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The first probe attempt omitted `open Matrix` and consequently could not parse transpose notation;
adding that namespace opening in the scratch file resolved it. The successful rerun has no other
diagnostic. No project source was changed to make the probe pass. The audit-created probe was
removed afterward; pre-existing scratch files were left untouched.

`sh scripts/lint_sources.sh`: exit 0.

```text
check_lean_modules: PASS (242 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff --check 866a572^ 866a572` and `git diff --check`: no output, exit 0.
The commit diff for `KAM/Frozen/`, `manifest/`, `README.md` and `KAM.lean` is empty.

## Findings and limits

No new finding, suspected source erratum or auditor-introduced deviation. Audit 1's minor M1
about redundant positive-width premises in unchanged helpers remains an existing convention note;
the appended theorem has the exact Appendix A premises and derives every intermediate positive width.
This delta audit closes audit 1's explicit geometry-assembly coverage boundary. It does not
independently re-audit every predecessor proof or certify G1/provider/root closure. No independent
printed-PDF audit of HL19 or GJLV05 was performed; the requested comparison is against the local
binding design and blueprint. The only retained repository change is this report.
