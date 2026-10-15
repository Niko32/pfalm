#let timeline = {
  let rows = (
    ("Paper 1 -- Review", 0.0, 1.1),
    // ("Paper 2 -- Interpretable pLM", 0.7, 1.5),
    ("Paper 2 -- Classifier", 0.8, 1.9),
    ("Paper 3 -- De novo generation", 1.6, 2.6),
    ("Writing & dissertation", 2.3, 3.0),
  )

  // Geometry
  let total = 3.0        // years
  let plot-w = 12cm      // width of the timeline area
  let label-w = 4.2cm    // width of the row labels
  let row-h = 0.75cm
  let bar-h = 0.38cm

  let x-at(v) = label-w + plot-w * (v / total)

  box(width: label-w + plot-w, height: row-h * (rows.len() + 1))[
    // Year gridlines and labels
    #for i in range(0, 44) {
      let x = x-at(i)
      place(top + left, dx: x, dy: 0pt,
        line(length: row-h * (rows.len() + 1), angle: 90deg,
             stroke: 0.4pt + luma(200)))
    }
    #for i in range(1, 4) {
      let x = (x-at(i - 1) + x-at(i)) / 2
      place(top + left, dx: x, dy: 0pt,
        box(width: 0pt)[#align(center)[#text(size: 9pt, weight: "bold")[Year #i]]])
    }

    // Rows: labels + bars
    #for (i, row) in rows.enumerate() {
      let (name, start, end) = row
      let y = row-h * (i + 1)
      place(top + left, dx: 0pt, dy: y + (row-h - bar-h) / 2 - 0.5pt,
        box(width: label-w - 0.3cm)[#align(right)[#text(size: 8.5pt)[#name]]])
      let x0 = x-at(start)
      let bw = x-at(end) - x-at(start)
      place(top + left, dx: x0, dy: y + (row-h - bar-h) / 2,
        box(width: bw, height: bar-h, radius: 2pt, fill: luma(130)))
    }
  ]
}

