#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "23/05/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.stefano,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0], [28/05/2025], [-], [R. Zangla], [Approvazione del documento],
    [0.1.0], [24/05/2025], [M. Pretto],[-], [Prima stesura del documento]

)
#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Presenze", presenze),
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
    In data *23 maggio 2025*, dalle ore *14:30* alle ore *15:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta, alla fine del quarto sprint#super[G], per fare il punto della situazione, per discutere le attività da intraprendere e per definire i ruoli e le responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
  + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 4
  + Analisi di criticità emerse
  + Definizione del prossimo sprint#super[G] e delle attività da intraprendere
  + Definizione dei ruoli e delle responsabilità di ciascun membro del team
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.matteo* e verificato da *#p.ramona*. \

  == 2.1 Lavori svolti durante lo sprint#super[G] RTB#super[G] 4
  Nell'ambito del quarto sprint#super[G], il team ha lavorato principalmente su due campi principali: lo studio dell'architettura#super[G] e sulla stesura dei casi d'uso. Sono state inoltre studiate le tecnologie che verranno poi utilizzate durante lo sviluppo del sistema. \

  === 2.1.1 Lavori in svolgimento dal responsabile#super[G]
  Il responsabile#super[G] si è occupato di coordinare le attività del team e di monitorare l'andamento dei lavori. Ha inoltre partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche: con i progettisti#super[G] ha continuato l'attività di definizione dell'architettura#super[G] per il PoC#super[G]. \
  Si è inoltre occupato della comunicazione esterna e interna. \

  === 2.1.2 Lavori svolti dall'amministratore#super[G]
  L'amministratore#super[G] ha il compito di gestire le varie attività del team e di coordinare le attività di sviluppo. \
  Ha studiato autonomamente i vari ambienti di sviluppo (ad esempio NATS, Docker, ...) cercando di capire il suo funzionamento per trasmettere quando appreso ai membri del Team facilitando poi lo sviluppo del PoC#super[G]. Ha messo a disposizione del Team alcuni documenti in cui vengono spiegate le tecnologie e che forniranno aiuto negli sprint#super[G] successivi.  \

  === 2.1.3 Lavori svolti dagli analisti#super[G]
  Gli analisti#super[G], durante il quarto sprint#super[G] hanno continuato *l'analisi dei casi d'uso*. Tale attività si è resa più dispendiosa del previsto. Si è cercato di adottare delle migliorie in due diversi modalità: migliorando la leggibilità della tabella e rendendo i requisiti#super[G] meno prolissi cercando, inoltre, di evitare ridondanza#super[G]. \
  Quest'attività è stata quasi completata, rendendo quindi ora necessarie solo minime modifiche. \

  === 2.1.4 Lavori svolti dai progettisti#super[G]
  I progettisti#super[G] hanno lavorato principalmente sulla *progettazione architetturale del PoC*#super[G].\
  Il loro principale lavoro è stato quello di effettuare le ultime modifiche all'architettura#super[G] ad alto livello e di finire la stesura del *Processo di Progettazione*. \

  Come per la stesura dei casi d'uso, anche questa attività è prossima alla conclusione. \

  === 2.1.5 Lavori svolti dai verificatori#super[G]
  Il verificatore#super[G] ha il compito di verificare la correttezza e la completezza dei documenti redatti dal team. Durante il quarto sprint#super[G], si è occupato di verificare i vari documenti redatti dal team;
  ha, inoltre, continuato a redarre il *Piano di Qualifica*#super[G], documento volto a definire le modalità di qualifica e verifica#super[G] del prodotto#super[G] software. \

  == 2.2 Criticità emerse
  Non vi sono state criticità rilevanti emerse durante la rionine. Sono stati riferiti dai progettisti#super[G] alcuni problemi minori incontrati durante il loro lavoro, i quali sono sempre stati risolti tempestivamente.


  == 2.3 Definizione del prossimo sprint#super[G]
  Dopo aver ritenuto concluso il quarto sprint#super[G], il team ha deciso di iniziare a definire ruoli, tempistiche e obiettivi per il quinto sprint#super[G].\
  Il quinto sprint#super[G] avrà una durata di due settimane: inizierà il *23 maggio* e terminerà il *06 giugno*.\
  Si farà riferimento a questo sprint#super[G] come _Sprint#super[G] RTB#super[G] 5_.\
  Durante il quinto sprint#super[G], il team si concentrerà principalmente *sullo sviluppo del PoC#super[G]*. Proprio per questo, a partire da questo sprint#super[G] la figura dei programmatori#super[G] comicia ad essere centrale. \ Inoltre si lavorerà sulla *configurazione delle tecnologie*.



  === 2.3.1 Definizione dei ruoli e delle responsabilità
  Durante la riunione, il team ha discusso e definito i ruoli e le responsabilità di ciascun membro del team.\
  Come previsto dalle Norme di Progetto, il team ha ruotato i ruoli e le responsabilità in questo modo:
  - *Responsabile#super[G]*: #p.nicolo
  - *Amministratore#super[G]*: #p.stefano
  - *Analista#super[G]*: #p.sebastiano
  - *Progettista#super[G]*: #p.nicholas
  - *Programmatori#super[G]*: #p.matteo, #p.alex, #p.mattia
  - *Verificatore#super[G]*: #p.ramona


  === 2.3.2 Definizione delle attività da intraprendere
  Dopo la riunione, il responsabile#super[G] ha redatto un documento interno di indicazione delle attività di progetto, che è stato condiviso con i membri del team.\ 
  Il seguente documento è consultabile #link("https://docs.google.com/document/d/1l_KvZZZbsZZElnh5gWqmTwMPI8bL38Hj61ez_Vqe4EE/edit?tab=t.0#heading=h.10d9twowam3d")[#underline[qui]].

  
  #pagebreak()
 = 3. Esiti della riunione
  La riunione si conclude con l'assegnazione dei compiti e la definizione delle decisioni e azioni intraprese, ponendo particolare attenzione al completamento delle ultimissime attività dell'analisi dei casi d'uso e della progettazione architetturale. Viene posta quindi attenzione alle attività che dovranno svolgere i programmatori#super[G].\

  Nel periodo successivo, il team continuerà con le attività previste indicate al punto 2.3.2. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.


  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D27], [Decisione di terminare l'architettura#super[G] e iniziare la programmazione del sistema],
    [D28], [Assegnazione dei ruoli e delle responsabilità ai membri del team],
    [D29], [Decisione delle attività da intraprendere per il prossimo sprint#super[G]],
    [DOC22], [Stesura del Verbale Interno del 23-05-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
