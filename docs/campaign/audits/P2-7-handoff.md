# P2-7 prover handoff (branch k/p2-7, 9c8ebec, merged with main)

| Node | Declaration | File |
|---|---|---|
| bp:p2:exactness (+ steps ex-curl, ex-avg-omega, ex-gradient, ex-avg-eta) | KAM.Apost.exactness (verbatim); Exactness.curl_actionForm, avg_lagrangeMat, etaN_apply, avg_etaN | KAM/Apost/Exactness.lean |
| step:p2:geo-de, geo-domegak, geo-ered | Geometry.geo_de, geo_domegak, geo_ered | KAM/Apost/Geometry.lean |
| step:p2:geo-esym (pointwise half), geo-omegak inputs, constants | Geometry.geo_esym_le, geo_omegak_inputs, geo_omegak_arith, geo_esym_arith | KAM/Apost/Geometry.lean |

NOT in the module yet: the Appendix A theorem `geometry` (waits for KAM.Apost.cohomological, now on k/strip3b in audit); the prover verified the assembly in a scratch file.
AUDIT FOCUS: exactness verbatim and = blueprint; the four geometry step lemmas state their steps correctly (constants), with no hidden hard step; hygiene. Do NOT certify bp:p2:geometry (not yet assembled).
