/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import KAM.Diophantine.Basic
public import KAM.Frozen.Defs.IsDiophantine

/-!
# The coefficient-level Diophantine condition is the frozen one

`KAM.Diophantine.Condition ω γ τ` (used by the coefficient infrastructure) and the frozen
definition `KAM.IsDiophantine γ τ ω` (used by the frozen statements) are the same proposition,
with the arguments in a different order. Downstream proofs transport between them with these
lemmas rather than by unfolding.
-/

@[expose] public section

namespace KAM.Diophantine

variable {n : ℕ}

/-- The coefficient-level Diophantine condition is the frozen `KAM.IsDiophantine`. -/
theorem condition_iff_isDiophantine (ω : Fin n → ℝ) (γ τ : ℝ) :
    Condition ω γ τ ↔ KAM.IsDiophantine γ τ ω :=
  Iff.rfl

alias ⟨Condition.isDiophantine, _root_.KAM.IsDiophantine.condition⟩ :=
  condition_iff_isDiophantine

end KAM.Diophantine

end
