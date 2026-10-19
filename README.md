# Universal Information Structure Analysis (UISA)

**Toward carrier-agnostic discovery of recoverable structure in digital artifacts.**
Abhishek Choudhary · AyeAI · October 2026 · living research record, version 1.0.0

Digital information is normally analysed inside a declared representation: text as text, audio as audio, video as
video, and steganalysis as the detection of a covert modification within an already identified carrier. UISA proposes
a broader inverse problem: given an arbitrary digital artifact, determine whether it contains statistically
significant, reproducible, potentially recoverable information-bearing structure, and discover a representation in
which that structure becomes measurable or decodable without assuming the carrier, alphabet, synchronization rule or
modality in advance. The record states the problem, five propositions with proofs, an architecture (detect, represent,
localise the channel, decode, validate, subtract, search again), a prototype, its benchmark, a negative result and a
roadmap.

## What this repository holds

| File | What it is |
|---|---|
| `UISA_Living_Research_Record.pdf` | The research record, 18 pages, exactly as authored |
| `SHA256SUMS` | The record's SHA-256, checked by the gate |
| `docs/index.html` | The record's landing page, with the evidence state of its claims |
| `CITATION.cff` | How to cite it |
| `ops/verify.sh` | The gate this repository passes before it is pushed or minted |

## Evidence state of the record's claims

The record is deposited as its author wrote it. Its claims are his and are kept as stated; this section says, for each
kind of claim, what this deposit itself carries as evidence.

| Claim in the record | Where its evidence is | State in this deposit |
|---|---|---|
| The research question, the five propositions and their proofs | The record, sections 4 and 4A | defined; the proofs are in the record |
| The prototype (`core.py`, `representations.py`, `synthetic.py`, `detector.py`, `features.py`, `ml.py`, `run_experiment.py`) | The record's research package | open: the source package is not part of this deposit |
| Unit tests pass 2 of 2; the benchmark reproduced; motion 2.044 ± 0.386 against 2.058 ± 0.475; audio 0.797 ± 0.639 against 1.135 ± 0.878; random forest 0.825 accuracy, 0.9163 ROC-AUC | The record, sections 8 and 9 | stated in the record; not re-executed for this deposit |
| Benchmark SHA-256 `462d3f88ef60e035d220e784bb1bc3d1cfb8c4b6e380ea8c6e4cedfb627a1e43` | The record, section 8 | stated in the record; the benchmark JSON is not part of this deposit |

When the research package is added, its tests and benchmark run in this repository's gate and the states above change
to what that run shows.

© 1993–2026 Abhishek Choudhary. All rights reserved. AyeAI. The record is licensed under CC BY-NC-ND 4.0 (LICENSE).
