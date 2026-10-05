#import "@preview/bloated-neurips:0.8.0": appendix, neurips2026

#show: neurips2026.with(
  title: [Formatting Instructions For NeurIPS 2026],
  authors: (authors, affls),
  keywords: ("Machine Learning", "NeurIPS"),
  abstract: [
    The abstract paragraph should be indented ½ inch (3 picas) on both the
    left- and right-hand margins. Use 10 point type, with a vertical spacing
    (leading) of 11 points. The word *Abstract* must be centered, bold, and in
    point size 12. Two line spaces precede the abstract. The abstract must be
    limited to one paragraph.
  ],
  bibliography: bibliography("main.bib"),
  accepted: false,
  font-config: (
    family: (serif: ("Times New Roman", "Liberation Serif")),
    size: (normal: 10pt),
  ),
)

#lorem(42)

#show: appendix

= Technical Details

#lorem(42)
