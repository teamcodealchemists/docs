#import "/template/import/basic.typ": *

// VARIABILI
#let titolo = "Dichiarazione impegni"
#let status = "NON Approvato"
#let versione = "0.1.0"
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [0.1.0],
    [12/03/2025],
    [N. Bolzon],
    [-],
    [Prima stesura del documento],
    
    [0.0.1],
    [11/03/2025],
    [N. Bolzon],
    [-],
    [Creazione template e struttura del documento],

)
#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Distribuzione", distribuzione)
)


// CONFIGURAZIONE PAGINE
#show: conf.with(
  title: [#titolo],
  contenuto: (contenuto)
)
#show: registro.with(
  voci: voci_registro
)
#show: indice


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali
  Il presente documento è stato redatto, in continuità a quanto indicato nella lettera di candidatura, al fine di motivare la scelta del team _Code Alchemists_ di candidarsi per il capitolato: *C[nr]: [Titolo capitolato]*
  
  = 2. Capitolati
  Per ciascun capitolato, dopo un riepilogo generale, saranno riportati sia gli aspetti *positivi* sia quelli *negativi* individuati dai membri del team _Code Alchemists_ durante la fase di lettura personale e discussione in gruppo degli stessi.

  Di seguito, un riassunto di quanto scelto dal team _Code Alchemists_:

    #set table(
    fill:(_,y)=>if y==0 {gray}
    )
  
    #table(
    columns: (auto,auto,auto,auto,auto),
    inset: 10pt,
    align: center,
    table.header(
      [*Nr.*], [*Titolo*], [*Azienda \ Proponente*], [*Conclusione \ Discussione*], [*Ordine \ Pref.*]
    ),
    
    [*C1*],
    [Artificial QI],
    [_Zucchetti_],
    [#text(red,"NON CANDIDATI")],
    [-],

    [*C3*],
    [Automatizzare le routine digitali tramite l’intelligenza generativa],
    [_Var Group_],
    [#text(orange,"IN DISCUSSIONE")],
    [3],

    [*C4*],
    [NearYou - Smart custom advertising platform],
    [_Sync Lab_],
    [#text(orange,"IN DISCUSSIONE")],
    [2],

    [*C6*],
    [Sistema di gestione di un magazzino distribuito],
    [_M31_],
    [#text(orange,"IN DISCUSSIONE")],
    [1]
  )
  
  
  #pagebreak()
  == 2.1 Capitolato C1: Artificial QI di _Zucchetti_
  === 2.1.1 Informazioni generali
  === 2.1.2 Aspetti positivi
  Il capitolato proposto è in linea con il contesto di sviluppo tecnologico attuale circa l'utilizzo dell'Intelligenza Artificiale.\
  Anche l'utilizzo degli LLM _(Large Language Model)_ è un aspetto da considerare abbastanza positivitamente poichè tutt'ora in sviluppo visto l'avanzare delle tecnologie e dell'ingegneria del software ad essi collegata.
  
  === 2.1.3 Aspetti Negativi
  Il gruppo ha notato una poca trasparenza di quale sarà il lavoro da svolgere se un gruppo prenderà in considerazione di sviluppare questo capitolato.\
  Viene fornita un'idea di base, nulla di ben dettagliato.
  Altro aspetto valutato negativamente, a confronto con gli altri capitolati, è che quest'ultimo non presenta nessun tipo di indicazione circa la tipologia di tecnologie raccomandate o consigliate per lo sviluppo del progetto.
  La presentazione in aula del capitolato è stata valutata un po' negativamente, questo perchè (così è apparso) che l'azienda preferisse parlare del contesto aziendale, obiettivi aziendali, fatturato, politiche aziendali, ecc… piuttosto di presentare il capitolato più dettagliatamente.

  Sebbene gli _LLM_ siano un aspetto da valutare positivamente, sono state avanzate anche alcune perplessità circa il il futuro di quanto sviluppato in quanto progetti atti alla valutazione di LLM sono tutt’ora in sviluppo.

  === 2.1.4 Conclusione
  Dopo un'attenta valutazione, il team _Code Alchemists_ ha deciso di *NON candidarsi* per l'aggiudicazione di questo capitolato aggiungendo lo scarso interesse del gruppo nello sviluppare un progetto totalmente incentrato sugli LLM _(Large Language Model)_.
  
  #pagebreak()
  == 2.2 Capitolato C3: Automatizzare le routine digitali tramite l’intelligenza generativa di _Var Group_
  === 2.2.1 Informazioni generali
  
  === 2.2.2 Aspetti positivi
  Uno tra gli aspetti positivi del capitolato, valutato dal nostro Team, è l'utilizzo di linguaggi di programmazione, servizi e strumenti recenti quali, ad esempio Python, C\#, MongoDB, React, Swift, Amazon Web Services (AWS)...\
  
  Inoltre, il 

  === 2.2.3 Aspetti Negativi
  Il progetto prevede l'utilizzo di molti servizi esterni. Il team _Code Alchemists_ si è interrogato sul possibile futuro dell'applicazione sviluppata qual'ora le API dei servizi esterni cambiassero, non garantendo così la mantenibilità del codice.
  
  === 2.2.4 Conclusione
  Dopo un'attenta valutazione, il team _Code Alchemists_ ha deciso di ... per l'aggiudicazione di questo capitolato.
  
  #pagebreak()
  == 2.3 Capitolato C4: NearYou - Smart custom advertising platform di _Sync Lab_
  === 2.3.1 Informazioni generali
  === 2.3.2 Aspetti positivi
  === 2.3.3 Aspetti Negativi
  === 2.3.4 Conclusione
  #pagebreak()
  == 2.4 Capitolato C6: Sistema di gestione di un magazzino distribuito di _M31_
  === 2.4.1 Informazioni generali
  === 2.4.2 Aspetti positivi
  === 2.4.3 Aspetti Negativi
  === 2.4.4 Conclusione
