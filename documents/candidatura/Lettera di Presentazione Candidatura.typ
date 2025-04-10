#import "@preview/fireside:1.0.0": *
#metadata[Lettera di candidatura] <titolo>

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

  title: text(font: "New Computer Modern", size: 30pt)[Candidatura \ Code Alchemists],
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

Con la presente lettera, il Team _Code Alchemists_ desidera candidarsi formalmente per lo sviluppo del progetto:\

#v(0.2cm)
#align(center, text(12pt)[
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Sistema di Gestione di un Magazzino Distribuito*]])
#v(0.2cm)
  relativo al capitolato di progetto numero *C6* e proposto dall’azienda *M31*.
#v(0.5cm)

  Di seguito si riportano sintenticamente le principali motivazioni che hanno condotto il Team alla scelta del presente capitolato:
  - Il Concept e le *logiche applicative* risultano particolarmente *interessanti* da approfondire, nonostante la complessità del progetto;
  - L'*Intelligenza Artificiale* è prevista come *supporto alla ottimizzazione* e non come aspetto centrale del progetto;
  - La proposta consente di *approfondire diversi aspetti* legati alla gestione di una rete di magazzini decentralizzati.

La documentazione completa è disponibile al seguente indirizzo:\
#align(center, text(12pt)[
  #link("https://teamcodealchemists.github.io")[teamcodealchemists.github.io]
])
#v(0.2cm)

Nella relativa repository sono inclusi i seguenti file:\
  - *Verbali delle riunioni interne*
  - *Verbali delle riunioni esterne*
  - *Documenti di valutazione:* \
    -- #link("https://teamcodealchemists.github.io/docs/candidatura/Valutazione%20dei%20Capitolati%201.0.0.pdf")[Analisi e valutazione dei capitolati]\
    -- #link("https://teamcodealchemists.github.io/docs/candidatura/Dichiarazione%20Impegni%201.0.0.pdf")[Dichiarazione Impegni (con analisi ruoli e costi)]

#colbreak()
#v(0.5cm)
  Come riportato nel documento di dichiarazione degli impegni, il Team ha stimato un costo complessivo per la realizzazione del progetto pari a *14.430€*, con una scadenza finale prevista per il *29/08/2025*.
#v(0.5cm)
  Cordiali Saluti, \
  il Team _Code Alchemists_ 

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
