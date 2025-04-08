#let tabella_preventivo_consuntivo(
  dati: array,
  didascalia: text
) = {
      show table.cell: cl => if cl.x == 0 and cl.y != 0 {
        align(bottom + left, cl)
      } else if cl.x == 0 {
        align(bottom + left, cl)
      } else if cl.y == 0 {
        rotate(-55deg, reflow: false, align(right, cl))
      } else {
        align(bottom + center, cl)
      }

      set table(
        fill: (_, y) => if y == 0 {none}
      )
      figure(
        table(
          columns: (2.1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
          inset: (x, y) => if y == 0 {
            (x: 0em, y: 1.1em)
          } else {
            (x: 1.1em, y: 0.7em)
          },
          fill: (x, y) => if calc.rem(y, 2) == 1 {
            luma(235)
          },
          stroke: (x, y) => if y >= 1 {
            1pt + black
          } else {
            none
          },
          table.header(
            [],
            [*Responsabile*],
            [*Amministratore*],
            [*Analista*],
            [*Progettista*],
            [*Programmatore*],
            [*Verificatore*],
          ),
          ..dati
        ),
        caption: [#didascalia]
      )
    }
