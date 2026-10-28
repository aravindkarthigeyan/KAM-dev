NODE: bpN:p6:iterative-special
KIND: lemma
TITLE: Special cases for track P
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
CONTRACT_ID: bpN:p6:iterative-special
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source hypotheses and data of N iterative, including its original nonresonance/Lipschitz hypotheses, p>1, 1/p+1/q=1 and smallness u=q delta/(alpha-bar rho sigma)<=1/4; (1) g=0; (2) Lambda={0}; the numbered cases are separate specializations
SOURCE_QUANTIFIERS: the data (n,r,s,rho,sigma,K,alpha,L,p), then f and the normal-form data as in N iterative
SOURCE_CONCLUSION: (1) for g=0, ¦g¦_*=0 and ¦f_+¦<=(1-2q delta/(alpha-bar rho sigma))^{-1}(2q delta/(e alpha-bar rho sigma)+exp(-2pi K sigma)) delta; (2) for Lambda={0}, P_Lambda T_K f=f^_0=avg f, cond-nr is ¦k.omega(I)¦>=alpha for 0<¦k¦_1<=K, and the transformed Hamiltonian is h+g+avg f+f_+; (3) no constant depends on f or H beyond delta and ¦g¦_*, with the data and smallness dependence stated at L144
CONSTANT_SCOPE: as stated in (3): data (n,r,s,rho,sigma,K,alpha,L,p); f and H enter only through delta and ¦g¦_*
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p6:iterative, N:bpN:p6:setting, N:bpN:p4:projections, N:bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | specialize (d) and the transformed Hamiltonian
EDGE: N:bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | original N hypotheses, alpha-bar and ¦g¦_*
EDGE: N:bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | P_Lambda T_K f=f^_0 for Lambda={0}
EDGE: N:bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144 | weighted remainder norm and Fourier coefficients
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-P-d
REVIEWER: sol-delta-P-d
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: N excludes this remark from its own root closure; P consumes its first-step and averaging facts through p2:direct. Source remains the N blueprint; do not label it an N import.

NODE: bpI:p7:scaling
KIND: proposition
TITLE: Scaling to a general Kepler strength
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L311-L318
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L319-L322
CONTRACT_ID: bpI:p7:scaling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k>0; E_k(q,p)=¦p¦^2/2-k/¦q¦ and S_k(Q,P)=(Q/k,kP); for the dynamical claims (Q,P)(tau) solves Hamilton equations of E_1; mean-anomaly averages as in Proposition means; mass dictionary: body of mass m>0 in the field of a centre of strength k=G m_0 with H(q,p)=¦p¦^2/(2m)-km/¦q¦
SOURCE_QUANTIFIERS: k>0 then (Q,P) a solution (or Kepler orbit with semi-major axis a); m>0 and k=G m_0 for the mass dictionary
SOURCE_CONCLUSION: S_k is linear and symplectic (DS_k^T J DS_k=J), E_k o S_k=k^2 E_1, (q,p)(t)=S_k(Q,P)(k^2 t) solves Hamilton equations of E_k, semi-major axis a_k=a/k, averages <1/¦q¦_2>=1/a_k, <¦p¦_2^2>=k/a_k, E_k=-k/(2a_k); mass dictionary: H=m E_k(q,p/m), v=p/m obeys qdot=v, vdot=-kq/¦q¦^3, orbit and elements a_k,e are those of E_k, Gamma_mass=m Gamma(q,v), L_mass=m sqrt(k a_k), <¦p¦^2>=m^2 k/a_k, <1/¦q¦>=1/a_k
CONSTANT_SCOPE: none (k and m are the data; no dependence on any other constant)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:means
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L320-L321 | averages 1/¦Q¦ and ¦P¦^2 over the mean anomaly equal 1/a and 1/a, giving the scaled averages and E_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this proposition from its own root closure; P consumes it at bpP:p6:kepler-part, stepP:p7:rg-scale and (via bpI:p7:circular) Part 7. Source remains the I blueprint. Proof step sc-alg cites Lemma bpI:p6:conversion(a) and step sc-flow cites Step stepI:p7:sy-field (naturality of Hamiltonian fields) only as "as in" pointers to the same one-line algebra, so no edges are recorded; both are nodes of the published I graph, if the reviewer wants them as imports.

NODE: bpI:p7:means
KIND: proposition
TITLE: Mean values
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L290-L296
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L297-L301
CONTRACT_ID: bpI:p7:means
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0, g in R, e=e(L,G), a=L^2, (q,p)=Q(ell,g,L,G) (Delaunay map of Definition orbit-maps), r=¦q¦_2
SOURCE_QUANTIFIERS: (L,G) in C_0 and g in R, then the mean anomaly ell in [0,2pi]
SOURCE_CONCLUSION: (1/2pi) int_0^{2pi} dell/r = 1/a; (1/2pi) int_0^{2pi} ¦p¦_2^2 dell = 1/a (virial); (1/2pi) int_0^{2pi} r dell = a(1+e^2/2)
CONSTANT_SCOPE: none (a=L^2 and e=e(L,G) are determined by (L,G))
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:kepler-eq, I:bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L298-L298 | ell -> u=u_R(ell,e) increasing C^1 with u(0)=0, u(2pi)=2pi and dell=D du (parts (b),(c))
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L299-L300 | r=aD (part a) and E=-1/(2a) (part c) used for the three integrals and the virial identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this proposition from its own root closure (DEPGRAPH_COVERAGE: outside every root closure; cited by track P); P consumes it via bpI:p7:circular, stepP:p7:ke-c and bpI:p7:scaling. Source remains the I blueprint; not an I import. SOURCE_GAP-adjacent: step mv-cv (L298) also uses the change-of-variable item bpI:p7:x-change (Part 7 L41), an I external that is not a node of the published I graph; no edge is recorded and the item is reported to the orchestrator (candidate for a further P-xown node). Statement gives the ell-averages over one period; mean-anomaly average notation in bpI:p7:scaling is the same quantity.

NODE: bpI:p7:circular
KIND: corollary
TITLE: Circular endpoint
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L303-L306
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L307-L309
CONTRACT_ID: bpI:p7:circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real arguments L>0, 0<=e<1, k=sqrt(1-e^2), G=Lk, u=u_R(ell,e); Delaunay data as in Definition orbit-maps
SOURCE_QUANTIFIERS: L>0 and 0<=e<1 (including e=0), ell real
SOURCE_CONCLUSION: the endpoint formulas (a),(b) of orbit-identities, the scalar identities E=-1/(2L^2) and Gamma=G of its part (c), the mean values of means (with the scaling and mass dictionary of scaling) hold for 0<=e<1, in particular for circular orbits e=0 (u=ell, r=L^2, ¦p¦=1/L, E=-1/(2L^2), Gamma=L); not claimed for e=0: membership in the strictly noncircular region C, the Delaunay-elements definition on C, and the chart statements of Theorem chart (these remain for 0<e<1 only)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:orbit-identities, I:bpI:p7:kepler-eq, bpI:p7:means, bpI:p7:scaling
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | same algebra as steps oi-r..oi-en with e>=0: endpoint formulas (a),(b) and scalar energy and Gamma identities of (c)
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | u=u_R(ell,e) defined for ¦e¦<1 (part (c))
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | steps mv-cv..mv-int use only c^2+s^2=1, k^2=1-e^2, D>=1-e>0, so the mean values hold for e>=0
EDGE: bpI:p7:scaling | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L304-L304 | the scaling and mass dictionary of the statement is stated as holding for 0<=e<1 (proof does not otherwise re-derive it)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this corollary from its own root closure; P consumes it at bpP:p7:kepler, stepP:p7:ke-c and stepP:p7:po-el. Source remains the I blueprint. The proof is the single step ci-alg (same algebra, no e>0); kept as one node.
