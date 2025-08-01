#import "@preview/cetz:0.4.0": *
#import "@preview/cetz-plot:0.1.2": *



#let graph_line(
  caption: (),
  data_atteso: (),
  data_reale: (),
  label_atteso: (),
  label_reale: (),
  label_x: (),
  label_y: (),
  y-max: (),
  y-min: (),
  y-tick-step: (),
  doc,
) = {
  set align(center)
  figure(
    caption: (caption),
    block(canvas({
    plot.plot(
      size: (13, 7),
      x-max: 11,
      x-min: 1,
      y-max: (y-max),
      y-min: (y-min),
      fill: red,
      x-tick-step: 1,
      y-tick-step: (y-tick-step),
      y-grid: true,
      x-label: (label_x),
      y-label: (label_y),
      legend: (0, -1),
      legend-anchor: auto,
      {
        plot.add((..data_atteso,), label: (label_atteso), style: (
          fill: rgb("#bc35ae"),
        ))
        plot.add((..data_reale,), label: (label_reale))
      },
    )
  })))
  set align(left)
  doc
}

#let graph_bar(
  caption: (),
  data: (),
  label_x: (),
  label_y: (),
  y-max: (),
  y-min: (),
  y-tick-step: (),
  y-dash: (),
  doc,
) = {
  set align(center)

  figure(
    caption: (caption),
    block(
      canvas({
      plot.plot(
        size: (13, 7),
        x-max: 11.5,
        x-min: 0.5,
        y-max: (y-max),
        y-min: (y-min),
        y-grid: true,
        x-label: (label_x),
        y-label: (label_y),
        {
          plot.add-bar((..data,), bar-width: 0.6, style: (
            fill: rgb("#67abce"),
            stroke: black,
            stroke-width: 1,
            tick: (
              label: (
                offset: -1000,
              ),
            ),
          ))
          plot.add-hline(y-dash, style: (
            stroke: (
              paint: red,
              dash: "dashed",
            ),
          ))
        },
    )
  }))
  )

  set align(left)
  doc
}
