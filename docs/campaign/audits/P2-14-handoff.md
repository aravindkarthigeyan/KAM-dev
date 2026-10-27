# P2-14 prover handoff (branch k/p2-14, 748caf2; contains k/p2-13 (in audit); merged with main) — PROVIDER PACKAGE for frozen G1

| Node | Declaration | File |
|---|---|---|
| bp:p2:limit | KAM.Apost.kamLimit (def), KAM.Apost.limit | KAM/Apost/Limit.lean |
| step:p2:lim-k / lim-dk / lim-holo / lim-primary / lim-close / lim-margins / lim-invariance | KAM.Apost.lim_k / lim_dk / lim_holo / lim_primary / lim_close / lim_margins / lim_invariance | same |
| bp:p0:g1 (proof) | KAM.Apost.C_1, C_2, g1_explicit | KAM/Apost/G1.lean |
| step:p2:g1-constants | C_1_pos, C_2_pos | same |
| step:p2:g1-standing, g1-apply, g1-check | inside g1_explicit | same |
| step:p2:g1-e | KAM.Apost.g1_error_small | KAM/Apost/Constants.lean |
| provider | KAM.Provider.aposteriori_kam | KAM/Provider/AposterioriKam.lean |

Prover: signatures verbatim; provider ⟨_, _, KAM.Apost.g1_explicit …⟩ imports only KAM.Apost.G1; probes `example : type_of% @KAM.aposteriori_kam := @KAM.Provider.aposteriori_kam` and the sealing form `by exact KAM.Provider.aposteriori_kam hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar` both elaborated.
AUDIT FOCUS (G1 seal gate; refute hard): (1) brief item 4 — exact-type probe against the frozen KAM.aposteriori_kam (KAM/Frozen/Theorems/AposterioriKam.lean); provider imports no frozen theorem; uses the graph predecessors (iteration, limit) not a shortcut; (2) g1_explicit = the frozen G1 body verbatim with C₁ := C_1 …, C₂ := C_2 … (design §6, L22); the dropped ‖Dh‖ ≤ M clause in Standing is a legitimate weakening of what is used, not a dropped hypothesis of the statement; (3) kamLimit is the genuine uniform limit on its carrier (no junk value relied on); limit and every lim-*/g1-* step sound; (4) hygiene; nothing under KAM/Frozen or manifest changed. Audit git diff k/p2-13...HEAD.
