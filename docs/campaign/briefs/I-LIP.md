# Package I-LIP: Lipschitz maps and Lebesgue measure (Part 1)

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-lip`, branch `k/lip`.
- **Nodes** (Part 1, "Lipschitz maps and Lebesgue measure", L1110 onwards), each with its steps:
  - `bp:p1:lip-image-product` (L1116, uses (E11));
  - `bp:p1:lip-image` (L1122);
  - `bp:p1:mcshane` (L1166, with `β ≥ 0`);
  - `bp:p1:lipeo-fixed` (L1194);
  - `bp:p1:lipeo` (L1201, uses Banach (E9)).

  The constants must be exactly the blueprint's: `Λ^d` for images in the max norm; the lipeomorphism with λ = 1/2
  has forward constant 3/2 and inverse constant 2. Part 4 uses these.
- **Leads** (from the Part 1 review):
  - Mathlib's max-norm Hausdorff/Lebesgue facts in `MeasureTheory/Measure/Hausdorff.lean` (around L734 and L889);
  - McShane: `LipschitzOnWith.extend_pi` and `LipschitzOnWith.extend_real`;
  - Banach: `ContractingWith.fixedPoint`.
- **Files:** new modules `KAM/Measure/Lipschitz.lean`, `KAM/Measure/McShane.lean` and `KAM/Measure/Lipeo.lean`.
