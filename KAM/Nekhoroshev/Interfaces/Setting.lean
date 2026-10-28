/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Normed.Group.Basic
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation

/-!
# The standing data of Nekhoroshev's theorem (`bpN:p1:s-holo#data`)

`Data` and `Wdom` are also what Part 3 (`bpN:p3:s-N#data`) needs: they are declared here, once,
and `Nekhoroshev/ODE/Specialization.lean` imports them. This file also holds the explicit
constants `qcQ qcB qcMu qcEll` of `bpN:p1:qc-convert`.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

/-- `R, s > 0`, `h ∈ A_s` integrable, `f` an `ε`-small analytic perturbation. -/
structure Data (n : ℕ) (R s ε : ℝ) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  hR : 0 < R
  hs : 0 < s
  hh : IsAnalyticIntegrable R s h
  hf : IsAnalyticPerturbation R s ε f

/-- `W_s = ℝⁿ × B(0, R + s)`. -/
def Wdom (n : ℕ) (R s : ℝ) : Set ((Fin n → ℝ) × (Fin n → ℝ)) :=
  univ ×ˢ ball (0 : Fin n → ℝ) (R + s)

/-- The constants of `bpN:p1:qc-convert`: `q = m/n`, `B_c = n M_ℂ + q`, `μ = q/2`,
`ℓ = ω_min q / (8 (B_c + q))`. -/
def qcQ (n : ℕ) (m : ℝ) : ℝ := m / n
def qcB (n : ℕ) (m Mc : ℝ) : ℝ := n * Mc + qcQ n m
def qcMu (n : ℕ) (m : ℝ) : ℝ := qcQ n m / 2
def qcEll (n : ℕ) (m Mc wmin : ℝ) : ℝ := wmin * qcQ n m / (8 * (qcB n m Mc + qcQ n m))

end KAM.Nekhoroshev

end
