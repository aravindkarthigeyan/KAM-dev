/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.dotℂ`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 §2.1 (transpose). This file is
frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The bilinear (not Hermitian) dot product on `ℂⁿ × ℂⁿ`, so that `uᵀ v` for column vectors. -/
def dotℂ {n : ℕ} (u v : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  ∑ i, (u.1 i * v.1 i + u.2 i * v.2 i)

end KAM

end
