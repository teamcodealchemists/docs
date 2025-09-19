
#import "@preview/fireside:1.0.0": *
#metadata[Lettera di presentazione] <titolo>

#set text(
  lang: "it",
  font: "New Computer Modern",
  size: 11pt,
)

#set page(
  numbering: "1",
  footer: [
    #set align(right)
    #context [
      Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
    ]
  ],
)

#show: fireside.with(
  background: rgb("fcfaf5"),

  title: text(font: "New Computer Modern", size: 30pt)[Presentazione PB \ Code Alchemists],
  from-details: text(font: "New Computer Modern", size: 11pt)[
    Gruppo 21 \
    Team _Code Alchemists_ \
    #link("mailto:team.codealchemists@gmail.com")[team.codealchemists\@gmail.com] \ 
  ],
  to-details: text(font: "New Computer Modern", size: 11pt)[
    Alla cortese attenzione di:\
    
    Prof. Tullio Vardanega\
    Prof. Riccardo Cardin\

    #link("https://www.unipd.it/")[Università degli Studi di Padova],\
    Dipartimento di Matematica c/o Torre Archimede\
    Via Trieste, 63 - 35121, Padova\
  ],
)

#text(font: "New Computer Modern", size: 11pt)[

#show link: underline
Gentili Proff. Vardanega e Cardin,
#v(0.5cm)

Con la presente lettera, il Team _Code Alchemists_ desidera candidarsi formalmente alla *revisione PB (Product Baseline)* del progetto:\

#v(0.2cm)
#align(center, text(12pt)[
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Sistema di Gestione di un Magazzino Distribuito*]])
#v(0.2cm)
  relativo al capitolato di progetto numero *C6* e proposto dall’azienda *M31*.
#v(0.5cm)

In questo periodo è stato sviluppato il _Minimum Viable Product_, accettato formalmente dall'azienda in data *15/09/2025*, come indicato anche nel *Verbale Esterno del 15 settembre 2025* firmato da un rappresentante dell'azienda.

La documentazione completa è disponibile nell'apposita sezione PB, al seguente indirizzo:\
#align(center, text(12pt)[
  #link("https://teamcodealchemists.github.io")[teamcodealchemists.github.io]
])
#v(0.2cm)

All'interno è possibile trovare i seguenti documenti:\

  - documenti interni:\
   - *Norme di progetto 2.0.0*
   - *Glossario 1.0.0*\
   
  - documenti esterni:\
   - *Analisi dei Requisiti 2.0.0*
   - *Piano di Progetto 2.0.0*
   - *Piano di Qualifica 2.0.0*\
   - *Manuale Utente 1.0.0*\
   - *Specifica Tecnica 1.0.0*\
   - *Test Book 1.0.0*\
   
  - verbali interni \
  - verbali esterni \
  Di seguito viene inoltre fornito il link al repository GitHub del team contenente il *Minimum Viable Product* del progetto:\
  #align(center, text(12pt)[
  #link("https://github.com/teamcodealchemists/MVP")
])
#v(0.2cm)
  
#v(0.5cm)
Il costo totale di progetto risulta essere di *13.550€* a fronte dei *14.430€* preventivati in candidatura.\
  
  Di seguito vengono riportati i componenti del team.
  #v(2em)
#align(center)[
  #table(
      columns: (auto, auto,auto,auto),
      inset: 10pt,
      table.header(
        [],[*Cognome*], [*Nome*], [*Matricola*],
      ),
      [1],[Bolzon],[Nicolò],[2075521],
      [2],[Dalla Pozza],[Mattia],[2042337],
      [3],[Marana],[Sebastiano],[2045041],
      [4],[Moretto],[Nicholas],[1226318],
      [5],[Pretto],[Matteo],[2076419],
      [6],[Shu],[Alex],[2082859],
      [7],[Speranza],[Stefano],[2075518],
      [8],[Zangla],[Ramona],[2075546]
    )
  ]
]
\
#v(0.5cm)
 #text(font: "New Computer Modern", size: 11pt)[
In attesa di un gentile riscontro si porgono distinti saluti, \
il Team _Code Alchemists_
]
