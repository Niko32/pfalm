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
  size: 11pt,
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
  below: 0.5em,
)[
  #set text(size: 13pt, weight: "bold")
  #it.body
]

#show heading.where(level: 2): it => block(
  above: 0.7em,
  below: 0.5em,
)[
  #set text(size: 11pt, weight: "bold")
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

// --- Body ------------------------------------------------------------------

= Motivation and Personal Background

= Proposed Approach
The central research question of the thesis is the following:
/ RQ: How can explainability methods for protein language models facilitate the de novo generation of non-immunogenic proteins.


== Paper 1 and 2 -- pLM explainability
Explainability of @plm:pl is still a young field of research that has not been extensively studied. However, notable work has been put into the study of interpretability in the closely related @llm:pl.
The first contribution of the thesis focuses on compiling existing explainability methods for @plm:pl and @llm:pl. It is expected to find few examples, if any, of explainability research applied to @plm:pl. These are compared to the larger corpus of @llm explainability research to find the method that best fits the purpose of the thesis.

Most likely, this requires adjustments to modern @llm explainability tooling to make it applicable for @plm:pl. Finding a suitable @plm architecture and applying an appropriate @llm explainability method to it makes up the second contribution of the thesis.


== Paper 3 -- From Interpretability to a Classifier
Using insights from the prior interpretability research it should now be possible to construct a simple classifier as a linear layer on top of the most relevant network activations in the @plm. This classifier mainly focuses on immunogenity and toxicity. A suitable benchmark is used to test the model's predictive ability for these protein properties. A brief exploration of other potentially relevant biological properties may also be done.


== Paper 4 -- Low immunogenic de novo Protein Generation
Using the insights from the previous work it should be possible to now manipulate network activation in the @plm that correspond to higher toxicity, immunogenicity or other biological properties. Tuning down network activations that correlate with these properties should result in a generative model that is biased towards more immune friendly peptide sequences.


= Timeline



// --- References (optional) -------------------------------------------------
// Uncomment to attach a bibliography. Keep entries minimal to stay on one page.
// #v(0.4em)
// #line(length: 100%, stroke: 0.3pt + luma(180))
// #set text(size: 8.5pt)
// #bibliography("main.bib", title: "References", style: "ieee")

#print-glossary(
 glossary,
 disable-back-references: true,
 invisible: true,
)
