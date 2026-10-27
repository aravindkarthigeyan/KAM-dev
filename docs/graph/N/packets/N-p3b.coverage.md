ITEM: bpN:p3:gen-exit
KIND: lemma
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
DISPOSITION: NODE bpN:p3:gen-exit
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:exit-closed
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343
DISPOSITION: NODE stepN:p3:exit-closed
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:exit-min
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345
DISPOSITION: NODE stepN:p3:exit-min
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:exit-bdry
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347
DISPOSITION: NODE stepN:p3:exit-bdry
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:exit-sup
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349
DISPOSITION: NODE stepN:p3:exit-sup
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:gen-invariant
KIND: definition
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-invariant@L352-L356
DISPOSITION: EXCLUDED
REASON: outside every root closure; owned by the importing graph (track I/P): used only by gen-barrier ('S is invariant') inside Part 3 and by track I (bpI:p5:invariance, stepI:p5:inv-uniq); check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:gen-barrier
KIND: corollary
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L358-L363
DISPOSITION: EXCLUDED
REASON: outside every root closure; owned by the importing graph (track I/P): used by track I (stepI:p5:sp-barrier) only; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:barrier-fwd
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded gen-barrier; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:barrier-bwd
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded gen-barrier; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:ham-smooth
KIND: lemma
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381
DISPOSITION: NODE bpN:p3:ham-smooth
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:hs-deriv
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-deriv@L383-L383
DISPOSITION: NODE stepN:p3:hs-deriv
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:hs-comp
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385
DISPOSITION: NODE stepN:p3:hs-comp
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:ham-energy
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393
DISPOSITION: NODE bpN:p3:ham-energy
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:en-chain
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395
DISPOSITION: NODE stepN:p3:en-chain
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:en-cancel
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-cancel@L397-L397
DISPOSITION: NODE stepN:p3:en-cancel
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:en-const
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399
DISPOSITION: NODE stepN:p3:en-const
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:ham-periodic
KIND: lemma
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
DISPOSITION: NODE bpN:p3:ham-periodic
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:per-field
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409
DISPOSITION: NODE stepN:p3:per-field
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:per-sol
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411
DISPOSITION: NODE stepN:p3:per-sol
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:ham-reduction
KIND: proposition
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427
DISPOSITION: NODE bpN:p3:ham-reduction
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:red-mem
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429
DISPOSITION: NODE stepN:p3:red-mem
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:red-diff
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431
DISPOSITION: NODE stepN:p3:red-diff
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:newton-reduction
KIND: proposition
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L449
DISPOSITION: EXCLUDED
REASON: outside every root closure; owned by the importing graph (track I/P): used only by newton-continuation inside Part 3, and by tracks I and P (bpI:p7:ham-eq, stepI:p7:he-sol, stepI:p8:pf-uniq; track P cites \Nref); check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:nr-smooth
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded newton-reduction; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:nr-pair
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded newton-reduction; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:newton-continuation
KIND: corollary
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L456-L462
DISPOSITION: EXCLUDED
REASON: outside every root closure; owned by the importing graph (track I/P): used by no track-N proof (only the excluded remark gen-uniform-remark and the label index mention it); track P cites it; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:nc-data
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-data@L464-L465
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded newton-continuation; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:nc-apply
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-apply@L467-L467
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded newton-continuation; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:holo-input
KIND: lemma
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L479-L483
DISPOSITION: NODE bpN:p3:holo-input
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:hi-cite
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485
DISPOSITION: NODE stepN:p3:hi-cite
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:hi-reg
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487
DISPOSITION: EXCLUDED
REASON: 'for orientation' repetition of the argument of Lemma bpN:p1:holo-real, cited at hi-cite; not consumed (SPEC: not an edge)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:hi-per
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-per@L489-L489
DISPOSITION: EXCLUDED
REASON: 'for orientation' repetition of the periodicity argument of Lemma bpN:p1:holo-real, cited at hi-cite; not consumed (SPEC: not an edge)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:lipschitz
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L492-L496
DISPOSITION: EXCLUDED
REASON: outside every root closure of track N: no proof in Parts 0-11 cites it (gen-uniform-periodic is applied directly in cg-set and gen-lip in uc-data, and local-exist uses holo-input and ham-reduction instead); check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:lip-smooth
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-smooth@L498-L498
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded lipschitz; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:lip-lip
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded lipschitz; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:local-exist
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507
DISPOSITION: NODE bpN:p3:local-exist
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:le-red
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509
DISPOSITION: NODE stepN:p3:le-red
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:le-apply
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510
DISPOSITION: NODE stepN:p3:le-apply
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:energy
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:energy@L513-L517
DISPOSITION: EXCLUDED
REASON: outside every root closure of track N: no proof in Parts 0-11 cites it (Part 7 cites ham-energy directly, p7 L173, not this track-N specialization); check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:en-direct
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-direct@L519-L519
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded energy; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:continuation
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L522-L529
DISPOSITION: EXCLUDED
REASON: outside every root closure of track N: Part 10 cites it only in its external list (p10 L23) and interface remark (p10 L166), Part 1 only in the remark constants-use (L256, \Nref pointer); the proof of confinement-glue cites gen-confinement, ham-reduction, gen-uniform-periodic and ham-periodic, not continuation, and no step of Part 10 uses it; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:co-general
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-general@L531-L531
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded continuation; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:co-periodic
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532
DISPOSITION: EXCLUDED
REASON: outside every root closure (step of an excluded result): step of the excluded continuation; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:uniqueness-closed
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L535-L539
DISPOSITION: NODE bpN:p3:uniqueness-closed
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:uc-apply
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541
DISPOSITION: NODE stepN:p3:uc-apply
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: bpN:p3:confinement-glue
KIND: theorem
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L544-L552
DISPOSITION: NODE bpN:p3:confinement-glue
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-review-N-c

ITEM: stepN:p3:cg-set
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554
DISPOSITION: NODE stepN:p3:cg-set
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: stepN:p3:cg-glue
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556
DISPOSITION: NODE stepN:p3:cg-glue
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: heading:bpN:p3:s-exit
KIND: heading
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-exit@L326-L326
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: heading:bpN:p3:s-ham
KIND: heading
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-ham@L370-L370
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: heading:bpN:p3:s-frozen
KIND: heading
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-frozen@L414-L414
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: heading:bpN:p3:s-N
KIND: heading
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N@L470-L470
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: heading:bpN:p3:s-index
KIND: heading
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-index@L559-L559
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L340
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L340-L340
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L380
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L380-L380
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L392
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L392-L392
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L406
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L406-L406
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L426
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L426-L426
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L448
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L448-L448
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L482
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L482-L482
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L495
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L495-L495
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L506
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L506-L506
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L516
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L516-L516
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L528
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L528-L528
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L538
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L538-L538
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:source-L551
KIND: citation
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#source@L551-L551
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:prose-L372-L375
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#prose@L372-L375
DISPOSITION: NODE bpN:p3:ham-smooth, bpN:p3:ham-energy, bpN:p3:ham-periodic, bpN:p3:ham-reduction
REASON: phase space P = R^n x R^n (max norm), points (theta,I), and X_H as the frozen hamiltonianVectorField with its partials: used by the statements and proofs of the Hamiltonian layer; recorded as edges to bpN:p0:vf#hamiltonianVectorField
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:prose-L472-L477
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#prose@L472-L477
DISPOSITION: NODE bpN:p3:s-N#data
REASON: standing data of section s-N (R, s, h, epsilon, f, H = H_{h,f}, W_s, U); consumers: holo-input, local-exist, uniqueness-closed, confinement-glue
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c

ITEM: p3:prose-L561-L574
KIND: proof-region
SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#prose@L561-L574
DISPOSITION: EXCLUDED
REASON: label index for tracks I and P (administrative; SPEC: label indexes are excluded)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: sol-delta-N-c
