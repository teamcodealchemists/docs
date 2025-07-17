#let tabella_preventivo_consuntivo(
  dati: array,
  didascalia: text
) = {
      show table.cell: cl => {
        if cl.x == 0 and cl.y != 0 {
          align(left, cl)
        } else if cl.x == 0 {
          align(bottom + left, cl)
        } else if cl.y == 0 {
          box(
            width: 3.5cm,
            height: 2.5cm,
            align(bottom + center, rotate(-45deg, reflow: true, cl.body))
          )
        } else {
          align(center, cl)
        }
      }

      figure(
        table(
          columns: (2.1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
          inset: 1.1em,
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
          columns: (3.2fr, 2fr, 2fr, 2fr, 2.5fr, 3.5fr),
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
            [*Costo \ totale*],
            [*Ore\ rimanenti*],
            [*Budget\  rimanente*]
          ),
          ..dati
        ),
        caption: [#didascalia]
            
      )
    }

#let tabella_indici_gravita(
  dati: array,
  didascalia: text
) = {
      figure(
        table(
          columns: (auto, auto, auto, auto),
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
            [*Indice*],
            [*Tipo*],
            [*Gravità*],
            [*Probabilità*],
          ),
          ..dati
        ),
        caption: [#didascalia]
            
      )
    }

#let tabella_rischi(
  dati: array,
  didascalia: text
) = {
  figure(
  table(

    columns: (auto, auto),
    align: left,
    fill: (x, y) => if (y == 0) {
      rgb("#ffffff")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#ffffff")
    } else {
      rgb("#ffffff")
    },
    table.header(
      text(12pt, fill: black)[],
      text(12pt, fill: black)[*Valore*],
    ),
    ..dati
  ),
  caption: [#didascalia]
)
}


#let tabella_riassuntiva_rischi(
  dati: array,
  didascalia: text
) = {
      figure(
        table(
          align:left,
          columns: (auto, auto, auto, auto),
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
            [*Codice*],
            [*Rischio*],
            [*Gravità*],
            [*Probabilità*],
          ),
          ..dati
        ),
        caption: [#didascalia]
            
      )
    }
