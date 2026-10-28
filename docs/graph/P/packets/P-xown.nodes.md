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
