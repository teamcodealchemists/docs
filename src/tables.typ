#let tabella_preventivo_consuntivo(
  dati: array,
  didascalia: text
) = {
      show table.cell: cl => if cl.x == 0 and cl.y != 0 {
      align(left, cl)
      } else if cl.x == 0 {
        align(bottom + left, cl)
      } else if cl.y == 0 {
        rotate(-65deg, reflow: false, align(left, cl))
      } else {
        align(bottom + center, cl)
      }

      figure(
        table(
          columns: (2.1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
          inset: (x, y) => if y == 0 {
            (x: -2em, y: 3.5em)
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

#let tabella_aggiornamento_risorse(
  dati: array,
  didascalia: text
) = {
      figure(
        table(
          columns: (auto, auto, auto, auto, auto, auto),
          inset:0.6em,
          fill: (x, y) => if y==0 {
            luma(235)
          },
          stroke: (x, y) => if y >= 0 {
            1pt + black
          } else {
            none
          },
          table.header(
            [*Ruolo*],
            [*Costo/ora*],
            [*Ore*],
            [*Costo totale*],
            [*Ore rimanenti*],
            [*Budget rimanente*]
          ),
          ..dati
        ),
        caption: [#didascalia]
            
      )
    }
