#import "@preview/letter-pro:3.0.0": letter-simple

#set text(
  lang: "it",
  font: "New Computer Modern",
  size: 11pt,
)

// FOOTER
#set page(footer: context {
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


#show: letter-simple.with(
  sender: (
    name: "Team Code Alchemist",
    address: "",
    extra: [
      *Sito*: #link("https://teamcodealchemists.github.io")[teamcodealchemists.github.io]\
      *Email*: #link("mailto:team.codealchemists@gmail.com")[team.codealchemists\@gmail.com]\
    ],
  ),

recipient: [
    Alla cortese attenzione di,\
    
    Prof. Tullio Vardanega\
    Prof. Riccardo Cardin\

    Università degli Studi di Padova,\
    Dipartimento di Matematica c/o Torre Archimede\
    Via Trieste, 63\
    35121, Padova\
  ],
    
  date: "Martedì 18 marzo 2025",
  subject: "Lettera di presentazione del Team Code Alchemists per Capitolato C6"
)

Distinti Prof. Vardanega e Prof. Cardin,
#v(0.5cm)

con la presente, il team _CodeAlchemists_, desidera informare formalmente della propria candidatura per lo sviluppo del progetto dal titolo:\

#v(0.2cm)
#align(center)[
  *Sistema di gestione di un magazzino distribuito*
]
#v(0.2cm)
  
come proposto dall’azienda *M31*, relativo al capitolato di progetto *C6*.
#v(0.5cm)

Di seguito, vengono sintetizzati i principali motivi che hanno portato il team a scegliere questo capitolato:

+ Concept e *logiche applicative interessanti* da affrontare sebbene il progetto sia abbastanza complesso

+ *IA come supporto alla ottimizzazione*, e non come aspetto centrale del progetto

+ Permette in particolare di *spaziare su piu’ aspetti* della gestione di una serie di magazzini decentralizzati



La documentazione completa è disponibile al seguente indirizzo:\
#v(0.2cm)
#align(center)[
  #link("https://teamcodealchemists.github.io")[teamcodealchemists.github.io]
]
#v(0.2cm)

Nella relativa repository sono inclusi i seguenti file:\

  - *Verbali delle riunioni interne*

  - *Verbali delle riunioni esterne*

  - *Documenti di valutazione:* \

    -- valutazione capitolati 1.0.pdf -> Analisi e valutazione dei capitolati \
    -- analisi costi assunzione impegni v1.0.pdf -> Piano di costi e impegni \


#v(1cm)  
  Come indicato nel documento di dichiarazione degli impegni, il team ha stimato un costo complessivo per la realizzazione del progetto pari a *14.430€*, con una scadenza finale fissata per il *  /08/2025*.
#v(1cm)
  Cordiali Saluti, \
  il team _Code Alchemists_ 

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
