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

  title: text(font: "New Computer Modern", size: 30pt)[Presentazione RTB \ Code Alchemists],
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

Con la presente lettera, il Team _Code Alchemists_ desidera candidarsi formalmente per la revisione RTB (Requirements and Technology Basaline) del progetto:\

#v(0.2cm)
#align(center, text(12pt)[
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Sistema di Gestione di un Magazzino Distribuito*]])
#v(0.2cm)
  relativo al capitolato di progetto numero *C6* e proposto dall’azienda *M31*.
#v(0.5cm)

 

La documentazione completa è disponibile al seguente indirizzo:\
#align(center, text(12pt)[
  #link("https://teamcodealchemists.github.io")[teamcodealchemists.github.io]
])
#v(0.2cm)

All'interno è possibile trovare, nella sezione RTB, i documenti sviluppati fino ad ora, fra i quali:\

  - documenti interni:\
   - *Norme di progetto 1.0*
   - *Glossario 1.0*\
   
  - documenti esterni:\
   - *Analisi dei Requisiti 1.0*
   - *Piano di Progetto 1.0*
   - *Piano di Qualifica 1.0*\
   
  - verbali interni \
  - verbali esterni\
  Di seguito viene inoltre fornito il link al repository GitHub del team contenente il *Proof of Concept* del progetto:\
  #align(center, text(12pt)[
  #link("https://github.com/teamcodealchemists/PoC")
])
#v(0.2cm)
  
   

#colbreak()
#v(0.5cm)
  Il costo del progetto, come già stimato prima della candidatura, resta invariato ed è pari a *14.430€*.\
  
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
In attesa di un gentile riscontro, si porgono distinti saluti, \
il Team _Code Alchemists_
]


