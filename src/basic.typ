// DEFINIZIONI
#let p = (
  nicolo: "Nicolò Bolzon",
  sebastiano: "Sebastiano Marana",
  nicholas: "Nicholas Moretto",
  mattia: "Mattia Dalla Pozza",
  matteo: "Matteo Pretto",
  stefano: "Stefano Speranza",
  alex: "Alex Shu",
  ramona: "Ramona Zangla",
  tullio: "Prof. Tullio Vardanega",
  cardin: "Prof. Riccardo Cardin",
)

// FUNZIONI
/* Funzione che crea nuova voce in prima pagina, supporta stringhe o array di stringhe */
#let voce(string1, string2) = {
  align(left)[
    #h(57pt) *#string1*
  ]
  if type(string2) == array {
    for (elementi) in string2 [
      #align(left)[#v(-10pt) #h(65pt) #elementi]
    ]
  }
  else {
    align(left)[#v(-10pt) #h(65pt) #string2]
  }
  v(-10pt)
  line(
  start: (0cm, 0cm),
  end: (12cm, 0cm),
  stroke: 1pt + black
  )
  v(-7pt)  
}

// CONFIGURAZIONI
#let conf(
  title: [],
  contenuto: (),
  doc
) = {
  // IMPOSTAZIONI TESTO
  set text(
    lang: "it",
    font: "New Computer Modern",
    size: 11pt
  )
  
  // HEADER
  set page(header: context {
    if counter(page).get().first() > 1 [
      _Code Alchemists_
      #h(1fr)
      #title
      #rect(width: 100%, height: 1pt, fill: black)
    ]
  })
  
  // FOOTER
  set page(footer: context {
    if counter(page).get().first() > 1 [
      #rect(width: 100%, height: 1pt, fill: black)
      #align(center)[
        Pagina
        #counter(page).display("1")
        di
        #counter(page).final().first()
      ]
    ]
  })
  
  // IMPOSTAZIONI HEADING
  show heading.where(level: 1): set text(size: 14pt)
  show heading.where(level: 2): set text(size: 13pt)
  
  // IMPOSTAZIONI PARAGRAFI
  set par(
    justify: true,
  )

  // PRIMA PAGINA
  page(background: image("../assets/logoUnipdSfondo.png"))[
    #align(center)[ // Imposta tutto il testo centrato di default
      #image("../assets/Logo-nome-motto.png", width: 8cm)
  
      //TITOLO
      #text(size: 22pt)[
         *#title*
      ]
      #set text(size: 15pt)

      #for c in contenuto {
        show: c
      }
    ]
  ]

  pagebreak()
  set align(left)
  doc
}


#let registro(
  voci: (),
  doc
) = {
  text(size:16pt)[
  *Registro delle Modifiche*
  ]
  set align(center)
  
  set table(
    fill:(_,y)=>if y==0 {gray}
  )

  table(
    columns: (auto,auto,auto,auto,auto),
    inset: 10pt,
    align: center,
    table.header(
      [*Vers.*], [*Data*], [*Autore*],[*Verificatore*],[*Descrizione*]
    ),

    ..voci   

  )
  
  set align(left)
  
  pagebreak()
  doc
}

#let indice(doc) = {
  outline()
  pagebreak()
  doc
}

#let indice_tabelle(doc) = {
  outline(
    title: [*Indice Tabelle*],
    target: figure.where(kind: table)
  )
  pagebreak()
  doc
}

#let indice_grafici(doc) = {
  outline(
    title: [*Indice Grafici*],
    target: figure.where(kind: image)
  )
  pagebreak()
  doc
}

#let firma(
  destinatario: [],
  doc
) = {
  doc
  set align(right)
  v(20pt)
  text(size: 12pt, style: "italic")[Per #destinatario,]
  
  v(10pt)
  box(stroke: black, width: 15em, height: 5em)[]
}

#let decision_table(
  voci: (),
  doc
) = {
  set align(center)
  
  set table(
    fill:(_,y)=>if y==0 {gray}
  )

  v(4pt)
  table(
    columns: (1fr,3fr),
    inset: 10pt,
    align: center,
    table.header([*ID*],[*Descrizione*]),
    ..voci   
  )
  
  set align(left)
  doc
}

#let qualifica_table(

  voci: (),
  caption: (),
  doc
) = {
  set align(center)

  set box(
  width: 90%,
  )

  set table(
    align: (center, left, center, center),
    fill:(_,y)=>if y==0 {silver},
    inset: (_, y) => if y == 0 { 7pt } else { 10pt }
  )

  set text(
    size: 11pt,
    hyphenate: false
  )

  set table.cell(
    align: horizon
  )

  v(4pt)
  box(
    figure(
      table(
        columns: (1fr, 2fr, 1fr, 1fr),
        table.header(
          [*Codice*], [*Nome*], [*Valore Ammissibile*], [*Valore Ottimale*]
        ),
        ..voci,
      ),
      caption: caption
    )
  )
  
  set align(left)
  doc
}

#let test_table(
  voci: (),
  caption: (),
  doc
) = {
  set align(center)

  set table(
    align: (center, center, center, center),
    fill:(_,y)=>if y==0 {silver},
    inset: (_, y) => if y == 0 { 7pt } else { 10pt }
  )

  set text(
    size: 11pt,
    hyphenate: true,
  )

  set table.cell(
    align: horizon
  )

  v(4pt)
    figure(
      block(
        table(
          columns: (1fr, 2fr, 1fr, 1fr),
          table.header(
            [*Codice*], [*Descrizione*], [*Codice \ Requisito*], [*Stato*]
          ),
          ..voci,
      )),
      caption: caption
    )
  set align(left)
  doc
}

#let test_table_accettazione(
  voci: (),
  caption: (),
  doc
) = {
  set align(center)

  set table(
    align: (center, center, center, center),
    fill:(_,y)=>if y==0 {silver},
    inset: (_, y) => if y == 0 { 7pt } else { 10pt }
  )

  set text(
    size: 11pt,
    hyphenate: true,
  )

  set table.cell(
    align: horizon
  )

  v(4pt)
    figure(
      block(
        table(
          columns: (1fr, 3fr, 1fr),
          table.header(
            [*Codice*], [*Descrizione*], [*Stato*]
          ),
          ..voci,
      )),
      caption: caption
    )
  set align(left)
  doc
}


#let unit_table(
  voci: (),
  caption: (),
  doc
) = {
  set align(center)
  
  show figure: set block(breakable: true)
  set table.cell(breakable: true)
  set table(
    align: (center, center, center, center),
    fill:(_,y)=>if y==0 {silver},
    inset: (_, y) => if y == 0 { 7pt } else { 10pt }
  )

  set text(
    size: 11pt,
    hyphenate: true,
  )

  set table.cell(
    align: horizon
  )

  v(4pt)
    figure(
      block(
        table(
          columns: (1fr, 2fr, 2fr, 0.5fr),
          table.header(
            [*Codice*], [*Descrizione*], [*Valore atteso*], [*Stato*]
          ),
          ..voci,
      ),
      breakable: true,
      ),
      caption: caption,
    )
  set align(left)
  doc
}

#let automiglioramento_table(
  header: (),
  voci: (),
  caption: (),
  doc
) = {
  set align(center)

  set box(
  width: 95%,
  )

  set table(
    align: (center, center, center, center),
    fill:(_,y)=>if y==0 {silver},
    inset: (_, y) => if y == 0 { 7pt } else { 10pt },
    columns:if header.len() == 4 {(auto,auto,auto,auto)} 
    else if header.len() == 3 {(auto,auto,auto)}
    else if header.len() == 2 {(auto,auto)}
  )

  set text(
    size: 11pt,
    hyphenate: false
  )

  set table.cell(
    align: horizon
  )

  v(4pt)
  box(
    figure(
      table(
        table.header(
          ..header
        ),
        ..voci,
      ),
      caption: caption
    )
  )
  
  set align(left)
  doc
}