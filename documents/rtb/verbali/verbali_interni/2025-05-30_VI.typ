#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "30/05/2025"
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
  p.alex,
  p.stefano,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0], [01/06/2025], [-], [R. Zangla], [Approvazione del documento],
    [0.1.0], [31/05/2025], [N. Bolzon],[R. Zangla], [Prima stesura del documento]

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
    In data *30 maggio 2025*, dalle ore *14:30* alle ore *15:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta a metà del quinto sprint con l’obiettivo di fare il punto sulla situazione e valutare lo stato di avanzamento delle attività intraprese. \

== 1.1 Ordine del Giorno
  + Discussione sui lavori svolti durante la prima metà dello sprint#super[G] RTB#super[G] 5.
  + Analisi delle criticità emerse.
  + Valutazione dello stato di avanzamento del lavoro.
  + Pianificazione delle prossime attività da intraprendere.
    
  #pagebreak()
= 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e verificato da *#p.ramona*. La riunione è stata moderata dal responsabile, *#p.nicolo*.\

== 2.1 Lavori svolti durante la prima metà dello sprint RTB 5
Durante la prima metà dello Sprint RTB 5, il team ha portato avanti diverse attività, sia in merito all’aggiornamento di alcuni documenti, sia al miglioramento dell’organizzazione del repository. Parallelamente, ci si è concentrati anche sulla fase iniziale di sviluppo e configurazione del PoC.
Inoltre, nella giornata di *venerdì 30 maggio*, il team ha partecipato a un ricevimento con il prof. Cardin per ottenere chiarimenti e porre alcune domande relative alla stesura del documento di Analisi dei Requisiti, con particolare attenzione alla modellazione dei Casi d’Uso.

=== 2.1.1 Aggiornamento del glossario
Si è resa necessaria la definizione di alcuni nuovi termini, al fine di evitare ambiguità e garantire una maggiore chiarezza tanto nella documentazione quanto nelle attività di sviluppo.

=== 2.1.2 Miglioramento repository
È iniziato l’aggiornamento della documentazione con l’obiettivo di migliorare l’indice di Gulpease, al fine di aumentare la leggibilità complessiva del testo e renderlo più accessibile e comprensibile.

=== 2.1.3 Inizio configurazione e sviluppo del PoC
Durante la prima metà dello sprint, il team ha avviato le attività di configurazione e sviluppo del PoC. Tuttavia, sono emerse alcune difficoltà operative, le quali sono state descritte nei paragrafi successivi del presente documento.

== 2.2 Analisi delle criticità e valutazione avanzamento del lavoro
Durante la prima metà dello sprint, il team ha incontrato due principali difficoltà. La prima ha riguardato la configurazione iniziale del PoC: durante lo sviluppo dei microservizi, utilizzando Docker come strumento di containerizzazione, è emerso che l’impiego di immagini Docker complete per ciascun servizio comportava dimensioni considerevoli. Per approfondire la questione e ottenere indicazioni più precise, si è valutata la possibilità di inviare una mail all’azienda M31 per richiedere chiarimenti e suggerimenti.

La seconda criticità ha interessato il documento di Analisi dei Requisiti. In fase di stesura e durante una successiva revisione, sono emersi alcuni dubbi, che il team ha sottoposto al prof. Cardin durante un ricevimento. I suoi preziosi consigli hanno reso necessaria la revisione di alcune sezioni del documento, con conseguenti modifiche da apportare.

== 2.3 Pianificazione delle prossime attività
Al termine dell’incontro interno, il team ha definito e pianificato le attività da svolgere nel prossimo periodo, tra cui l’applicazione delle modifiche al documento di Analisi dei Requisiti secondo le indicazioni fornite dal prof. Cardin. Tra le revisioni previste, si evidenzia la necessità di aggiornare alcuni requisiti e relativi casi d’uso, comprensivi delle rispettive rappresentazioni UML.

Parallelamente, il team proseguirà con l’analisi architetturale, approfondendo gli scenari critici e sviluppando una progettazione più dettagliata dei servizi da implementare, tra cui: gestione inventario, database, ordini, riassortimento, stato e sincronizzazione con copie cloud.
Continuerà, inoltre, lo sviluppo del PoC _(Proof of Concept)_.
  
  #pagebreak()
= 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

// DA SISTEMARE
  #pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [A17], [Applicazione delle modifiche al documento di Analisi dei Requisiti, come indicato dal prof. Cardin],
    [A18], [Invio email ad _M31_ per ottenere consigli in merito alle difficoltà avute nella configurazione iniziale del PoC],
    [DOC24], [Stesura del Verbale Interno del 30-05-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
