# P4-S2 prover handoff (branch k/p4-s2, d0afc5a; merged with main) — PROVIDER PACKAGE for frozen HEAD-Q

| Item | Declaration | File |
|---|---|---|
| HEAD-Q provider | KAM.Provider.kam_positive_measure_qualitative | KAM/Provider/KamPositiveMeasureQualitative.lean |

Prover: term from design §6: headq_of_head hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg fun _ h1 … h6 => KAM.kam_positive_measure hn hτ hs₀ hr₀ h1 … h6. Imports KAM.Head.HeadQ and the SEALED KAM.Frozen.Theorems.KamPositiveMeasure only. Probes passed: exact-type example against type_of% @KAM.kam_positive_measure_qualitative, and the sealing form `by exact KAM.Provider.kam_positive_measure_qualitative hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg`.
AUDIT FOCUS (HEAD-Q seal gate; refute hard): (1) brief item 4 exact-type probe against the frozen KAM.kam_positive_measure_qualitative (KAM/Frozen/Theorems/KamPositiveMeasureQualitative.lean); (2) the imported HEAD anchor is SEALED in manifest/frozen-anchors.json (not DRAFT_SORRY) and #print axioms of the provider is propext/Classical.choice/Quot.sound (no sorryAx through HEAD); (3) the use of headq_of_head (audited P4-Q) matches the design: HEAD applied at every action domain B' as headq_of_head's premise requires; (4) hygiene; nothing under KAM/Frozen or manifest changed.
