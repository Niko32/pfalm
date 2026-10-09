// One-page research proposal for the PhD position in
// "Interpretability for Protein Language Models" (LION Lab, Leipzig University).
//
// Compile with:  typst compile pi-proposal.typ
// The layout is tuned to fit a single A4 page at 10.5pt.

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
  size: 10.5pt,
  lang: "en",
)

#set par(
  justify: true,
  leading: 0.62em,
  spacing: 0.9em,
  first-line-indent: (amount: 1em, all: false),
)

// --- Heading styling -------------------------------------------------------

#show heading.where(level: 1): it => block(
  above: 1.0em,
  below: 0.5em,
)[
  #set text(size: 11pt, weight: "bold")
  #it.body
]

#show heading.where(level: 2): it => block(
  above: 0.7em,
  below: 0.3em,
)[
  #set text(size: 10.5pt, weight: "bold", style: "italic")
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

= Motivation and Background



= Research Question

The central question this proposal addresses is the following:


= Proposed Approach

== Work Package 1 — Probing and Feature Discovery



== Work Package 2 — From Interpretability to a Classifier



== Work Package 3 — Steering de novo Protein Generation



= Expected Outcomes



= Timeline



// --- References (optional) -------------------------------------------------
// Uncomment to attach a bibliography. Keep entries minimal to stay on one page.
// #v(0.4em)
// #line(length: 100%, stroke: 0.3pt + luma(180))
// #set text(size: 8.5pt)
// #bibliography("main.bib", title: "References", style: "ieee")
