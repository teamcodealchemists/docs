#import "@preview/cetz:0.3.4": *
#import "@preview/cetz-plot:0.1.1": *

#let graph_gulpease(
  data: (),
  doc
) = {
  set align(center)

  //Per ora in fase di test

  canvas({
  plot.plot(
    size: (13,7),
    x-max:11,
    x-min:1,
    y-max:100,
    y-min:0,
    fill: red,
    x-tick-step: 1,
    y-tick-step: 10,
    y-grid: true,
    x-label:"Sprint",
    y-label:none,
    legend: (0,-1),
    legend-anchor: auto,
    {
      plot.add((..data), label: "Gulpease")
      plot.add(((0,15),(1,10),(2,25),(3,30),(4,40),(5,70)), label: "Non Gulpease")
    })
  })
  doc
}

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
  doc
}