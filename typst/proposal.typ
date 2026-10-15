// --- Glossary definition ---
#import "@preview/glossarium:0.5.10": make-glossary, register-glossary, print-glossary, gls, glspl

#show: make-glossary
#let glossary = (
  (
    key: "llm",
    short: "LLM",
    long: "Large Language Model",
  ),
  (
    key: "plm",
    short: "pLM",
    long: "Protein Language Model",
  ),
  (
    key: "esm",
    short: "ESM",
    long: "Evolutionary Scale Modeling",
  )
)
#register-glossary(glossary)

// --- Document Styling --- 
#set document(
  title: "Research Proposal — Interpretability for Protein Language Models",
  author: "Niko Konzack",
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1.8cm),
  numbering: none,
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
  lang: "en",
)

#set par(
  justify: true,
  leading: 0.6em,
  spacing: 0.9em,
  first-line-indent: (amount: 1em, all: false),
)

#set terms(indent: 1em)

// --- Heading styling ----------------------------------------------

#show heading.where(level: 1): it => block(
  above: 1.0em,
  below: 0.5em
)[
  #set text(size: 12pt, weight: "bold")
  #it.body
]

#show heading.where(level: 2): it => block(
  above: 0.7em,
  below: 0.5em
)[
  #set text(size: 10pt, weight: "bold")
  #it.body
]

// --- Title block -----------------------------------------------------------

#align(center)[
  #text(size: 15pt, hyphenate: false, weight: "bold")[
    Interpreting Immunogenicity Signals \ in Protein Language Models
  ]

  #v(0.2em)
  #text(size: 11pt)[
    Research proposal
  ]

  #v(0.3em)
  #text(size: 10pt)[
    Niko Konzack · #link("mailto:niko.konzack@t-online.de")[niko.konzack\@t-online.de]
  ]

  #v(0.2em)
  #text(size: 9.5pt, fill: luma(90))[
    PhD Position in Interpretability for Protein Language Models · LION Lab, Leipzig University
  ]
]

#line(length: 100%, stroke: 0.5pt + luma(160))
#v(0.3em)

// --- Body ---------------------------------------------------------

// --- Introduction ---
@plm:pl are an essential part of the design process of novel proteins. Modern architectures like the @esm family of models~#cite(label("Candido2026.06.03.729735")), ProtTrans~#cite(label("9477085")), and Ankh~#cite(label("Elnaggar2023.01.16.524265")) create semantically rich embeddings of proteins that can be used to predict sequence and structure of proteins or to generate entirely new proteins with desired attributes.
One of the most capable models today, the #[@esm]-3~#cite(label("doi:10.1126/science.ads0018")), even allows for the generation of proteins with certain biological properties derived from InterPro~#cite(label("10.1093/nar/gkae1082")) types.

While these types already make it possible to associate sequences with certain domains, families, and binding sites, they do not give insights into important high-level properties.
Some of the most important properties that cannot be trivially predicted today are immunogenicity and toxicity of proteins.
Understanding why certain proteins are rejected by the immune system is a central concern to the development of novel pharmaceutical compounds. 
This thesis aims to contribute to the understanding and generation of non-immunogenic proteins by posing the following central research question:
/ RQ: How can explainability methods for protein language models facilitate de novo generation of non-immunogenic and non-toxic proteins?


= Proposed Approach
Progress is made towards this broad goal in successive individual research papers. 
The final PhD thesis will comprise these sub-contributions to form a single coherent work. 
The early papers, especially the first, aim to get a sufficient overview of similar works in the field. Depending on the outcome of this review of the literature, the general direction of the thesis may be adjusted again.

// == Paper 1 -- Review of existing explainable pLMs
// Explainability of @plm:pl is still a young field of research that has not been extensively studied. However, notable work has been put into the study of interpretability in the closely related @llm:pl.
The first contribution of the thesis focuses on compiling existing explainability methods for @plm:pl and @llm:pl. A special focus lies on finding explainability work in @llm:pl that may not be used in @plm:pl yet. On this basis, an appropriate @plm architecture and explainability method for the thesis are chosen.

// == Paper 2 -- From Interpretability to a Classifier
Implementing the explainable @plm makes it possible to construct a simple classifier from the most salient features of the analysis.
This will make up the second contribution.
A suitable benchmark is used to guide and test the model's predictive ability for immunogenicity and toxicity of the proteins. 
A brief exploration of other potentially relevant biological properties may also be done.

// == Paper 3 - Low immunogenic de novo Protein Generation
A third contribution uses salient features from the previous work to manipulate network activation in the @plm that correspond to higher toxicity, immunogenicity or other biological properties. Tuning down these activations should result in a generative model that is biased towards more immune friendly peptide sequences.


= Timeline
#import "timeline.typ": timeline 
#align(center)[#timeline]

// --- References -------------------------------------------------
#set text(size: 7.5pt)
#bibliography("main.bib", title: "References", style: "ieee")

#print-glossary(
 glossary,
 disable-back-references: true,
 invisible: true,
)
