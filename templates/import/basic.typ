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
  page(background: image("/assets/logoUnipdSfondo.png"))[
    #align(center)[ // Imposta tutto il testo centrato di default
      #image("/assets/Logo-nome-motto.png", width: 8cm)
  
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
    columns: (auto,auto),
    inset: 10pt,
    align: center,
    table.header(
      [*ID*], [*Descrizione*]
    ),

    ..voci   

  )
  
  set align(left)
  
  doc
}