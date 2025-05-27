#import "@preview/cetz:0.3.4": *
#import "@preview/cetz-plot:0.1.1": *

#let graph_line(
  data_atteso: (),
  data_reale: (),
  label_atteso: (),
  label_reale: (),
  label_x: (),
  label_y: (),
  y-max: (),
  y-min: (),
  y-tick-step: (),
  doc
) = {
  set align(center)

  canvas({
  plot.plot(
    size: (13,7),
    x-max:11,
    x-min:1,
    y-max:(y-max),
    y-min:(y-min),
    fill: red,
    x-tick-step: 1,
    y-tick-step: (y-tick-step),
    y-grid: true,
    x-label:(label_x),
    y-label:(label_y),
    legend: (0,-1),
    legend-anchor: auto,
    {
      plot.add((..data_atteso), label: (label_atteso))
      plot.add((..data_reale), label: (label_reale))
    })
  })

  set align(left)
  doc
}

#let graph_bar(
  data: (),
  label_x: (),
  label_y: (),
  y-max: (),
  y-min: (),
  y-tick-step: (),
  doc
) = {
  set align(center)

  canvas({
  plot.plot(
    size: (13,7),
    x-max:11,
    x-min:1,
    y-max:(y-max),
    y-min:(y-min),
    fill: red,
    x-tick-step: 1,
    y-tick-step: (y-tick-step),
    y-grid: true,
    x-label:(label_x),
    y-label:(label_y),
    legend: (0,-1),
    legend-anchor: auto,
    {
      plot.add((..data))
    })
  })
  
  set align(left)
  doc
}